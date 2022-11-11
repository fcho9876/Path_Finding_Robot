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

#ifndef FUNCTIONS_H_
#define FUNCTIONS_H_


#include <stdio.h>
#include <project.h>
#include <string.h>

int findMaximum(int array[10]);
int findMinimum(int array[10]);
void usbPutString(char *s);

// motor control related functions
void DoLeftTurn();
void DoLeftToStraight();
void DoRightTurn();
void GoStraight();
void Stop();
void ArrangeToLeft();
void ArrangeToRight();
void updateMotorSpeed_Right();
void updateMotorSpeed_Left();
void updateMotorSpeed();


#endif /* FUNCTIONS_H_ */

/* [] END OF FILE */
