/*******************************************************************************
* File Name: PWM_leftmotor_PM.c
* Version 3.30
*
* Description:
*  This file provides the power management source code to API for the
*  PWM.
*
* Note:
*
********************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "PWM_leftmotor.h"

static PWM_leftmotor_backupStruct PWM_leftmotor_backup;


/*******************************************************************************
* Function Name: PWM_leftmotor_SaveConfig
********************************************************************************
*
* Summary:
*  Saves the current user configuration of the component.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  PWM_leftmotor_backup:  Variables of this global structure are modified to
*  store the values of non retention configuration registers when Sleep() API is
*  called.
*
*******************************************************************************/
void PWM_leftmotor_SaveConfig(void) 
{

    #if(!PWM_leftmotor_UsingFixedFunction)
        #if(!PWM_leftmotor_PWMModeIsCenterAligned)
            PWM_leftmotor_backup.PWMPeriod = PWM_leftmotor_ReadPeriod();
        #endif /* (!PWM_leftmotor_PWMModeIsCenterAligned) */
        PWM_leftmotor_backup.PWMUdb = PWM_leftmotor_ReadCounter();
        #if (PWM_leftmotor_UseStatus)
            PWM_leftmotor_backup.InterruptMaskValue = PWM_leftmotor_STATUS_MASK;
        #endif /* (PWM_leftmotor_UseStatus) */

        #if(PWM_leftmotor_DeadBandMode == PWM_leftmotor__B_PWM__DBM_256_CLOCKS || \
            PWM_leftmotor_DeadBandMode == PWM_leftmotor__B_PWM__DBM_2_4_CLOCKS)
            PWM_leftmotor_backup.PWMdeadBandValue = PWM_leftmotor_ReadDeadTime();
        #endif /*  deadband count is either 2-4 clocks or 256 clocks */

        #if(PWM_leftmotor_KillModeMinTime)
             PWM_leftmotor_backup.PWMKillCounterPeriod = PWM_leftmotor_ReadKillTime();
        #endif /* (PWM_leftmotor_KillModeMinTime) */

        #if(PWM_leftmotor_UseControl)
            PWM_leftmotor_backup.PWMControlRegister = PWM_leftmotor_ReadControlRegister();
        #endif /* (PWM_leftmotor_UseControl) */
    #endif  /* (!PWM_leftmotor_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: PWM_leftmotor_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the current user configuration of the component.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  PWM_leftmotor_backup:  Variables of this global structure are used to
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_leftmotor_RestoreConfig(void) 
{
        #if(!PWM_leftmotor_UsingFixedFunction)
            #if(!PWM_leftmotor_PWMModeIsCenterAligned)
                PWM_leftmotor_WritePeriod(PWM_leftmotor_backup.PWMPeriod);
            #endif /* (!PWM_leftmotor_PWMModeIsCenterAligned) */

            PWM_leftmotor_WriteCounter(PWM_leftmotor_backup.PWMUdb);

            #if (PWM_leftmotor_UseStatus)
                PWM_leftmotor_STATUS_MASK = PWM_leftmotor_backup.InterruptMaskValue;
            #endif /* (PWM_leftmotor_UseStatus) */

            #if(PWM_leftmotor_DeadBandMode == PWM_leftmotor__B_PWM__DBM_256_CLOCKS || \
                PWM_leftmotor_DeadBandMode == PWM_leftmotor__B_PWM__DBM_2_4_CLOCKS)
                PWM_leftmotor_WriteDeadTime(PWM_leftmotor_backup.PWMdeadBandValue);
            #endif /* deadband count is either 2-4 clocks or 256 clocks */

            #if(PWM_leftmotor_KillModeMinTime)
                PWM_leftmotor_WriteKillTime(PWM_leftmotor_backup.PWMKillCounterPeriod);
            #endif /* (PWM_leftmotor_KillModeMinTime) */

            #if(PWM_leftmotor_UseControl)
                PWM_leftmotor_WriteControlRegister(PWM_leftmotor_backup.PWMControlRegister);
            #endif /* (PWM_leftmotor_UseControl) */
        #endif  /* (!PWM_leftmotor_UsingFixedFunction) */
    }


/*******************************************************************************
* Function Name: PWM_leftmotor_Sleep
********************************************************************************
*
* Summary:
*  Disables block's operation and saves the user configuration. Should be called
*  just prior to entering sleep.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  PWM_leftmotor_backup.PWMEnableState:  Is modified depending on the enable
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void PWM_leftmotor_Sleep(void) 
{
    #if(PWM_leftmotor_UseControl)
        if(PWM_leftmotor_CTRL_ENABLE == (PWM_leftmotor_CONTROL & PWM_leftmotor_CTRL_ENABLE))
        {
            /*Component is enabled */
            PWM_leftmotor_backup.PWMEnableState = 1u;
        }
        else
        {
            /* Component is disabled */
            PWM_leftmotor_backup.PWMEnableState = 0u;
        }
    #endif /* (PWM_leftmotor_UseControl) */

    /* Stop component */
    PWM_leftmotor_Stop();

    /* Save registers configuration */
    PWM_leftmotor_SaveConfig();
}


/*******************************************************************************
* Function Name: PWM_leftmotor_Wakeup
********************************************************************************
*
* Summary:
*  Restores and enables the user configuration. Should be called just after
*  awaking from sleep.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  PWM_leftmotor_backup.pwmEnable:  Is used to restore the enable state of
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_leftmotor_Wakeup(void) 
{
     /* Restore registers values */
    PWM_leftmotor_RestoreConfig();

    if(PWM_leftmotor_backup.PWMEnableState != 0u)
    {
        /* Enable component's operation */
        PWM_leftmotor_Enable();
    } /* Do nothing if component's block was disabled before */

}


/* [] END OF FILE */
