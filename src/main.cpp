/*
 * <WebServer.h> can use WEBView function in APP inventor2 without the problem that the header file is too long and cannot display the image.
 * Mobile phone image display and HTTP command to control the car.
 * Note: ESP32CAM consumes power, if the voltage is lower than 4.7V, it will crash or restart.
 * This program is AP mode, that is, open the APP cell phone automatically connected to the ESP32CAM immediately can control, without connecting WIFI sharer
 */
#include <WebServer.h>
#include <WiFi.h>
#include <esp32cam.h>
//#include <esp_camera.h>

#include "NtutFunction.h"

//#include "soc/soc.h" //function: try to avoid reboot when power is unstable
//#include "soc/rtc_cntl_reg.h"

/* AP mode using WiFi.h library */
const char *APssid = "NTUTAIOT_AP";
const char *APpassword = "";

IPAddress APlocal_ip(192,168,100,1);// 建立 AP的 WIFI 服務器 IP
IPAddress APgateway(192,168,100,1);
IPAddress APsubnet(255,255,255,0);

//This library APPinventoe will not have the problem of too long header file when using WEBView
WebServer server(80); //Start server side (image also goes to port 80)

//define loRes:QVGA 320*240 pixs ,hiRes:SVGA 800*600pixs
static auto loRes = esp32cam::Resolution::find(320, 240); //QVGA
static auto hiRes = esp32cam::Resolution::find(800, 600); //SVGA
/* Pin GPIO definition L298N motor steering , ESP32CAM on-board white LED, servo motor */
const int RMotor1 = 14;
const int RMotor2 = 15;
const int LMotor1 = 13;
const int LMotor2 = 12;
const int ServoPin = 2;
const int FlashPin = 4;

int angle=4870; //servo 90 degrees ,value=4870
/*50 hz PWM, 16-bit resolution and range from 3250 to 6500 */
int cspeed = 255; //Motor speed=0~255
/* 2000 hz PWM, 8-bit resolution and range from 0 to 255 */
String variable; // Command to control the vehicle
int val = 0; // data to control the vehicle rotation action
int lival = 7; // test with the on-board LED in 7channel, at any time the channel value is convenient to change to do the test
/* On-board LED in 7 channel can operate, set other channels than 7 will interfere with other channels
 *For example, if the on-board LED is set to channel 9, the SG90 servo motor on channel 8 will not work */
void initGPIO()
{
/* Initialize each GPIO pin PWM setting
   * ESP32 series development board No analogWrite() instruction, use the following instruction instead
   * ledcSetup(Channel, Frequency, Resolution )
   * PWM command (Channel, Frequency, Resolution {bit bits})
   * For example, 8 bits can be used in the value range 0 to 255
   */

/* L298N Motor Driver Board Channel Frequency Resolution Setting
 * 2000 hz PWM, 8-bit resolution and range from 0 to 255
 *ledcSetup(channel, frequency, bit)*/
  ledcSetup(3  , 2000,  8);
  ledcSetup(4  , 2000,  8);
  ledcSetup(5  , 2000,  8);
  ledcSetup(6  , 2000,  8);

/* Attaching the channel to the GPIO to be controlled
   * ledcAttachPin(GPIO, Channel) Specify the channel to which the GPIO is attached
   * For example, PWM command ledcWrite(channel, value).
   * Please note that in the Channel channel, all the GPIOs already attached will act together
   */
  ledcAttachPin(RMotor1, 3);
  ledcAttachPin(RMotor2, 4);
  ledcAttachPin(LMotor1, 5);
  ledcAttachPin(LMotor2, 6);

/*Init SG90 Servo Motor*/
/*50 hz PWM, 16-bit resolution and range from 3250 to 6500 */
  ledcSetup(8, 50, 16);
  ledcAttachPin(ServoPin, 8);
  ledcWrite(8, angle);

/* Init board with white light */
/* 5000 hz PWM, 8-bit resolution and range from 0 to 255 */
  ledcSetup(lival, 5000, 8);
  ledcAttachPin(FlashPin, lival);
}  // initGPIO()  end

/* Webserver.h This library of HTTP GET receive processing instructions prompt:
  * float floatValue = server.arg("float").toFloat(); // Get the HTTP GET TAG sent by the client and convert the float data
  * int intValue = server.arg("int").toInt(); // get the client to send HTTP GET TAG and convert floating point data
  * int buttonValue = server.arg("button").toInt(); // integer
  * String arg = server.arg("sw"); // string
  * Receive multiple parameters
  * String arg0 = server.pathArg(0); // Get the first HTTP GET quote
  * String arg1 = server.pathArg(1); //Get the second HTTP GET quote
 */

/* Lights on off */
void light(){
  //  server.sendHeader("Connection", "close");
  //server.send(200,"text/plain","ok");

  String state_ = server.arg("sw");      // Get the TAG and parameter data of the HTTP GET sent by the client Convert to integer
  val = server.arg("value").toInt();
  if(state_=="on"){
    ledcWrite(lival, val);
    server.send(200,"text/plain","Light On");
  }
  else if(state_=="off")
  {ledcWrite(lival, 0);
    server.send(200,"text/plain","Light OFF");
  }
  Serial.printf("狀態：%s  val=%d ",state_.c_str() ,val);
  Serial.println(" ");
}//light end

/* Servo motor rotation control */
void servo_turn(){

  String state = server.arg("turn");
  val = server.arg("value").toInt();      // Get the TAG and parameter data of the HTTP GET sent by the client Convert to integer
  // Controlling the servo motor angle with PWM //
  // ledcWrite(Channel, Dutycycle) //
  if      (val > 650) val = 650;
  else if (val < 225) val = 325;
  //for(int i=0 ,i> abs(val-angle))

  //ledcWrite(lival, 0); //Turn off the lights to avoid rebooting due to lack of power

  ledcWrite(8, 10 * val);  // Rotating servo motor
  server.send(200,"text/plain","servo Turn");
}//servo_turn end

/* Vehicle speed control */
void CarSpeed(){
  server.send(200,"text/plain","speed ok");
  // String state = server.arg("speed");
  val = server.arg("value").toInt();    // Get the TAG and parameter data of the HTTP GET sent by the client Convert to integer
  if      (val > 255) val = 255;
  else if (val <   0) val = 0;
  cspeed = val;
}//CarSpeed end

/* Remote Control Car */
void car(){
  server.send(200,"text/plain","control ok");
  //String state = server.arg("car_dir");
  val = server.arg("value").toInt();    // Get the TAG and parameter data of the HTTP GET sent by the client Convert to integer
  if(val == 1) {
    Serial.println("Forward");
    // Controlling the motor with PWM //
    // ledcWrite(Channel, Dutycycle) //
    ledcWrite(3, 0);
    ledcWrite(4, cspeed);
    ledcWrite(5, cspeed);
    ledcWrite(6, 0);
  }
  else if (val == 2) {
    Serial.println("Turn Left");
    // Controlling the motor with PWM //
    // ledcWrite(Channel, Dutycycle) //
    ledcWrite(3, cspeed);
    ledcWrite(4, 0);
    ledcWrite(5, cspeed);
    ledcWrite(6, 0);
  }
  else if (val == 3) {
    Serial.println("Stop");
    //Controlling the motor with PWM //
    // ledcWrite(Channel, Dutycycle) //
    ledcWrite(3, 0);
    ledcWrite(4, 0);
    ledcWrite(5, 0);
    ledcWrite(6, 0);
  }
  else if (val == 4) {
    Serial.println("Turn Right");
    // Controlling the motor with PWM //
    // ledcWrite(Channel, Dutycycle) //
    ledcWrite(3, 0);
    ledcWrite(4, cspeed);
    ledcWrite(5, 0);
    ledcWrite(6, cspeed);

  }
  else if (val == 5) {
    Serial.println("Backward");
    // Controlling the motor with PWM //
    // ledcWrite(Channel, Dutycycle) //
    ledcWrite(3, cspeed);
    ledcWrite(4, 0);
    ledcWrite(5, 0);
    ledcWrite(6, cspeed);
  }
} //car end

/* WEB server connects to HTTP GET parameters, corresponding to each function image processing Function() */
void handleBmp()
{
  if (!esp32cam::Camera.changeResolution(loRes)) {
    Serial.println("SET-LO-RES FAIL");
  }

  auto frame = esp32cam::capture();
  if (frame == nullptr) {
    Serial.println("CAPTURE FAIL");
    server.send(503, "", "");
    return;
  }
  Serial.printf("CAPTURE OK %dx%d %db\n", frame->getWidth(), frame->getHeight(),
                static_cast<int>(frame->size()));

  if (!frame->toBmp()) {
    Serial.println("CONVERT FAIL");
    server.send(503, "", "");
    return;
  }
  Serial.printf("CONVERT OK %dx%d %db\n", frame->getWidth(), frame->getHeight(),
                static_cast<int>(frame->size()));

  server.setContentLength(frame->size());
  server.send(200, "image/bmp");
  WiFiClient client = server.client();
  frame->writeTo(client);
}

void serveJpg()
{
  auto frame = esp32cam::capture();
  if (frame == nullptr) {
    Serial.println("CAPTURE FAIL");
    server.send(503, "", "");
    return;
  }
  Serial.printf("CAPTURE OK %dx%d %db\n", frame->getWidth(), frame->getHeight(),
                static_cast<int>(frame->size()));

  server.setContentLength(frame->size());
  server.send(200, "image/jpeg");
  WiFiClient client = server.client();
  frame->writeTo(client);
}

/* Picture low pixel photo transmission http://IP//cam-lo.jpg */
void handleJpgLo()
{

  if (!esp32cam::Camera.changeResolution(loRes)) {
    Serial.println("SET-LO-RES FAIL");
  }
  serveJpg();
}

/* Picture high pixel photo transmission http://IP//cam-hi.jpg */
void handleJpgHi()
{
  if (!esp32cam::Camera.changeResolution(hiRes)) {
    Serial.println("SET-HI-RES FAIL");
  }
  serveJpg();
}

void handleJpg()
{
  server.sendHeader("Location", "/cam-hi.jpg");
  server.send(302, "", "");
}

/* SVGA 800*600pix image send stream http://IP/Hicam.mjpeg */
void handleHiMjpeg()
{
  if (!esp32cam::Camera.changeResolution(hiRes)) {
    Serial.println("SET-HI-RES FAIL");
  }

  Serial.println("STREAM BEGIN SVGA 800*600");
  WiFiClient client = server.client();
  auto startTime = millis();
  int res = esp32cam::Camera.streamMjpeg(client);
  if (res <= 0) {
    Serial.printf("STREAM ERROR %d\n", res);
    return;
  }
  auto duration = millis() - startTime;
  Serial.printf("STREAM END %dfrm %0.2ffps\n", res, 1000.0 * res / duration);

}

/* QVGA 320*240pix image transmission stream http://IP/cam.mjpeg */
void handleMjpeg()
{
  if (!esp32cam::Camera.changeResolution(loRes)) {
    Serial.println("SET-HI-RES FAIL");
  }

  Serial.println("STREAM BEGIN QVGA 320*240");
  WiFiClient client = server.client();
  auto startTime = millis();
  int res = esp32cam::Camera.streamMjpeg(client);
  if (res <= 0) {
    Serial.printf("STREAM ERROR %d\n", res);
    return;
  }
  auto duration = millis() - startTime;
  Serial.printf("STREAM END %dfrm %0.2ffps\n", res, 1000.0 * res / duration);
}


void setup()
{
  //  WRITE_PERI_REG(RTC_CNTL_BROWN_OUT_REG, 0);  //Disable restart power setting when voltage is unstable

  /* Initiation of motor, servo and on-board led */
  initGPIO();

  Serial.begin(115200);

  {
    using namespace esp32cam;
    esp32cam::Config cfg;
    cfg.setPins(esp32cam::pins::AiThinker);
    cfg.setResolution(hiRes);
    cfg.setBufferCount(2);
    cfg.setJpeg(80);

    bool ok = esp32cam::Camera.begin(cfg);
    Serial.println(ok ? "CAMERA OK" : "CAMERA FAIL");
  }

// Start the AP server and obtain the server IP
  WiFi.mode(WIFI_MODE_AP);
  WiFi.softAPConfig(APlocal_ip, APgateway, APsubnet);
  Serial.println("create a soft ap server");
  WiFi.softAP(APssid,APpassword);     // Start AP mode, APssid and APpassword must be defined before setup()
  Serial.print("Access Point: ");
  Serial.println(APssid);            // WiFi's ssid
  Serial.print("IP address: ");      // IP of the AP server
  Serial.println(WiFi.softAPIP());   // WiFi.softAPIP() AP to get the IP of the server

//AP server displays the HTTP parameters when it is turned on.
  Serial.println("  /cam.bmp");
  Serial.println("  /cam-lo.jpg");
  Serial.println("  /cam-hi.jpg");
  Serial.println("  /cam.mjpeg   , QVGA");
  Serial.println("  /Hicam.mjpeg  ,SVGA");

/* Start setting reads the client HTTP GET parameters and points to the corresponding function program */
  server.on("/cam.bmp", handleBmp);
  server.on("/cam-lo.jpg", handleJpgLo);
  server.on("/cam-hi.jpg", handleJpgHi);
  server.on("/cam.jpg", handleJpg);
  server.on("/cam.mjpeg", handleMjpeg);
  server.on("/Hicam.mjpeg", handleHiMjpeg);
  server.on("/light", light);
  server.on("/servo", servo_turn);
  server.on("/speed", CarSpeed);
  server.on("/car", car);

  server.begin(); // Start WEB server side

/* Flash led 2 times after successful connection */
  /* 5000 hz PWM, 8-bit resolution and range from 0 to 255 */
  for (int i = 0; i < 5; i++) {
    ledcWrite(lival, 50);
    delay(150);
    ledcWrite(lival, 0);
    delay(150);
  }

//  Ntutsetup();

}  // End of  setup



void loop()
{
  server.handleClient();  //WEB server starts processing HTTP GET commands from the client to display images and control the car.
//  NtutPhotoresistance();
}
