/************************************************************************************************************

FILE_NAME:  Electric_steering_19A-04

DESCRIPTION:
New steering code for the 2019A tractor. Implementing PI controller with momentary switch-based
steering.

PURPOSE:
The purpose of this code is to monitor the steering input (steering switch) and feedback signals and to
adjust the output to the linear actuator. The output is adjusted with the intention of reducing the speed
of the actuator to provide a 'soft start'. 

VERSION HISTORY:

VERSION          DESCRIPTION                                            AUTHOR             DATE CREATED
19A-01           Original file developed for PI compatibility.          Mitchell S.        7 May 2019
19A-02           Revised for diagnostics capability.                    Jason Cousins      15 May 2019
19A-03           Code reworked to implement momentary switch            Mitchell S.        18 May 2019
                 with 'Soft Start' capability.
19A-04           Added 'Soft Stop' capability.                          Jason Cousins      25 May 2019
22A-05           Update for the 2022 Tractor                            Kurt Yeager        29 May 2022                 
************************************************************************************************************/
const bool DIAGNOSTIC = 1;

//Define Pin Inputs
const int ACTUATOR_POT = A0; //Define Actuator Potentiometer Input

const int CONTROL_PWM = 9; //Define Motor Controller PWM Output
const int CONTROL_DIR = 8; //Define Motor Controller DIR Output
const int STEERING_SWITCH_RIGHT = 4; //Define Steering Switch Right Input
const int STEERING_SWITCH_LEFT = 3; //Define Steering Switch Left Input
const int LIMIT_SWITCH_RIGHT = 6; //Define Limit Switch Right Input
const int LIMIT_SWITCH_LEFT = 7; //Define Limit Switch Left Input

//Define pin input variables and array
bool STEERING_SWITCH_STATE_RIGHT = 0;
bool STEERING_SWITCH_STATE_LEFT = 0;
bool LIMIT_RIGHT = 0;
bool LIMIT_LEFT = 0;
int actuatorPotValue = 0;

//Define actuator limits of the physical system - NOTE: MUST BE CALIBRATED
int INPUT_LIMIT_RIGHT = 589; //580; //166;
int INPUT_LIMIT_LEFT = 300; //22; //70; //834; 

//Define other variables
unsigned long runTime = 0;
const unsigned int SAMPLE_RATE = 20; //Sample period in milliseconds.

int soft_start_percentage_increase = 20; //Rate at which speed increases per loop
int soft_start_percentage = 0;

int dir = 0;

void setup() {

//Initialize serial communication for testing and verification of program
Serial.begin(115200);
Serial.println();Serial.println();
Serial.println("Loaded Program: Electric_Steering_19A-04");
Serial.print("Diagnostic Mode?:  "); Serial.println(DIAGNOSTIC);
Serial.println();Serial.println();
//Initialize Pin Inputs and Output Modes
pinMode(CONTROL_PWM,OUTPUT);
pinMode(CONTROL_DIR,OUTPUT);
pinMode(STEERING_SWITCH_RIGHT,INPUT);
pinMode(STEERING_SWITCH_LEFT,INPUT);
pinMode(LIMIT_SWITCH_RIGHT,INPUT);
pinMode(LIMIT_SWITCH_LEFT,INPUT);

delay(2000);
}

void loop() {

//System Calculations
runTime = millis();

//Define local variables
int pwmOutput = 0;

//Read Switch Input States
STEERING_SWITCH_STATE_RIGHT = digitalRead(STEERING_SWITCH_RIGHT);
STEERING_SWITCH_STATE_LEFT = digitalRead(STEERING_SWITCH_LEFT);
LIMIT_RIGHT = digitalRead(LIMIT_SWITCH_RIGHT);
LIMIT_LEFT = digitalRead(LIMIT_SWITCH_LEFT);
actuatorPotValue = analogRead(ACTUATOR_POT);

//Define Direction - NOTE: MAY NEED TO BE REVERSED FOR CORRECT DIRECTION
if (STEERING_SWITCH_STATE_RIGHT == 1) {
  dir = 0;
}
if (STEERING_SWITCH_STATE_LEFT == 1) {
  dir = 1;
}

//Ramp up feature to implement 'soft start'
if (soft_start_percentage < 100 && (STEERING_SWITCH_STATE_RIGHT == 1 || STEERING_SWITCH_STATE_LEFT == 1)) {
  soft_start_percentage = soft_start_percentage + soft_start_percentage_increase;
}
if (soft_start_percentage > 100) {
  soft_start_percentage = 100;
}
if (STEERING_SWITCH_STATE_RIGHT == 0 && STEERING_SWITCH_STATE_LEFT == 0 && soft_start_percentage > 0) {
  soft_start_percentage = soft_start_percentage - soft_start_percentage_increase;
}
pwmOutput = map(soft_start_percentage,0,100,0,255);

//Limit based on position
if ((STEERING_SWITCH_STATE_RIGHT == 1) && (actuatorPotValue > INPUT_LIMIT_RIGHT)) {
  pwmOutput = 0;
  soft_start_percentage = 0;
}
if ((STEERING_SWITCH_STATE_LEFT == 1) && (actuatorPotValue < INPUT_LIMIT_LEFT)) {
  pwmOutput = 0;
  soft_start_percentage = 0;
}

//Limit based on limit switch
//if (LIMIT_RIGHT == 1 && STEERING_SWITCH_STATE_RIGHT == 1) {
//  pwmOutput = 0;
//}
//if (LIMIT_LEFT == 1 && STEERING_SWITCH_STATE_LEFT == 1) {
//  pwmOutput = 0;
//}

//Write PWM and Direction to Motor Controller
if (dir == 1) {
  digitalWrite(CONTROL_DIR, HIGH);
}
else {
  digitalWrite(CONTROL_DIR, LOW);
}

//if (STEERING_SWITCH_STATE_LEFT != 0 && STEERING_SWITCH_STATE_RIGHT != 0) {
//  analogWrite(CONTROL_PWM, pwmOutput);
//}
//else {
//  analogWrite(CONTROL_PWM, pwmOutput);
//}

analogWrite(CONTROL_PWM, pwmOutput);

if (DIAGNOSTIC == 1) {
  Serial.print("RUNTIME: "); Serial.print(runTime);
  Serial.print("\t L_SW: "); Serial.print(STEERING_SWITCH_STATE_LEFT);
  Serial.print("\t R_SW: "); Serial.print(STEERING_SWITCH_STATE_RIGHT);
  Serial.print("\t L_LIM: "); Serial.print(LIMIT_LEFT);
  Serial.print("\t R_LIM: "); Serial.print(LIMIT_RIGHT);
  Serial.print("\t ACT_READ: "); Serial.print(actuatorPotValue);
  Serial.print("\t PWM: "); Serial.print(pwmOutput);
  Serial.print("\t RAMP_PERC: "); Serial.print(soft_start_percentage);
  Serial.print("\t LEFTOVER_TIME: "); Serial.print(runTime + SAMPLE_RATE - millis());
  Serial.println();
} 
delay(runTime + SAMPLE_RATE - millis());
}
