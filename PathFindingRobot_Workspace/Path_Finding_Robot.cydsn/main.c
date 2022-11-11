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
#include "project.h"
#include "functions.h"
#include "algorithm.h"
#include <stdio.h>
#include <project.h>
#include <string.h>


int turnActionArray[500];

// for testing use only
int testArray[14] = {3,3,0,1,2,1,1,0,1,2,0,0,2,1};
int testArray2[21] = {1,2,0,1,1,2,2,1,1,2,2,1,1,3,2,2,0,2,1,1,1};
int testArray3[25] ={2,1,1,2,0,3,0,1,1,2,2,1,0,2,1,1,3,2,2,0,2,1,0,1,0};

int leftFlag = 0;
int rightFlag = 0;

// indicate completion of reading and storing values
int flag=0;
int flag2=0;
int flag3=0;
int flag4=0;
int flag5=0;
int flag6=0;

// variable to keep track number of ADC value reading counts
int count1 = 0;
int count2 = 0;
int count3 = 0;
int count4 = 0;
int count5 = 0;
int count6 = 0;

// array to store mV values
int array[10] ={0};
int array2[10] ={0};
int array3[10] ={0};
int array4[10] ={0};
int array5[10] ={0};
int array6[10] ={0};

int leftTurn = 0;   // 0  means no turns 
int rightTurn = 0;
int finishTurn = 0; // 0 means turn not finished

int front = 0;
int left = 0;
int right = 0;
int far_left = 0;
int far_right = 0;
int back = 0;

enum States {left_turn, right_turn, straight, stop, straight_left_adjust, straight_right_adjust,left_to_straight};

CY_ISR(eoc1){
    
    if(count1 < 9){
        int val = ADC_SAR_Seq_1_GetResult16(0);
        int mVolts = ADC_SAR_Seq_1_CountsTo_mVolts(val);
        array[count1] = mVolts;
        count1++;
        
    } else {
        flag = 1;
    }
    
    if(count2 < 9){
        int val2 = ADC_SAR_Seq_1_GetResult16(1);
        int mVolts2 = ADC_SAR_Seq_1_CountsTo_mVolts(val2);
        array2[count2] = mVolts2;
        count2++;
        
    } else{
        flag2 = 1;
    }
    
    if(count3 < 9){
        int val3 = ADC_SAR_Seq_1_GetResult16(2);
        int mVolts3 = ADC_SAR_Seq_1_CountsTo_mVolts(val3);
        array3[count3] = mVolts3;
        count3++;
        
    } else{
        flag3 = 1;
    }
    
    if(count4 < 9){
        int val4 = ADC_SAR_Seq_1_GetResult16(3);
        int mVolts4 = ADC_SAR_Seq_1_CountsTo_mVolts(val4);
        array4[count4] = mVolts4;
        count4++;
        
    } else{
        flag4 = 1;
    }
    
    if(count5 < 9){
        int val5 = ADC_SAR_Seq_1_GetResult16(4);
        int mVolts5 = ADC_SAR_Seq_1_CountsTo_mVolts(val5);
        array5[count5] = mVolts5;
        count5++;
        
    } else{
        flag5 = 1;
    }
    
    if(count6 < 9){
        int val6 = ADC_SAR_Seq_1_GetResult16(5);
        int mVolts6 = ADC_SAR_Seq_1_CountsTo_mVolts(val6);
        array6[count6] = mVolts6;
        count6++;
        
    } else{
        flag6 = 1;
    }
}



int main(void) {   
    
    int currentActionIndex = 0;
    isr_EOC_3_StartEx(eoc1);
    
    CyGlobalIntEnable; /* Enable global interrupts. */

    USBUART_1_Start(0,USBUART_1_5V_OPERATION);
    
    ADC_SAR_Seq_1_Start();
    Timer_2_Start();
    findshortestPath();
    
    // turn on all LEDs
    LED_1_Write(1);
    LED_2_Write(1);
    LED_3_Write(1);
    

    // set initial FSM state to go straight
    enum States FSM =straight;


    for(;;){   

        if(flag == 1){
            flag = 0;
            front = findMaximum(array);    
            count1 = 0;
            memset(array,0,sizeof(array));
        }
        
        if(flag2 == 1){
            flag2 = 0;
            left = findMaximum(array2);
            count2 = 0;
            memset(array2,0,sizeof(array2));
        }
        
        if(flag3 == 1){
            flag3 = 0;
            right = findMaximum(array3);
            count3 = 0;
            memset(array3,0,sizeof(array3));
        }    
        
        if(flag4 == 1){
            flag4 = 0;
            far_left = findMaximum(array4);
            count4 = 0;
            memset(array4,0,sizeof(array4));
        }
        
        if(flag5 == 1){
            flag5 = 0;
            far_right = findMaximum(array5);
            count5 = 0;
            memset(array5,0,sizeof(array5));
        }
        
        if(flag6 == 1){
            flag6 = 0;
            back = findMaximum(array6);
            count6 = 0;
            memset(array6,0,sizeof(array6));
        }

        
        int cmp_val = 500;
        int currentTurnAction = turnActionArray[currentActionIndex];
        

        if ((far_left > cmp_val)&&(front > cmp_val)&&(far_right > cmp_val)&&(left > cmp_val)&&(right > cmp_val)) {
            if((FSM != right_turn)&&(FSM != left_turn)){
                if((currentTurnAction == 3)&&(FSM != left_turn)){
                    rightTurn = 2;
                }
            }
        }
        
        
        if ((far_left < cmp_val)&&(front > cmp_val)&&(far_right > cmp_val)) {
          if(FSM != right_turn){
                if(currentTurnAction == 1){
                    leftTurn = 1;
                }else if(currentTurnAction == 0){
                     leftTurn = 10;
                 }else if((currentTurnAction == 3)&&(FSM != left_turn)){
                    rightTurn = 2;
                }             
          }
          
        }
        
        else if((far_left < cmp_val)&&(front < cmp_val)&&(far_right > cmp_val)){
            if(FSM != right_turn){
                if(currentTurnAction == 1){
                    leftTurn = 11;
                }else if(currentTurnAction == 0){
                    leftTurn = 10;
                }else if((currentTurnAction == 3)&&(FSM != left_turn)){
                        rightTurn = 22;
                }             
            }   
        }

        else if ((far_right < cmp_val)&&(front > cmp_val)&&(far_left > cmp_val)) {  
            if(FSM != left_turn){
                if(currentTurnAction == 2){
                    rightTurn = 2;
                }else if(currentTurnAction == 0){
                     rightTurn = 20;
                 }else if((currentTurnAction == 3)&&(FSM != right_turn)){
                    leftTurn = 1;
                }    
            }
        }
        
        else if ((far_right < cmp_val)&&(front < cmp_val)&&(far_left > cmp_val)) {  
            if(FSM != left_turn){
                if(currentTurnAction == 2){
                    rightTurn = 22;
                }else if(currentTurnAction == 0){
                     rightTurn = 20;
                 }else if((currentTurnAction == 3)&&(FSM != right_turn)){
                    leftTurn = 11;
                                       
                }       
            }
        }
        

        //for intersection when both leftturn and rightturn avaliable
        else if((far_left < cmp_val)&&(front > cmp_val)&&(far_right < cmp_val)){
            if(FSM != right_turn){
                if(currentTurnAction == 1){
                    leftTurn = 1;
                }else if(currentTurnAction == 0){
                     leftTurn = 10;
                 }             
             }if(FSM != left_turn){
                if(currentTurnAction == 2){
                    rightTurn = 2;
                }else if(currentTurnAction == 0){
                     rightTurn = 20;
                 }    
            } 
        }
        
        //for intersection when  leftturn , rightturn and straight avaliable 
        else if ((far_left < cmp_val)&&(front < cmp_val)&&(far_right < cmp_val)) {  
            if(FSM != left_turn){
                if(currentTurnAction == 2){
                    rightTurn = 22;
                }else if(currentTurnAction == 0){
                     rightTurn = 20;
                }    
            }
            if(FSM != right_turn){
                if(currentTurnAction == 1){
                    leftTurn = 11;
                    
                }else if(currentTurnAction == 0){
                    leftTurn = 10;
                }            
            }
        }
        
        
        else if ((left < cmp_val) && (right < cmp_val)) {
            //rightTurn = 0;
            
            if((FSM  == right_turn)&&(rightTurn ==2)&& (front<cmp_val)){
                
                rightTurn = 0;
                currentActionIndex++;
                //LED_2_Write(~LED_2_Read());
                FSM = straight; // go straight only
                leftFlag =0;
                rightFlag =0;
            }
            

            if((FSM  == left_turn)&&(leftTurn ==1)&& (front<cmp_val)){
                leftTurn = 0;
                currentActionIndex++;
                //LED_2_Write(~LED_2_Read());
                
                FSM = left_to_straight; // go straight only
                leftFlag =0;
                rightFlag =0;
            }
            
            
            else if((leftTurn == 0)&&(rightTurn == 0)){
                 FSM = straight; // go straight only
                 leftFlag =0;
                 rightFlag =0;
            }

        } else if ((left > cmp_val) && (right < cmp_val) && (back<cmp_val)){
            
            if((leftTurn == 0)&&(rightTurn == 0)){
                FSM = straight_left_adjust;
                leftFlag =0;
                rightFlag =0;
            }
        
        } else if ((left < cmp_val) && (right > cmp_val) && (back<cmp_val)) {
            
            if((leftTurn == 0)&&(rightTurn == 0)){
                FSM = straight_right_adjust;
                leftFlag =0;
                rightFlag =0;
            }    
        }
        
        
        if((FSM  == left_turn)&&(leftTurn ==11)&&(front>cmp_val)){
                leftFlag =1;
        }
        
        if((FSM  == left_turn)&&(leftTurn ==11)&&(front<cmp_val)){
                if(leftFlag == 1){
                    leftFlag =0;
                    leftTurn = 0;  
                    currentActionIndex++; 
                    //LED_2_Write(~LED_2_Read());
                    
                }
           }
            
        if((FSM  == right_turn)&&(rightTurn ==22)&& (front>cmp_val)){
                rightFlag = 2;
            }
            
        if((FSM  == right_turn)&&(rightTurn ==22)&& (front<cmp_val)){
                if(rightFlag ==2){
                    rightTurn = 0;
                    rightFlag = 0;
                    currentActionIndex++;     
                    //LED_2_Write(~LED_2_Read());
                }
        }
        

        //left turn FSM from condition check
        if(((leftTurn ==1)||(leftTurn == 11))&&(far_left >cmp_val)){
            FSM = left_turn;
        }
        
        if((leftTurn == 10)&&(far_left>cmp_val)){
            currentActionIndex++;
            leftTurn = 0;
            //LED_2_Write(~LED_2_Read());      
        }
        
        //right turn FSM from condition check
        if(((rightTurn ==2)||(rightTurn == 22))&&(far_right >cmp_val)){
            FSM = right_turn;
        }
        
        if((rightTurn == 20)&&(far_right>cmp_val)){
            currentActionIndex++;
            rightTurn = 0;
            //LED_2_Write(~LED_2_Read());
        }


        // FSM switch cases
        switch(FSM) {
         
            case straight:
                GoStraight();
                break;
                
            // adjust when left sensor is out of path
            case straight_left_adjust:
                ArrangeToLeft();
                break;
                
                
            // adjust when right sensor is out of path
            case straight_right_adjust:
                ArrangeToRight();
                break;
                
            case left_turn:                  
                DoLeftTurn();
                break;
                            
            case left_to_straight:
                
                DoLeftToStraight();
                break;
                
            case right_turn:             
                DoRightTurn();
                break;
  
            case stop:
                Stop();
                break;
        }

    }
        return 0;
   
}



/* [] END OF FILE */
