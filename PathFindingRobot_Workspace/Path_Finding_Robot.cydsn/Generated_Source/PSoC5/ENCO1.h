/*******************************************************************************
* File Name: ENCO1.h  
* Version 2.20
*
* Description:
*  This file contains Pin function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_PINS_ENCO1_H) /* Pins ENCO1_H */
#define CY_PINS_ENCO1_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "ENCO1_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 ENCO1__PORT == 15 && ((ENCO1__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    ENCO1_Write(uint8 value);
void    ENCO1_SetDriveMode(uint8 mode);
uint8   ENCO1_ReadDataReg(void);
uint8   ENCO1_Read(void);
void    ENCO1_SetInterruptMode(uint16 position, uint16 mode);
uint8   ENCO1_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the ENCO1_SetDriveMode() function.
     *  @{
     */
        #define ENCO1_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define ENCO1_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define ENCO1_DM_RES_UP          PIN_DM_RES_UP
        #define ENCO1_DM_RES_DWN         PIN_DM_RES_DWN
        #define ENCO1_DM_OD_LO           PIN_DM_OD_LO
        #define ENCO1_DM_OD_HI           PIN_DM_OD_HI
        #define ENCO1_DM_STRONG          PIN_DM_STRONG
        #define ENCO1_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define ENCO1_MASK               ENCO1__MASK
#define ENCO1_SHIFT              ENCO1__SHIFT
#define ENCO1_WIDTH              1u

/* Interrupt constants */
#if defined(ENCO1__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in ENCO1_SetInterruptMode() function.
     *  @{
     */
        #define ENCO1_INTR_NONE      (uint16)(0x0000u)
        #define ENCO1_INTR_RISING    (uint16)(0x0001u)
        #define ENCO1_INTR_FALLING   (uint16)(0x0002u)
        #define ENCO1_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define ENCO1_INTR_MASK      (0x01u) 
#endif /* (ENCO1__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define ENCO1_PS                     (* (reg8 *) ENCO1__PS)
/* Data Register */
#define ENCO1_DR                     (* (reg8 *) ENCO1__DR)
/* Port Number */
#define ENCO1_PRT_NUM                (* (reg8 *) ENCO1__PRT) 
/* Connect to Analog Globals */                                                  
#define ENCO1_AG                     (* (reg8 *) ENCO1__AG)                       
/* Analog MUX bux enable */
#define ENCO1_AMUX                   (* (reg8 *) ENCO1__AMUX) 
/* Bidirectional Enable */                                                        
#define ENCO1_BIE                    (* (reg8 *) ENCO1__BIE)
/* Bit-mask for Aliased Register Access */
#define ENCO1_BIT_MASK               (* (reg8 *) ENCO1__BIT_MASK)
/* Bypass Enable */
#define ENCO1_BYP                    (* (reg8 *) ENCO1__BYP)
/* Port wide control signals */                                                   
#define ENCO1_CTL                    (* (reg8 *) ENCO1__CTL)
/* Drive Modes */
#define ENCO1_DM0                    (* (reg8 *) ENCO1__DM0) 
#define ENCO1_DM1                    (* (reg8 *) ENCO1__DM1)
#define ENCO1_DM2                    (* (reg8 *) ENCO1__DM2) 
/* Input Buffer Disable Override */
#define ENCO1_INP_DIS                (* (reg8 *) ENCO1__INP_DIS)
/* LCD Common or Segment Drive */
#define ENCO1_LCD_COM_SEG            (* (reg8 *) ENCO1__LCD_COM_SEG)
/* Enable Segment LCD */
#define ENCO1_LCD_EN                 (* (reg8 *) ENCO1__LCD_EN)
/* Slew Rate Control */
#define ENCO1_SLW                    (* (reg8 *) ENCO1__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define ENCO1_PRTDSI__CAPS_SEL       (* (reg8 *) ENCO1__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define ENCO1_PRTDSI__DBL_SYNC_IN    (* (reg8 *) ENCO1__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define ENCO1_PRTDSI__OE_SEL0        (* (reg8 *) ENCO1__PRTDSI__OE_SEL0) 
#define ENCO1_PRTDSI__OE_SEL1        (* (reg8 *) ENCO1__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define ENCO1_PRTDSI__OUT_SEL0       (* (reg8 *) ENCO1__PRTDSI__OUT_SEL0) 
#define ENCO1_PRTDSI__OUT_SEL1       (* (reg8 *) ENCO1__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define ENCO1_PRTDSI__SYNC_OUT       (* (reg8 *) ENCO1__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(ENCO1__SIO_CFG)
    #define ENCO1_SIO_HYST_EN        (* (reg8 *) ENCO1__SIO_HYST_EN)
    #define ENCO1_SIO_REG_HIFREQ     (* (reg8 *) ENCO1__SIO_REG_HIFREQ)
    #define ENCO1_SIO_CFG            (* (reg8 *) ENCO1__SIO_CFG)
    #define ENCO1_SIO_DIFF           (* (reg8 *) ENCO1__SIO_DIFF)
#endif /* (ENCO1__SIO_CFG) */

/* Interrupt Registers */
#if defined(ENCO1__INTSTAT)
    #define ENCO1_INTSTAT            (* (reg8 *) ENCO1__INTSTAT)
    #define ENCO1_SNAP               (* (reg8 *) ENCO1__SNAP)
    
	#define ENCO1_0_INTTYPE_REG 		(* (reg8 *) ENCO1__0__INTTYPE)
#endif /* (ENCO1__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_ENCO1_H */


/* [] END OF FILE */
