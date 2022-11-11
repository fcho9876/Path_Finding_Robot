/* ========================================
 *
 * Copyright The University of Auckland, CS301 Group 15, 2022
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF The University of Auckland, CS301 Group 15.
 *
 * ========================================
*/
#include <stdio.h>
#include <project.h>
#include <string.h>

int speed=0;
int offset = 15;
int startDuty = 90;
int leftDuty = 97;
int rightDuty = 0;

int findMaximum(int array[10]){
    int maximum = 0;
        for(int i = 0; i < 10; i ++){
            if (array[i]> maximum){
             maximum = array[i];
            }  
        }
        return maximum;
}

int findMinimum(int array[10]){
    int minimum = 10000;
        for(int i = 0; i < 10; i ++){
            if (array[i] < minimum){
             minimum = array[i];
            }  
        }
        return minimum;
}

void usbPutString(char *s)
{
// !! Assumes that *s is a string with allocated space >=64 chars     
//  Since USB implementation retricts data packets to 64 chars, this function truncates the
//  length to 62 char (63rd char is a '!')
    
    while (USBUART_1_CDCIsReady() == 0);
    s[63]='\0';
    s[62]='!';
    USBUART_1_PutData((uint8*)s,strlen(s));
}

void DoLeftTurn(){
    PWM_leftmotor_Start();
    PWM_rightmotor_Start();
    
    //PWM_leftmotor_WriteCompare1(80);
    PWM_leftmotor_WriteCompare1(90);
    PWM_leftmotor_WriteCompare2(0);
    
    //PWM_rightmotor_WriteCompare1(60);
    PWM_rightmotor_WriteCompare1(90);      // prev value = 120
    PWM_rightmotor_WriteCompare2(0);
}

void DoLeftToStraight(){

    PWM_leftmotor_Start();
    PWM_rightmotor_Start();
    
    //PWM_leftmotor_WriteCompare1(80);
    PWM_leftmotor_WriteCompare1(90);
    PWM_leftmotor_WriteCompare2(0);
    
    //PWM_rightmotor_WriteCompare1(60);
    PWM_rightmotor_WriteCompare1(100);      // prev value = 120
    PWM_rightmotor_WriteCompare2(0);

}

 void DoRightTurn() {
    PWM_leftmotor_Start();
    PWM_rightmotor_Start();
    
    // initiate right turn
    PWM_leftmotor_WriteCompare1(0);
    //PWM_leftmotor_WriteCompare2(60);
    PWM_leftmotor_WriteCompare2(90);     // going forward -> 140 works 
        
    // right turn; right motor reverse
    PWM_rightmotor_WriteCompare1(0);
    PWM_rightmotor_WriteCompare2(90);    // reverse
    
}

void GoStraight(){
    PWM_leftmotor_Start();
    PWM_rightmotor_Start();
    
    PWM_leftmotor_WriteCompare1(0);
    PWM_leftmotor_WriteCompare2(97);

    PWM_rightmotor_WriteCompare1(90);
    PWM_rightmotor_WriteCompare2(0);
}
void Stop(){
    PWM_leftmotor_WriteCompare1(140);
    PWM_leftmotor_WriteCompare2(140);

    PWM_rightmotor_WriteCompare1(140);
    PWM_rightmotor_WriteCompare2(140);
}

void ArrangeToLeft(){
    PWM_leftmotor_Start();
    PWM_rightmotor_Start();
    PWM_leftmotor_WriteCompare1(0);
    
    leftDuty = leftDuty+ offset;
    PWM_leftmotor_WriteCompare2(leftDuty);
    
    PWM_rightmotor_WriteCompare1(startDuty);
    
    rightDuty = rightDuty+ offset;
    PWM_rightmotor_WriteCompare2(rightDuty);
}

void ArrangeToRight(){
    PWM_leftmotor_Start();
    PWM_rightmotor_Start();
    PWM_leftmotor_WriteCompare1(0+offset);
    PWM_leftmotor_WriteCompare2(startDuty);

    PWM_rightmotor_WriteCompare1(startDuty+offset);
    PWM_rightmotor_WriteCompare2(0);
}

void updateMotorSpeed_Right(int speed) {    
    PWM_rightmotor_WriteCompare1(255 - speed);
    PWM_rightmotor_WriteCompare2(255-(255-speed));
}

void updateMotorSpeed_Left(int speed) {    
    PWM_leftmotor_WriteCompare2(255 - speed);
    PWM_leftmotor_WriteCompare1(255-(255-speed));
}

void updateMotorSpeed(int speed) {
    updateMotorSpeed_Right(speed);
    updateMotorSpeed_Left(speed);   
}

/* [] END OF FILE */
