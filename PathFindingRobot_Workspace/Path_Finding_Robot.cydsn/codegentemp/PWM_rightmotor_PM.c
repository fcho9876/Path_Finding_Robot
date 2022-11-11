/*******************************************************************************
* File Name: PWM_rightmotor_PM.c
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

#include "PWM_rightmotor.h"

static PWM_rightmotor_backupStruct PWM_rightmotor_backup;


/*******************************************************************************
* Function Name: PWM_rightmotor_SaveConfig
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
*  PWM_rightmotor_backup:  Variables of this global structure are modified to
*  store the values of non retention configuration registers when Sleep() API is
*  called.
*
*******************************************************************************/
void PWM_rightmotor_SaveConfig(void) 
{

    #if(!PWM_rightmotor_UsingFixedFunction)
        #if(!PWM_rightmotor_PWMModeIsCenterAligned)
            PWM_rightmotor_backup.PWMPeriod = PWM_rightmotor_ReadPeriod();
        #endif /* (!PWM_rightmotor_PWMModeIsCenterAligned) */
        PWM_rightmotor_backup.PWMUdb = PWM_rightmotor_ReadCounter();
        #if (PWM_rightmotor_UseStatus)
            PWM_rightmotor_backup.InterruptMaskValue = PWM_rightmotor_STATUS_MASK;
        #endif /* (PWM_rightmotor_UseStatus) */

        #if(PWM_rightmotor_DeadBandMode == PWM_rightmotor__B_PWM__DBM_256_CLOCKS || \
            PWM_rightmotor_DeadBandMode == PWM_rightmotor__B_PWM__DBM_2_4_CLOCKS)
            PWM_rightmotor_backup.PWMdeadBandValue = PWM_rightmotor_ReadDeadTime();
        #endif /*  deadband count is either 2-4 clocks or 256 clocks */

        #if(PWM_rightmotor_KillModeMinTime)
             PWM_rightmotor_backup.PWMKillCounterPeriod = PWM_rightmotor_ReadKillTime();
        #endif /* (PWM_rightmotor_KillModeMinTime) */

        #if(PWM_rightmotor_UseControl)
            PWM_rightmotor_backup.PWMControlRegister = PWM_rightmotor_ReadControlRegister();
        #endif /* (PWM_rightmotor_UseControl) */
    #endif  /* (!PWM_rightmotor_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: PWM_rightmotor_RestoreConfig
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
*  PWM_rightmotor_backup:  Variables of this global structure are used to
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_rightmotor_RestoreConfig(void) 
{
        #if(!PWM_rightmotor_UsingFixedFunction)
            #if(!PWM_rightmotor_PWMModeIsCenterAligned)
                PWM_rightmotor_WritePeriod(PWM_rightmotor_backup.PWMPeriod);
            #endif /* (!PWM_rightmotor_PWMModeIsCenterAligned) */

            PWM_rightmotor_WriteCounter(PWM_rightmotor_backup.PWMUdb);

            #if (PWM_rightmotor_UseStatus)
                PWM_rightmotor_STATUS_MASK = PWM_rightmotor_backup.InterruptMaskValue;
            #endif /* (PWM_rightmotor_UseStatus) */

            #if(PWM_rightmotor_DeadBandMode == PWM_rightmotor__B_PWM__DBM_256_CLOCKS || \
                PWM_rightmotor_DeadBandMode == PWM_rightmotor__B_PWM__DBM_2_4_CLOCKS)
                PWM_rightmotor_WriteDeadTime(PWM_rightmotor_backup.PWMdeadBandValue);
            #endif /* deadband count is either 2-4 clocks or 256 clocks */

            #if(PWM_rightmotor_KillModeMinTime)
                PWM_rightmotor_WriteKillTime(PWM_rightmotor_backup.PWMKillCounterPeriod);
            #endif /* (PWM_rightmotor_KillModeMinTime) */

            #if(PWM_rightmotor_UseControl)
                PWM_rightmotor_WriteControlRegister(PWM_rightmotor_backup.PWMControlRegister);
            #endif /* (PWM_rightmotor_UseControl) */
        #endif  /* (!PWM_rightmotor_UsingFixedFunction) */
    }


/*******************************************************************************
* Function Name: PWM_rightmotor_Sleep
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
*  PWM_rightmotor_backup.PWMEnableState:  Is modified depending on the enable
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void PWM_rightmotor_Sleep(void) 
{
    #if(PWM_rightmotor_UseControl)
        if(PWM_rightmotor_CTRL_ENABLE == (PWM_rightmotor_CONTROL & PWM_rightmotor_CTRL_ENABLE))
        {
            /*Component is enabled */
            PWM_rightmotor_backup.PWMEnableState = 1u;
        }
        else
        {
            /* Component is disabled */
            PWM_rightmotor_backup.PWMEnableState = 0u;
        }
    #endif /* (PWM_rightmotor_UseControl) */

    /* Stop component */
    PWM_rightmotor_Stop();

    /* Save registers configuration */
    PWM_rightmotor_SaveConfig();
}


/*******************************************************************************
* Function Name: PWM_rightmotor_Wakeup
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
*  PWM_rightmotor_backup.pwmEnable:  Is used to restore the enable state of
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_rightmotor_Wakeup(void) 
{
     /* Restore registers values */
    PWM_rightmotor_RestoreConfig();

    if(PWM_rightmotor_backup.PWMEnableState != 0u)
    {
        /* Enable component's operation */
        PWM_rightmotor_Enable();
    } /* Do nothing if component's block was disabled before */

}


/* [] END OF FILE */
