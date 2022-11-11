/*******************************************************************************
* File Name: ENCO2.h  
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

#if !defined(CY_PINS_ENCO2_H) /* Pins ENCO2_H */
#define CY_PINS_ENCO2_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "ENCO2_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 ENCO2__PORT == 15 && ((ENCO2__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    ENCO2_Write(uint8 value);
void    ENCO2_SetDriveMode(uint8 mode);
uint8   ENCO2_ReadDataReg(void);
uint8   ENCO2_Read(void);
void    ENCO2_SetInterruptMode(uint16 position, uint16 mode);
uint8   ENCO2_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the ENCO2_SetDriveMode() function.
     *  @{
     */
        #define ENCO2_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define ENCO2_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define ENCO2_DM_RES_UP          PIN_DM_RES_UP
        #define ENCO2_DM_RES_DWN         PIN_DM_RES_DWN
        #define ENCO2_DM_OD_LO           PIN_DM_OD_LO
        #define ENCO2_DM_OD_HI           PIN_DM_OD_HI
        #define ENCO2_DM_STRONG          PIN_DM_STRONG
        #define ENCO2_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define ENCO2_MASK               ENCO2__MASK
#define ENCO2_SHIFT              ENCO2__SHIFT
#define ENCO2_WIDTH              1u

/* Interrupt constants */
#if defined(ENCO2__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in ENCO2_SetInterruptMode() function.
     *  @{
     */
        #define ENCO2_INTR_NONE      (uint16)(0x0000u)
        #define ENCO2_INTR_RISING    (uint16)(0x0001u)
        #define ENCO2_INTR_FALLING   (uint16)(0x0002u)
        #define ENCO2_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define ENCO2_INTR_MASK      (0x01u) 
#endif /* (ENCO2__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define ENCO2_PS                     (* (reg8 *) ENCO2__PS)
/* Data Register */
#define ENCO2_DR                     (* (reg8 *) ENCO2__DR)
/* Port Number */
#define ENCO2_PRT_NUM                (* (reg8 *) ENCO2__PRT) 
/* Connect to Analog Globals */                                                  
#define ENCO2_AG                     (* (reg8 *) ENCO2__AG)                       
/* Analog MUX bux enable */
#define ENCO2_AMUX                   (* (reg8 *) ENCO2__AMUX) 
/* Bidirectional Enable */                                                        
#define ENCO2_BIE                    (* (reg8 *) ENCO2__BIE)
/* Bit-mask for Aliased Register Access */
#define ENCO2_BIT_MASK               (* (reg8 *) ENCO2__BIT_MASK)
/* Bypass Enable */
#define ENCO2_BYP                    (* (reg8 *) ENCO2__BYP)
/* Port wide control signals */                                                   
#define ENCO2_CTL                    (* (reg8 *) ENCO2__CTL)
/* Drive Modes */
#define ENCO2_DM0                    (* (reg8 *) ENCO2__DM0) 
#define ENCO2_DM1                    (* (reg8 *) ENCO2__DM1)
#define ENCO2_DM2                    (* (reg8 *) ENCO2__DM2) 
/* Input Buffer Disable Override */
#define ENCO2_INP_DIS                (* (reg8 *) ENCO2__INP_DIS)
/* LCD Common or Segment Drive */
#define ENCO2_LCD_COM_SEG            (* (reg8 *) ENCO2__LCD_COM_SEG)
/* Enable Segment LCD */
#define ENCO2_LCD_EN                 (* (reg8 *) ENCO2__LCD_EN)
/* Slew Rate Control */
#define ENCO2_SLW                    (* (reg8 *) ENCO2__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define ENCO2_PRTDSI__CAPS_SEL       (* (reg8 *) ENCO2__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define ENCO2_PRTDSI__DBL_SYNC_IN    (* (reg8 *) ENCO2__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define ENCO2_PRTDSI__OE_SEL0        (* (reg8 *) ENCO2__PRTDSI__OE_SEL0) 
#define ENCO2_PRTDSI__OE_SEL1        (* (reg8 *) ENCO2__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define ENCO2_PRTDSI__OUT_SEL0       (* (reg8 *) ENCO2__PRTDSI__OUT_SEL0) 
#define ENCO2_PRTDSI__OUT_SEL1       (* (reg8 *) ENCO2__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define ENCO2_PRTDSI__SYNC_OUT       (* (reg8 *) ENCO2__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(ENCO2__SIO_CFG)
    #define ENCO2_SIO_HYST_EN        (* (reg8 *) ENCO2__SIO_HYST_EN)
    #define ENCO2_SIO_REG_HIFREQ     (* (reg8 *) ENCO2__SIO_REG_HIFREQ)
    #define ENCO2_SIO_CFG            (* (reg8 *) ENCO2__SIO_CFG)
    #define ENCO2_SIO_DIFF           (* (reg8 *) ENCO2__SIO_DIFF)
#endif /* (ENCO2__SIO_CFG) */

/* Interrupt Registers */
#if defined(ENCO2__INTSTAT)
    #define ENCO2_INTSTAT            (* (reg8 *) ENCO2__INTSTAT)
    #define ENCO2_SNAP               (* (reg8 *) ENCO2__SNAP)
    
	#define ENCO2_0_INTTYPE_REG 		(* (reg8 *) ENCO2__0__INTTYPE)
#endif /* (ENCO2__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_ENCO2_H */


/* [] END OF FILE */
