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

#include "map.h"
int row = sizeof(map) / sizeof(map[0]);
int column = sizeof(map[0])/sizeof(map[0][0]);   
int adjacentMap[15*19][5];
int numOfValid = 0;
int allNode[15*19];
int stepArray[500];
int descendStep = 0;
int turnActionArray[500];
int actionIndex = 0;

#define left_Turn 1;
#define right_Turn 2;
#define go_straight 0;
#define turn_Around 3;

void dijkstra(int sourceNode,int destinationNode){
    int dis[numOfValid]; 
    int pred[numOfValid]; 
    int color[numOfValid];

    int index = 0;
    int nodeIndex = 0;
    for(int i = 0; i <numOfValid; i ++){
        dis[i] = 9999;
        pred[i] = 9999;
        color[i] = 0;
    }
    


    for(int i = 0; i <numOfValid; i++){
        if(allNode[i] == sourceNode){
            index = i;
        }
    }
    pred[index] = sourceNode;
    dis[index] = 0;
    color[index]= 2;
    
    

    for(int i =0; i < 4; i++){

        int neibo = adjacentMap[sourceNode][i];
        if(neibo != 999){
            for(int i = 0; i <numOfValid; i++){
               if(allNode[i] == neibo){
                  index = i;
                }
                
            }
            dis[index] = 1;
            pred[index] = sourceNode;
        }

    }



    int flag = 1;
   
    
    while (flag)
    {   int minimum = 99999;
        for(int i = 0; i < numOfValid; i ++){
            if(color[i] == 0){
                if(dis[i] <=minimum){
                    minimum = dis[i];
                    index = i;
                }
            }
        }
        color[index] = 2;
        int whiteNode = allNode[index];
        
        for(int i =0; i < 4; i++){           
            int neibo = adjacentMap[whiteNode][i];                    
            if(neibo != 999){
                for(int i = 0; i <numOfValid; i++){
                    if(allNode[i] == neibo){
                        nodeIndex = i;
                    }
                }
                if((color[nodeIndex] == 0)&&(dis[nodeIndex]>dis[index]+1)){
                    dis[nodeIndex] = dis[index] + 1;
                    pred[nodeIndex] = whiteNode;
                }      
            }             
        }
        flag = 0;
        for(int i = 0; i < numOfValid; i ++){
            if(color[i] == 0){
                flag = 1;
            }
        }
    }
    


    int currentNode = destinationNode;
    int steps = 1;
    while(currentNode!= sourceNode){
        for(int i = 0; i <numOfValid; i++){
            if(allNode[i] == currentNode){
                index = i;
            }
        }
        currentNode = pred[index];
        steps++;
    }
    


    stepArray[descendStep] = sourceNode;
    if(descendStep ==0){
        descendStep = steps + descendStep;
    }else{
        descendStep = steps + descendStep-1;
    }
    

    currentNode = destinationNode;
    while(currentNode!= sourceNode){
        stepArray[descendStep-1] = currentNode;
        for(int i = 0; i <numOfValid; i++){
            if(allNode[i] == currentNode){
                index = i;
            }
        }
        currentNode = pred[index];
        descendStep--;
    }
    descendStep = steps + descendStep -1;
    

}

void convert2TurnAction(void){
    printf("\n");
    for(int i = 1; i <descendStep-1; i ++){
     
        int neiboNumber = adjacentMap[stepArray[i]][4];  
        
        int currentRow = (stepArray[i]-(stepArray[i]%19))/19;
        int currentColumn = stepArray[i] % 19;

        int previousRow = (stepArray[i-1]-(stepArray[i-1]%19))/19;
        int previousColumn = stepArray[i-1] % 19;

        int nextRow =(stepArray[i+1]-(stepArray[i+1]%19))/19;
        int nextColumn = (stepArray[i+1] % 19);

        if((currentRow == previousRow)&&(currentColumn == previousColumn+1)){ //going straight horizontally to right

            if((currentRow == nextRow+1)&&(currentColumn == nextColumn)){ //turning left on next step
                turnActionArray[actionIndex] =  left_Turn;
                actionIndex ++;
            }
            if((currentRow == nextRow-1)&&(currentColumn == nextColumn)){ //turning right on next step
                turnActionArray[actionIndex] =  right_Turn;
                actionIndex ++;
            }
            if((currentRow == nextRow)&&(currentColumn == nextColumn +1)){ //turn around on next step . ie: go back
                turnActionArray[actionIndex] =  turn_Around;
                actionIndex ++;
            }
            if((neiboNumber>2)&&((currentRow == nextRow)&&(currentColumn == nextColumn-1))){ //go straight at an intersection.
                turnActionArray[actionIndex] =  go_straight;
                actionIndex ++;
            }

        }

        
        if((currentRow == previousRow)&&(currentColumn == previousColumn-1)){ //going straight horizontally to left

            if((currentRow == nextRow+1)&&(currentColumn == nextColumn)){ //turning right on next step
                turnActionArray[actionIndex] =  right_Turn;
                actionIndex ++;
            }
            if((currentRow == nextRow-1)&&(currentColumn == nextColumn)){ //turning left on next step
                turnActionArray[actionIndex] =  left_Turn;
                actionIndex ++;
            }
            if((currentRow == nextRow)&&(currentColumn == nextColumn -1)){ //turn around on next step . ie: go back
                turnActionArray[actionIndex] =  turn_Around;
                actionIndex ++;
            }
            if((neiboNumber>2)&&((currentRow == nextRow)&&(currentColumn == nextColumn+1))){ //go straight at an intersection.
                turnActionArray[actionIndex] =  go_straight;
                actionIndex ++;
            }
        }

        if((currentRow == previousRow-1)&&(currentColumn == previousColumn)){//going straight vertically to up
          
            if((currentRow == nextRow)&&(currentColumn == nextColumn-1)){ //turning right on next step
                turnActionArray[actionIndex] =  right_Turn;
                actionIndex ++;
            }
            if((currentRow == nextRow)&&(currentColumn == nextColumn+1)){ //turning left on next step
                turnActionArray[actionIndex] =  left_Turn;
                actionIndex ++;
            }
            if((currentRow == nextRow -1)&&(currentColumn == nextColumn)){ //turn around on next step . ie: go back
                turnActionArray[actionIndex] =  turn_Around;
                actionIndex ++;
            }
            if((neiboNumber>2)&&((currentRow == nextRow+1)&&(currentColumn == nextColumn))){ //go straight at an intersection.
                turnActionArray[actionIndex] =  go_straight;
                actionIndex ++;
            }
        }

        if((currentRow == previousRow+1)&&(currentColumn == previousColumn)){//going straight vertically to down

            if((currentRow == nextRow)&&(currentColumn == nextColumn+1)){ //turning left on next step
                turnActionArray[actionIndex] =  right_Turn;
                actionIndex ++;
            }
            if((currentRow == nextRow)&&(currentColumn == nextColumn-1)){ //turning right on next step
                turnActionArray[actionIndex] =  left_Turn;
                actionIndex ++;
            }
            if((currentRow == nextRow +1)&&(currentColumn == nextColumn)){ //turn around on next step . ie: go back
                turnActionArray[actionIndex] =  turn_Around;
                actionIndex ++;
            }
            if((neiboNumber>2)&&((currentRow == nextRow-1)&&(currentColumn == nextColumn))){ //go straight at an intersection.
                turnActionArray[actionIndex] =  go_straight;
                actionIndex ++;
            }
        }    
    }
    
    printf("\n");
    for(int i =0; i <actionIndex; i++){
        printf("%d",turnActionArray[i]);
        printf("|");
    }
}

void findshortestPath(void){  
    for(int i =0; i < 15; i++){
        for(int j =0; j <19; j++){

            //printf("%d",map[i][j]);
            int k = 0;

            if(map[i][j] == 0){
                allNode[numOfValid] = i*column +j;
                numOfValid ++;
                if(i>0){
                    if(map[i-1][j] == 0){
                       adjacentMap[i*column +j][k] = (i -1) *column +j;
                       k++;
                    }
                }
                if(i<14){
                    if(map[i+1][j]== 0){
                       adjacentMap[i*column +j][k] = (i +1) *column +j;
                       k++;
                    }
                }
                if(j>0){
                    if(map[i][j-1] ==0){
                       adjacentMap[i*column +j][k] = (i) *column +j-1;
                       k++;
                    }
                }
                if(j<19){
                    if(map[i][j+1] ==0){
                       adjacentMap[i*column +j][k] = (i) *column +j+1;
                       k++;
                    }
                }
                adjacentMap[i*column +j][4] =k;
                while(k -1 <3){
                       adjacentMap[i*column +j][k] = 999;
                       k++;
                }

            }
        }
        
    }

    for(int i = 0 ; i <500; i ++){
        stepArray[i] = 999;
        turnActionArray[i] = 999;
    }

    int result = sizeof(food_list) / sizeof(food_list[0]);
    
    for(int i = 0; i < result-1; i++){
        int sourceNode= (food_list[i][0])*column +  food_list[i][1];
        int destinationNode = (food_list[i+1][0])*column +food_list[i+1][1];
        dijkstra(sourceNode,destinationNode);
        printf("\n");
    }
    printf("\n");
  
    printf("%d",result);
    printf("\n");
    
    for(int i = 0 ; i <descendStep; i ++){
        printf("%d",(stepArray[i]-(stepArray[i]%19))/19);
        printf(",");
        printf("%d",stepArray[i] % 19);
        printf("|");
    }
    printf("%d",descendStep);

    convert2TurnAction();

}




/* [] END OF FILE */
