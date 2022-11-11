// ======================================================================
// Path_Finding_Robot.v generated from TopDesign.cysch
// 11/12/2022 at 01:32
// This file is auto generated. ANY EDITS YOU MAKE MAY BE LOST WHEN THIS FILE IS REGENERATED!!!
// ======================================================================

/* -- WARNING: The following section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_DIE_LEOPARD 1
`define CYDEV_CHIP_REV_LEOPARD_PRODUCTION 3
`define CYDEV_CHIP_REV_LEOPARD_ES3 3
`define CYDEV_CHIP_REV_LEOPARD_ES2 1
`define CYDEV_CHIP_REV_LEOPARD_ES1 0
`define CYDEV_CHIP_DIE_PSOC5LP 2
`define CYDEV_CHIP_REV_PSOC5LP_PRODUCTION 0
`define CYDEV_CHIP_REV_PSOC5LP_ES0 0
`define CYDEV_CHIP_DIE_PSOC5TM 3
`define CYDEV_CHIP_REV_PSOC5TM_PRODUCTION 1
`define CYDEV_CHIP_REV_PSOC5TM_ES1 1
`define CYDEV_CHIP_REV_PSOC5TM_ES0 0
`define CYDEV_CHIP_DIE_TMA4 4
`define CYDEV_CHIP_REV_TMA4_PRODUCTION 17
`define CYDEV_CHIP_REV_TMA4_ES 17
`define CYDEV_CHIP_REV_TMA4_ES2 33
`define CYDEV_CHIP_DIE_PSOC4A 5
`define CYDEV_CHIP_REV_PSOC4A_PRODUCTION 17
`define CYDEV_CHIP_REV_PSOC4A_ES0 17
`define CYDEV_CHIP_DIE_PSOC6ABLE2 6
`define CYDEV_CHIP_REV_PSOC6ABLE2_ES 17
`define CYDEV_CHIP_REV_PSOC6ABLE2_PRODUCTION 33
`define CYDEV_CHIP_REV_PSOC6ABLE2_NO_UDB 33
`define CYDEV_CHIP_DIE_VOLANS 7
`define CYDEV_CHIP_REV_VOLANS_PRODUCTION 0
`define CYDEV_CHIP_DIE_BERRYPECKER 8
`define CYDEV_CHIP_REV_BERRYPECKER_PRODUCTION 0
`define CYDEV_CHIP_DIE_CRANE 9
`define CYDEV_CHIP_REV_CRANE_PRODUCTION 0
`define CYDEV_CHIP_DIE_FM3 10
`define CYDEV_CHIP_REV_FM3_PRODUCTION 0
`define CYDEV_CHIP_DIE_FM4 11
`define CYDEV_CHIP_REV_FM4_PRODUCTION 0
`define CYDEV_CHIP_DIE_EXPECT 2
`define CYDEV_CHIP_REV_EXPECT 0
`define CYDEV_CHIP_DIE_ACTUAL 2
/* -- WARNING: The previous section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_FAMILY_PSOC3 1
`define CYDEV_CHIP_FAMILY_PSOC4 2
`define CYDEV_CHIP_FAMILY_PSOC5 3
`define CYDEV_CHIP_FAMILY_PSOC6 4
`define CYDEV_CHIP_FAMILY_FM0P 5
`define CYDEV_CHIP_FAMILY_FM3 6
`define CYDEV_CHIP_FAMILY_FM4 7
`define CYDEV_CHIP_FAMILY_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_3A 1
`define CYDEV_CHIP_REVISION_3A_PRODUCTION 3
`define CYDEV_CHIP_REVISION_3A_ES3 3
`define CYDEV_CHIP_REVISION_3A_ES2 1
`define CYDEV_CHIP_REVISION_3A_ES1 0
`define CYDEV_CHIP_MEMBER_5B 2
`define CYDEV_CHIP_REVISION_5B_PRODUCTION 0
`define CYDEV_CHIP_REVISION_5B_ES0 0
`define CYDEV_CHIP_MEMBER_5A 3
`define CYDEV_CHIP_REVISION_5A_PRODUCTION 1
`define CYDEV_CHIP_REVISION_5A_ES1 1
`define CYDEV_CHIP_REVISION_5A_ES0 0
`define CYDEV_CHIP_MEMBER_4G 4
`define CYDEV_CHIP_REVISION_4G_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4G_ES 17
`define CYDEV_CHIP_REVISION_4G_ES2 33
`define CYDEV_CHIP_MEMBER_4U 5
`define CYDEV_CHIP_REVISION_4U_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4E 6
`define CYDEV_CHIP_REVISION_4E_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4E_CCG2_NO_USBPD 0
`define CYDEV_CHIP_MEMBER_4O 7
`define CYDEV_CHIP_REVISION_4O_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4R 8
`define CYDEV_CHIP_REVISION_4R_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4T 9
`define CYDEV_CHIP_REVISION_4T_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4N 10
`define CYDEV_CHIP_REVISION_4N_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4S 11
`define CYDEV_CHIP_REVISION_4S_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Q 12
`define CYDEV_CHIP_REVISION_4Q_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4D 13
`define CYDEV_CHIP_REVISION_4D_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4J 14
`define CYDEV_CHIP_REVISION_4J_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4K 15
`define CYDEV_CHIP_REVISION_4K_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4V 16
`define CYDEV_CHIP_REVISION_4V_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4H 17
`define CYDEV_CHIP_REVISION_4H_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4A 18
`define CYDEV_CHIP_REVISION_4A_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4A_ES0 17
`define CYDEV_CHIP_MEMBER_4F 19
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4P 20
`define CYDEV_CHIP_REVISION_4P_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4M 21
`define CYDEV_CHIP_REVISION_4M_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4L 22
`define CYDEV_CHIP_REVISION_4L_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4I 23
`define CYDEV_CHIP_REVISION_4I_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_6A 24
`define CYDEV_CHIP_REVISION_6A_ES 17
`define CYDEV_CHIP_REVISION_6A_PRODUCTION 33
`define CYDEV_CHIP_REVISION_6A_NO_UDB 33
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE1 25
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE1_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE2 26
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE2_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE3 27
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM3 28
`define CYDEV_CHIP_REVISION_FM3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM4 29
`define CYDEV_CHIP_REVISION_FM4_PRODUCTION 0
`define CYDEV_CHIP_FAMILY_USED 3
`define CYDEV_CHIP_MEMBER_USED 2
`define CYDEV_CHIP_REVISION_USED 0
// Component: B_PWM_v3_30
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_PWM_v3_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_PWM_v3_30\B_PWM_v3_30.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_PWM_v3_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_PWM_v3_30\B_PWM_v3_30.v"
`endif

// Component: cy_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`endif

// Component: OneTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal\OneTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal\OneTerminal.v"
`endif

// Component: ZeroTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`endif

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=false, Compare1_8=false, Compare2_16=false, Compare2_8=true, CompareStatusEdgeSense=true, CompareType1=5, CompareType1Software=1, CompareType2=5, CompareType2Software=1, CompareValue1=127, CompareValue2=127, CONTROL3=0, ControlReg=true, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG8, CySetRegReplacementString=CY_SET_REG8, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=0, KillModeMinTime=0, MinimumKillTime=1, OneCompare=false, Period=255, PWMMode=1, PWMModeCenterAligned=0, RegDefReplacementString=reg8, RegSizeReplacementString=uint8, Resolution=8, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=true, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=true, TermVisibility_kill=false, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=false, TermVisibility_pwm1=true, TermVisibility_pwm2=true, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=false, UDB8=true, UseControl=true, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP8, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONFIG_TITLE=PWM_leftmotor, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_leftmotor, CY_INSTANCE_SHORT_NAME=PWM_leftmotor, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.2, INSTANCE_NAME=PWM_leftmotor, )
module PWM_v3_30_0 (
    reset,
    clock,
    tc,
    pwm1,
    pwm2,
    interrupt,
    capture,
    kill,
    enable,
    trigger,
    cmp_sel,
    pwm,
    ph1,
    ph2);
    input       reset;
    input       clock;
    output      tc;
    output      pwm1;
    output      pwm2;
    output      interrupt;
    input       capture;
    input       kill;
    input       enable;
    input       trigger;
    input       cmp_sel;
    output      pwm;
    output      ph1;
    output      ph2;

    parameter Resolution = 8;

          wire  Net_114;
          wire  Net_113;
          wire  Net_107;
          wire  Net_96;
          wire  Net_55;
          wire  Net_57;
          wire  Net_101;
          wire  Net_54;
          wire  Net_63;

    B_PWM_v3_30 PWMUDB (
        .reset(reset),
        .clock(clock),
        .tc(Net_101),
        .pwm1(pwm1),
        .pwm2(pwm2),
        .interrupt(Net_55),
        .kill(kill),
        .capture(capture),
        .enable(enable),
        .cmp_sel(cmp_sel),
        .trigger(trigger),
        .pwm(Net_96),
        .ph1(ph1),
        .ph2(ph2));
    defparam PWMUDB.CaptureMode = 0;
    defparam PWMUDB.CompareStatusEdgeSense = 1;
    defparam PWMUDB.CompareType1 = 5;
    defparam PWMUDB.CompareType2 = 5;
    defparam PWMUDB.DeadBand = 0;
    defparam PWMUDB.DitherOffset = 0;
    defparam PWMUDB.EnableMode = 0;
    defparam PWMUDB.KillMode = 0;
    defparam PWMUDB.PWMMode = 1;
    defparam PWMUDB.Resolution = 8;
    defparam PWMUDB.RunMode = 0;
    defparam PWMUDB.TriggerMode = 0;
    defparam PWMUDB.UseStatus = 1;

	// vmCompare (cy_virtualmux_v1_0)
	assign pwm = Net_96;

	// vmIRQ (cy_virtualmux_v1_0)
	assign interrupt = Net_55;

	// vmTC (cy_virtualmux_v1_0)
	assign tc = Net_101;

    OneTerminal OneTerminal_1 (
        .o(Net_113));

	// FFKillMux (cy_virtualmux_v1_0)
	assign Net_107 = Net_114;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_114));



endmodule

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=false, Compare1_8=false, Compare2_16=false, Compare2_8=true, CompareStatusEdgeSense=true, CompareType1=5, CompareType1Software=1, CompareType2=5, CompareType2Software=1, CompareValue1=127, CompareValue2=127, CONTROL3=0, ControlReg=true, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG8, CySetRegReplacementString=CY_SET_REG8, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=0, KillModeMinTime=0, MinimumKillTime=1, OneCompare=false, Period=255, PWMMode=1, PWMModeCenterAligned=0, RegDefReplacementString=reg8, RegSizeReplacementString=uint8, Resolution=8, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=true, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=true, TermVisibility_kill=false, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=false, TermVisibility_pwm1=true, TermVisibility_pwm2=true, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=false, UDB8=true, UseControl=true, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP8, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONFIG_TITLE=PWM_rightmotor, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_rightmotor, CY_INSTANCE_SHORT_NAME=PWM_rightmotor, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.2, INSTANCE_NAME=PWM_rightmotor, )
module PWM_v3_30_1 (
    reset,
    clock,
    tc,
    pwm1,
    pwm2,
    interrupt,
    capture,
    kill,
    enable,
    trigger,
    cmp_sel,
    pwm,
    ph1,
    ph2);
    input       reset;
    input       clock;
    output      tc;
    output      pwm1;
    output      pwm2;
    output      interrupt;
    input       capture;
    input       kill;
    input       enable;
    input       trigger;
    input       cmp_sel;
    output      pwm;
    output      ph1;
    output      ph2;

    parameter Resolution = 8;

          wire  Net_114;
          wire  Net_113;
          wire  Net_107;
          wire  Net_96;
          wire  Net_55;
          wire  Net_57;
          wire  Net_101;
          wire  Net_54;
          wire  Net_63;

    B_PWM_v3_30 PWMUDB (
        .reset(reset),
        .clock(clock),
        .tc(Net_101),
        .pwm1(pwm1),
        .pwm2(pwm2),
        .interrupt(Net_55),
        .kill(kill),
        .capture(capture),
        .enable(enable),
        .cmp_sel(cmp_sel),
        .trigger(trigger),
        .pwm(Net_96),
        .ph1(ph1),
        .ph2(ph2));
    defparam PWMUDB.CaptureMode = 0;
    defparam PWMUDB.CompareStatusEdgeSense = 1;
    defparam PWMUDB.CompareType1 = 5;
    defparam PWMUDB.CompareType2 = 5;
    defparam PWMUDB.DeadBand = 0;
    defparam PWMUDB.DitherOffset = 0;
    defparam PWMUDB.EnableMode = 0;
    defparam PWMUDB.KillMode = 0;
    defparam PWMUDB.PWMMode = 1;
    defparam PWMUDB.Resolution = 8;
    defparam PWMUDB.RunMode = 0;
    defparam PWMUDB.TriggerMode = 0;
    defparam PWMUDB.UseStatus = 1;

	// vmCompare (cy_virtualmux_v1_0)
	assign pwm = Net_96;

	// vmIRQ (cy_virtualmux_v1_0)
	assign interrupt = Net_55;

	// vmTC (cy_virtualmux_v1_0)
	assign tc = Net_101;

    OneTerminal OneTerminal_1 (
        .o(Net_113));

	// FFKillMux (cy_virtualmux_v1_0)
	assign Net_107 = Net_114;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_114));



endmodule

// USBFS_v3_20(AudioDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Audio">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, CDCDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="CDC">\r\n      <Nodes>\r\n        <DescriptorNode Key="Interface60">\r\n          <m_value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>ALTERNATE</bDescriptorType>\r\n            <bLength>0</bLength>\r\n            <DisplayName>CDC Interface 1</DisplayName>\r\n          </m_value>\r\n          <Value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>ALTERNATE</bDescriptorType>\r\n            <bLength>0</bLength>\r\n            <DisplayName>CDC Interface 1</DisplayName>\r\n          </Value>\r\n          <Nodes>\r\n            <DescriptorNode Key="USBDescriptor61">\r\n              <m_value d8p1:type="CyCommunicationsInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>INTERFACE</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwInterface>49</iwInterface>\r\n                <bInterfaceClass>2</bInterfaceClass>\r\n                <bAlternateSetting>0</bAlternateSetting>\r\n                <bInterfaceNumber>0</bInterfaceNumber>\r\n                <bNumEndpoints>1</bNumEndpoints>\r\n                <bInterfaceSubClass>2</bInterfaceSubClass>\r\n                <bInterfaceProtocol>1</bInterfaceProtocol>\r\n                <iInterface>3</iInterface>\r\n                <sInterface>CDC Communication Interface</sInterface>\r\n              </m_value>\r\n              <Value d8p1:type="CyCommunicationsInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>INTERFACE</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwInterface>49</iwInterface>\r\n                <bInterfaceClass>2</bInterfaceClass>\r\n                <bAlternateSetting>0</bAlternateSetting>\r\n                <bInterfaceNumber>0</bInterfaceNumber>\r\n                <bNumEndpoints>1</bNumEndpoints>\r\n                <bInterfaceSubClass>2</bInterfaceSubClass>\r\n                <bInterfaceProtocol>1</bInterfaceProtocol>\r\n                <iInterface>3</iInterface>\r\n                <sInterface>CDC Communication Interface</sInterface>\r\n              </Value>\r\n              <Nodes>\r\n                <DescriptorNode Key="USBDescriptor63">\r\n                  <m_value d10p1:type="CyCDCHeaderDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>HEADER</bDescriptorSubtype>\r\n                    <bcdADC>272</bcdADC>\r\n                  </m_value>\r\n                  <Value d10p1:type="CyCDCHeaderDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>HEADER</bDescriptorSubtype>\r\n                    <bcdADC>272</bcdADC>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor64">\r\n                  <m_value d10p1:type="CyCDCAbstractControlMgmtDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>4</bLength>\r\n                    <bDescriptorSubtype>ABSTRACT_CONTROL_MANAGEMENT</bDescriptorSubtype>\r\n                    <bmCapabilities>2</bmCapabilities>\r\n                  </m_value>\r\n                  <Value d10p1:type="CyCDCAbstractControlMgmtDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>4</bLength>\r\n                    <bDescriptorSubtype>ABSTRACT_CONTROL_MANAGEMENT</bDescriptorSubtype>\r\n                    <bmCapabilities>2</bmCapabilities>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor65">\r\n                  <m_value d10p1:type="CyCDCUnionDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>UNION</bDescriptorSubtype>\r\n                    <bSubordinateInterface>AQ==</bSubordinateInterface>\r\n                  </m_value>\r\n                  <Value d10p1:type="CyCDCUnionDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>UNION</bDescriptorSubtype>\r\n                    <bSubordinateInterface>AQ==</bSubordinateInterface>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor66">\r\n                  <m_value d10p1:type="CyCDCCallManagementDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>CALL_MANAGEMENT</bDescriptorSubtype>\r\n                    <bDataInterface>1</bDataInterface>\r\n                  </m_value>\r\n                  <Value d10p1:type="CyCDCCallManagementDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>CALL_MANAGEMENT</bDescriptorSubtype>\r\n                    <bDataInterface>1</bDataInterface>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor67">\r\n                  <m_value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>129</bEndpointAddress>\r\n                    <bmAttributes>3</bmAttributes>\r\n                  </m_value>\r\n                  <Value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>129</bEndpointAddress>\r\n                    <bmAttributes>3</bmAttributes>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n              </Nodes>\r\n            </DescriptorNode>\r\n          </Nodes>\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="Interface68">\r\n          <m_value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>ALTERNATE</bDescriptorType>\r\n            <bLength>0</bLength>\r\n            <DisplayName>CDC Interface 2</DisplayName>\r\n          </m_value>\r\n          <Value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>ALTERNATE</bDescriptorType>\r\n            <bLength>0</bLength>\r\n            <DisplayName>CDC Interface 2</DisplayName>\r\n          </Value>\r\n          <Nodes>\r\n            <DescriptorNode Key="USBDescriptor69">\r\n              <m_value d8p1:type="CyDataInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>INTERFACE</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwInterface>50</iwInterface>\r\n                <bInterfaceClass>10</bInterfaceClass>\r\n                <bAlternateSetting>0</bAlternateSetting>\r\n                <bInterfaceNumber>1</bInterfaceNumber>\r\n                <bNumEndpoints>2</bNumEndpoints>\r\n                <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                <iInterface>4</iInterface>\r\n                <sInterface>CDC Data Interface</sInterface>\r\n              </m_value>\r\n              <Value d8p1:type="CyDataInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>INTERFACE</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwInterface>50</iwInterface>\r\n                <bInterfaceClass>10</bInterfaceClass>\r\n                <bAlternateSetting>0</bAlternateSetting>\r\n                <bInterfaceNumber>1</bInterfaceNumber>\r\n                <bNumEndpoints>2</bNumEndpoints>\r\n                <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                <iInterface>4</iInterface>\r\n                <sInterface>CDC Data Interface</sInterface>\r\n              </Value>\r\n              <Nodes>\r\n                <DescriptorNode Key="USBDescriptor71">\r\n                  <m_value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>130</bEndpointAddress>\r\n                    <bmAttributes>2</bmAttributes>\r\n                    <wMaxPacketSize>64</wMaxPacketSize>\r\n                  </m_value>\r\n                  <Value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>130</bEndpointAddress>\r\n                    <bmAttributes>2</bmAttributes>\r\n                    <wMaxPacketSize>64</wMaxPacketSize>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor72">\r\n                  <m_value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>3</bEndpointAddress>\r\n                    <bmAttributes>2</bmAttributes>\r\n                    <wMaxPacketSize>64</wMaxPacketSize>\r\n                  </m_value>\r\n                  <Value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>3</bEndpointAddress>\r\n                    <bmAttributes>2</bmAttributes>\r\n                    <wMaxPacketSize>64</wMaxPacketSize>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n              </Nodes>\r\n            </DescriptorNode>\r\n          </Nodes>\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, DeviceDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Device">\r\n      <Nodes>\r\n        <DescriptorNode Key="USBDescriptor51">\r\n          <m_value d6p1:type="DeviceDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>DEVICE</bDescriptorType>\r\n            <bLength>18</bLength>\r\n            <iwManufacturer>47</iwManufacturer>\r\n            <iwProduct>48</iwProduct>\r\n            <sManufacturer>Cypress Semiconductor</sManufacturer>\r\n            <sProduct>USBUART</sProduct>\r\n            <sSerialNumber />\r\n            <bDeviceClass>2</bDeviceClass>\r\n            <bDeviceSubClass>0</bDeviceSubClass>\r\n            <bDeviceProtocol>0</bDeviceProtocol>\r\n            <bMaxPacketSize0>0</bMaxPacketSize0>\r\n            <idVendor>1204</idVendor>\r\n            <idProduct>62002</idProduct>\r\n            <bcdDevice>1</bcdDevice>\r\n            <bcdUSB>512</bcdUSB>\r\n            <iManufacturer>1</iManufacturer>\r\n            <iProduct>2</iProduct>\r\n            <iSerialNumber>0</iSerialNumber>\r\n            <bNumConfigurations>1</bNumConfigurations>\r\n            <bMemoryMgmt>0</bMemoryMgmt>\r\n            <bMemoryAlloc>0</bMemoryAlloc>\r\n          </m_value>\r\n          <Value d6p1:type="DeviceDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>DEVICE</bDescriptorType>\r\n            <bLength>18</bLength>\r\n            <iwManufacturer>47</iwManufacturer>\r\n            <iwProduct>48</iwProduct>\r\n            <sManufacturer>Cypress Semiconductor</sManufacturer>\r\n            <sProduct>USBUART</sProduct>\r\n            <sSerialNumber />\r\n            <bDeviceClass>2</bDeviceClass>\r\n            <bDeviceSubClass>0</bDeviceSubClass>\r\n            <bDeviceProtocol>0</bDeviceProtocol>\r\n            <bMaxPacketSize0>0</bMaxPacketSize0>\r\n            <idVendor>1204</idVendor>\r\n            <idProduct>62002</idProduct>\r\n            <bcdDevice>1</bcdDevice>\r\n            <bcdUSB>512</bcdUSB>\r\n            <iManufacturer>1</iManufacturer>\r\n            <iProduct>2</iProduct>\r\n            <iSerialNumber>0</iSerialNumber>\r\n            <bNumConfigurations>1</bNumConfigurations>\r\n            <bMemoryMgmt>0</bMemoryMgmt>\r\n            <bMemoryAlloc>0</bMemoryAlloc>\r\n          </Value>\r\n          <Nodes>\r\n            <DescriptorNode Key="USBDescriptor56">\r\n              <m_value d8p1:type="ConfigDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>CONFIGURATION</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwConfiguration>47</iwConfiguration>\r\n                <sConfiguration>Cypress Semiconductor</sConfiguration>\r\n                <wTotalLength>67</wTotalLength>\r\n                <bNumInterfaces>2</bNumInterfaces>\r\n                <bConfigurationValue>0</bConfigurationValue>\r\n                <iConfiguration>1</iConfiguration>\r\n                <bmAttributes>128</bmAttributes>\r\n                <bMaxPower>50</bMaxPower>\r\n              </m_value>\r\n              <Value d8p1:type="ConfigDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>CONFIGURATION</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwConfiguration>47</iwConfiguration>\r\n                <sConfiguration>Cypress Semiconductor</sConfiguration>\r\n                <wTotalLength>67</wTotalLength>\r\n                <bNumInterfaces>2</bNumInterfaces>\r\n                <bConfigurationValue>0</bConfigurationValue>\r\n                <iConfiguration>1</iConfiguration>\r\n                <bmAttributes>128</bmAttributes>\r\n                <bMaxPower>50</bMaxPower>\r\n              </Value>\r\n              <Nodes>\r\n                <DescriptorNode Key="Interface60">\r\n                  <m_value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName>CDC Interface 1</DisplayName>\r\n                  </m_value>\r\n                  <Value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName>CDC Interface 1</DisplayName>\r\n                  </Value>\r\n                  <Nodes>\r\n                    <DescriptorNode Key="USBDescriptor61">\r\n                      <m_value d12p1:type="CyCommunicationsInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>49</iwInterface>\r\n                        <bInterfaceClass>2</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>0</bInterfaceNumber>\r\n                        <bNumEndpoints>1</bNumEndpoints>\r\n                        <bInterfaceSubClass>2</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>1</bInterfaceProtocol>\r\n                        <iInterface>3</iInterface>\r\n                        <sInterface>CDC Communication Interface</sInterface>\r\n                      </m_value>\r\n                      <Value d12p1:type="CyCommunicationsInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>49</iwInterface>\r\n                        <bInterfaceClass>2</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>0</bInterfaceNumber>\r\n                        <bNumEndpoints>1</bNumEndpoints>\r\n                        <bInterfaceSubClass>2</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>1</bInterfaceProtocol>\r\n                        <iInterface>3</iInterface>\r\n                        <sInterface>CDC Communication Interface</sInterface>\r\n                      </Value>\r\n                      <Nodes>\r\n                        <DescriptorNode Key="USBDescriptor63">\r\n                          <m_value d14p1:type="CyCDCHeaderDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>HEADER</bDescriptorSubtype>\r\n                            <bcdADC>272</bcdADC>\r\n                          </m_value>\r\n                          <Value d14p1:type="CyCDCHeaderDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>HEADER</bDescriptorSubtype>\r\n                            <bcdADC>272</bcdADC>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor64">\r\n                          <m_value d14p1:type="CyCDCAbstractControlMgmtDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>4</bLength>\r\n                            <bDescriptorSubtype>ABSTRACT_CONTROL_MANAGEMENT</bDescriptorSubtype>\r\n                            <bmCapabilities>2</bmCapabilities>\r\n                          </m_value>\r\n                          <Value d14p1:type="CyCDCAbstractControlMgmtDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>4</bLength>\r\n                            <bDescriptorSubtype>ABSTRACT_CONTROL_MANAGEMENT</bDescriptorSubtype>\r\n                            <bmCapabilities>2</bmCapabilities>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor65">\r\n                          <m_value d14p1:type="CyCDCUnionDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>UNION</bDescriptorSubtype>\r\n                            <bSubordinateInterface>AQ==</bSubordinateInterface>\r\n                          </m_value>\r\n                          <Value d14p1:type="CyCDCUnionDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>UNION</bDescriptorSubtype>\r\n                            <bSubordinateInterface>AQ==</bSubordinateInterface>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor66">\r\n                          <m_value d14p1:type="CyCDCCallManagementDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>CALL_MANAGEMENT</bDescriptorSubtype>\r\n                            <bDataInterface>1</bDataInterface>\r\n                          </m_value>\r\n                          <Value d14p1:type="CyCDCCallManagementDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>CALL_MANAGEMENT</bDescriptorSubtype>\r\n                            <bDataInterface>1</bDataInterface>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor67">\r\n                          <m_value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>129</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                          </m_value>\r\n                          <Value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>129</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                      </Nodes>\r\n                    </DescriptorNode>\r\n                  </Nodes>\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="Interface68">\r\n                  <m_value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName>CDC Interface 2</DisplayName>\r\n                  </m_value>\r\n                  <Value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName>CDC Interface 2</DisplayName>\r\n                  </Value>\r\n                  <Nodes>\r\n                    <DescriptorNode Key="USBDescriptor69">\r\n                      <m_value d12p1:type="CyDataInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>50</iwInterface>\r\n                        <bInterfaceClass>10</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>1</bInterfaceNumber>\r\n                        <bNumEndpoints>2</bNumEndpoints>\r\n                        <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                        <iInterface>4</iInterface>\r\n                        <sInterface>CDC Data Interface</sInterface>\r\n                      </m_value>\r\n                      <Value d12p1:type="CyDataInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>50</iwInterface>\r\n                        <bInterfaceClass>10</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>1</bInterfaceNumber>\r\n                        <bNumEndpoints>2</bNumEndpoints>\r\n                        <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                        <iInterface>4</iInterface>\r\n                        <sInterface>CDC Data Interface</sInterface>\r\n                      </Value>\r\n                      <Nodes>\r\n                        <DescriptorNode Key="USBDescriptor71">\r\n                          <m_value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>130</bEndpointAddress>\r\n                            <bmAttributes>2</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </m_value>\r\n                          <Value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>130</bEndpointAddress>\r\n                            <bmAttributes>2</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor72">\r\n                          <m_value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>3</bEndpointAddress>\r\n                            <bmAttributes>2</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </m_value>\r\n                          <Value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>3</bEndpointAddress>\r\n                            <bmAttributes>2</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                      </Nodes>\r\n                    </DescriptorNode>\r\n                  </Nodes>\r\n                </DescriptorNode>\r\n              </Nodes>\r\n            </DescriptorNode>\r\n          </Nodes>\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, DmaChannelPriority=3, DW_Hide_DmaAuto=true, DW_Hide_Usbv2Regs=true, DW_RegSize=8, DW_USB_CHGDET_CTRL=CR0, DW_USB_INTR_CAUSE_HI=CR0, DW_USB_INTR_CAUSE_LO=CR0, DW_USB_INTR_CAUSE_MED=CR0, DW_USB_INTR_LVL_SEL=CR0, DW_USB_INTR_SIE=CR0, DW_USB_INTR_SIE_MASK=CR0, DW_USB_LPM_CTRL=CR0, DW_USB_LPM_STAT=CR0, DW_USB_POWER_CTRL=CR0, EnableBatteryChargDetect=false, EnableCDCApi=true, EnableMidiApi=true, endpointMA=0, endpointMM=0, epDMAautoOptimization=false, extern_cls=false, extern_vbus=false, extern_vnd=false, extJackCount=0, Gen16bitEpAccessApi=true, HandleMscRequests=true, HIDReportDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="HIDReport">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, isrGroupArbiter=0, isrGroupBusReset=2, isrGroupEp0=1, isrGroupEp1=1, isrGroupEp2=1, isrGroupEp3=1, isrGroupEp4=1, isrGroupEp5=1, isrGroupEp6=1, isrGroupEp7=1, isrGroupEp8=1, isrGroupLpm=0, isrGroupSof=2, M0S8USBDSS_BLOCK_COUNT_1=0, max_interfaces_num=2, MidiDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Midi">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, Mode=false, mon_vbus=false, MscDescriptors=, MscLogicalUnitsNum=1, out_sof=false, Pid=F232, powerpad_vbus=false, PRIMITIVE_INSTANCE=USB, ProdactName=, ProdactRevision=, REG_SIZE=reg8, RemoveDmaAutoOpt=true, RemoveVbusPin=true, rm_arb_int=false, rm_dma_1=true, rm_dma_2=true, rm_dma_3=true, rm_dma_4=true, rm_dma_5=true, rm_dma_6=true, rm_dma_7=true, rm_dma_8=true, rm_dp_int=false, rm_ep_isr_0=false, rm_ep_isr_1=false, rm_ep_isr_2=false, rm_ep_isr_3=false, rm_ep_isr_4=true, rm_ep_isr_5=true, rm_ep_isr_6=true, rm_ep_isr_7=true, rm_ep_isr_8=true, rm_lpm_int=true, rm_ord_int=true, rm_sof_int=false, rm_usb_int=false, SofTermEnable=false, StringDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="String">\r\n      <Nodes>\r\n        <DescriptorNode Key="LANGID">\r\n          <m_value d6p1:type="StringZeroDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>4</bLength>\r\n            <wLANGID>1033</wLANGID>\r\n          </m_value>\r\n          <Value d6p1:type="StringZeroDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>4</bLength>\r\n            <wLANGID>1033</wLANGID>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor47">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>44</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Cypress Semiconductor</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>44</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Cypress Semiconductor</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor48">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>USBUART</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>USBUART</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor49">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>56</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>CDC Communication Interface</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>56</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>CDC Communication Interface</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor50">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>38</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>CDC Data Interface</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>38</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>CDC Data Interface</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n    <DescriptorNode Key="SpecialString">\r\n      <Nodes>\r\n        <DescriptorNode Key="Serial">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>2</bLength>\r\n            <snType>SILICON_NUMBER</snType>\r\n            <bString />\r\n            <bUsed>true</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>2</bLength>\r\n            <snType>SILICON_NUMBER</snType>\r\n            <bString />\r\n            <bUsed>true</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="EE">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>MSFT100</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>MSFT100</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, UINT_TYPE=uint8, VbusDetectTermEnable=false, VendorName=, Vid=04B4, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=USBFS_v3_20, CY_CONFIG_TITLE=USBUART_1, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=USBUART_1, CY_INSTANCE_SHORT_NAME=USBUART_1, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=20, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.2, INSTANCE_NAME=USBUART_1, )
module USBFS_v3_20_2 (
    sof,
    vbusdet);
    output      sof;
    input       vbusdet;

    parameter epDMAautoOptimization = 0;

          wire  Net_1914;
          wire  Net_1915;
          wire  Net_1916;
          wire  Net_1917;
          wire  Net_1918;
          wire  Net_1919;
          wire [7:0] dma_request;
          wire  Net_1920;
          wire  Net_1921;
          wire  Net_1922;
          wire [7:0] Net_2039;
          wire  Net_2038;
          wire  Net_2037;
          wire  EPs_1_to_7_dma_complete;
          wire  Net_2036;
          wire  Net_2035;
          wire  Net_2034;
          wire  Net_2033;
          wire  Net_2032;
          wire  Net_2031;
          wire  Net_2030;
          wire  Net_2029;
          wire  Net_2028;
          wire  Net_2027;
          wire  Net_2026;
          wire  Net_2025;
          wire  Net_2024;
          wire [7:0] Net_1940;
          wire  Net_1939;
          wire  Net_1938;
          wire  Net_1937;
          wire  Net_1936;
          wire  Net_1935;
          wire  Net_1934;
          wire  Net_1933;
          wire  Net_1932;
          wire  Net_2047;
          wire  Net_1202;
          wire  dma_terminate;
          wire [7:0] Net_2040;
          wire  Net_1010;
    electrical  Net_1000;
    electrical  Net_597;
          wire  Net_1495;
          wire  Net_1498;
          wire  Net_1559;
          wire  Net_1567;
          wire  Net_1576;
          wire  Net_1579;
          wire  Net_1591;
          wire [7:0] dma_complete;
          wire  Net_1588;
          wire  Net_1876;
          wire [8:0] ep_int;
          wire  Net_1889;
          wire  busClk;
          wire  Net_95;


	cy_isr_v1_0
		#(.int_type(2'b10))
		dp_int
		 (.int_signal(Net_1010));


	wire [0:0] tmpOE__Dm_net;
	wire [0:0] tmpFB_0__Dm_net;
	wire [0:0] tmpIO_0__Dm_net;
	wire [0:0] tmpINTERRUPT_0__Dm_net;
	electrical [0:0] tmpSIOVREF__Dm_net;

	cy_psoc3_pins_v1_10
		#(.id("beca5e2d-f70f-4900-a4db-7eca1ed3126e/8b77a6c4-10a0-4390-971c-672353e2a49c"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("NONCONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(1),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Dm
		 (.oe(tmpOE__Dm_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Dm_net[0:0]}),
		  .analog({Net_597}),
		  .io({tmpIO_0__Dm_net[0:0]}),
		  .siovref(tmpSIOVREF__Dm_net),
		  .interrupt({tmpINTERRUPT_0__Dm_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Dm_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Dp_net;
	wire [0:0] tmpFB_0__Dp_net;
	wire [0:0] tmpIO_0__Dp_net;
	electrical [0:0] tmpSIOVREF__Dp_net;

	cy_psoc3_pins_v1_10
		#(.id("beca5e2d-f70f-4900-a4db-7eca1ed3126e/618a72fc-5ddd-4df5-958f-a3d55102db42"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b10),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Dp
		 (.oe(tmpOE__Dp_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Dp_net[0:0]}),
		  .analog({Net_1000}),
		  .io({tmpIO_0__Dp_net[0:0]}),
		  .siovref(tmpSIOVREF__Dp_net),
		  .interrupt({Net_1010}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Dp_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    cy_psoc3_usb_v1_0 USB (
        .dp(Net_1000),
        .dm(Net_597),
        .sof_int(sof),
        .arb_int(Net_1889),
        .usb_int(Net_1876),
        .ept_int(ep_int[8:0]),
        .ord_int(Net_95),
        .dma_req(dma_request[7:0]),
        .dma_termin(dma_terminate));


	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_3
		 (.int_signal(ep_int[3]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_2
		 (.int_signal(ep_int[2]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_1
		 (.int_signal(ep_int[1]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_0
		 (.int_signal(ep_int[0]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		bus_reset
		 (.int_signal(Net_1876));



	cy_isr_v1_0
		#(.int_type(2'b10))
		arb_int
		 (.int_signal(Net_1889));



	cy_isr_v1_0
		#(.int_type(2'b10))
		sof_int
		 (.int_signal(sof));


	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign dma_complete[0] = Net_1922;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_1922));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign dma_complete[1] = Net_1921;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_1921));

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign dma_complete[2] = Net_1920;

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_1920));

	// VirtualMux_4 (cy_virtualmux_v1_0)
	assign dma_complete[3] = Net_1919;

    ZeroTerminal ZeroTerminal_4 (
        .z(Net_1919));

	// VirtualMux_5 (cy_virtualmux_v1_0)
	assign dma_complete[4] = Net_1918;

	// VirtualMux_6 (cy_virtualmux_v1_0)
	assign dma_complete[5] = Net_1917;

    ZeroTerminal ZeroTerminal_5 (
        .z(Net_1918));

    ZeroTerminal ZeroTerminal_6 (
        .z(Net_1917));

	// VirtualMux_7 (cy_virtualmux_v1_0)
	assign dma_complete[6] = Net_1916;

	// VirtualMux_8 (cy_virtualmux_v1_0)
	assign dma_complete[7] = Net_1915;

    ZeroTerminal ZeroTerminal_7 (
        .z(Net_1916));

    ZeroTerminal ZeroTerminal_8 (
        .z(Net_1915));



endmodule

// Timer_v2_80(CaptureAlternatingFall=false, CaptureAlternatingRise=false, CaptureCount=2, CaptureCounterEnabled=false, CaptureInputEnabled=false, CaptureMode=0, CONTROL3=1, ControlRegRemoved=0, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, DeviceFamily=PSoC5, EnableMode=0, FF16=true, FF8=false, FixedFunction=true, FixedFunctionUsed=1, HWCaptureCounterEnabled=false, InterruptOnCapture=false, InterruptOnFIFOFull=false, InterruptOnTC=true, IntOnCapture=0, IntOnFIFOFull=0, IntOnTC=1, NumberOfCaptures=1, param45=1, Period=9, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, Resolution=16, RstStatusReplacementString=rstSts, RunMode=0, SiliconRevision=0, SoftwareCaptureModeEnabled=false, SoftwareTriggerModeEnabled=false, TriggerInputEnabled=false, TriggerMode=0, UDB16=false, UDB24=false, UDB32=false, UDB8=false, UDBControlReg=false, UsesHWEnable=0, VerilogSectionReplacementString=sT16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Timer_v2_80, CY_CONFIG_TITLE=Timer_2, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=Timer_2, CY_INSTANCE_SHORT_NAME=Timer_2, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=80, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.2, INSTANCE_NAME=Timer_2, )
module Timer_v2_80_3 (
    reset,
    interrupt,
    enable,
    trigger,
    capture,
    capture_out,
    tc,
    clock);
    input       reset;
    output      interrupt;
    input       enable;
    input       trigger;
    input       capture;
    output      capture_out;
    output      tc;
    input       clock;

    parameter CaptureCount = 2;
    parameter CaptureCounterEnabled = 0;
    parameter DeviceFamily = "PSoC5";
    parameter InterruptOnCapture = 0;
    parameter InterruptOnTC = 1;
    parameter Resolution = 16;
    parameter SiliconRevision = "0";

          wire  Net_261;
          wire  Net_260;
          wire  Net_266;
          wire  Net_102;
          wire  Net_55;
          wire  Net_57;
          wire  Net_53;
          wire  Net_51;

    cy_psoc3_timer_v1_0 TimerHW (
        .timer_reset(reset),
        .capture(capture),
        .enable(Net_266),
        .kill(Net_260),
        .clock(clock),
        .tc(Net_51),
        .compare(Net_261),
        .interrupt(Net_57));

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_260));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign interrupt = Net_57;

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign tc = Net_51;

    OneTerminal OneTerminal_1 (
        .o(Net_102));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_266 = Net_102;



endmodule

// Component: ADC_AMUX_v2_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\ADC_AMUX_v2_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\ADC_AMUX_v2_0\ADC_AMUX_v2_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\ADC_AMUX_v2_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\ADC_AMUX_v2_0\ADC_AMUX_v2_0.v"
`endif

// Component: cy_analog_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`endif

// Component: cy_vref_v1_70
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70\cy_vref_v1_70.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_vref_v1_70\cy_vref_v1_70.v"
`endif

// Component: or_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`endif

// Component: cy_constant_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`endif

// ADC_SAR_v3_10(ADC_Clock=0, ADC_Clock_Frequency=11368422, ADC_Input_Range=0, ADC_Power=0, ADC_Reference=1, ADC_Resolution=12, ADC_SampleMode=2, Enable_next_out=true, Ref_Voltage=1.024, Ref_Voltage_mV=1024, rm_int=true, Sample_Precharge=6, Sample_Rate=0, Sample_Rate_def=631579, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=ADC_SAR_v3_10, CY_CONFIG_TITLE=SAR, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=ADC_SAR_Seq_1:SAR, CY_INSTANCE_SHORT_NAME=SAR, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=10, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.2, INSTANCE_NAME=ADC_SAR_Seq_1_SAR, )
module ADC_SAR_v3_10_4 (
    vplus,
    vminus,
    soc,
    eoc,
    aclk,
    vdac_ref,
    eos);
    inout       vplus;
    electrical  vplus;
    inout       vminus;
    electrical  vminus;
    input       soc;
    output      eoc;
    input       aclk;
    inout       vdac_ref;
    electrical  vdac_ref;
    output      eos;


          wire [3:0] vp_ctl;
          wire [3:0] vn_ctl;
    electrical  Net_255;
    electrical  Net_267;
    electrical  Net_210;
    electrical  Net_209;
          wire [11:0] Net_207;
          wire  Net_252;
          wire  Net_205;
          wire  Net_381;
    electrical  Net_368;
    electrical  Net_235;
    electrical  Net_216;
    electrical  Net_233;
          wire  Net_385;
          wire  Net_383;
          wire  Net_221;
    electrical  Net_248;
    electrical  Net_257;
    electrical  Net_149;
    electrical  Net_126;
    electrical  Net_215;
          wire  Net_188;

	// cy_analog_virtualmux_3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_3_connect(Net_248, Net_233);
	defparam cy_analog_virtualmux_3_connect.sig_width = 1;

    ZeroTerminal ZeroTerminal_1 (
        .z(vp_ctl[0]));

    ZeroTerminal ZeroTerminal_2 (
        .z(vp_ctl[2]));

    ZeroTerminal ZeroTerminal_3 (
        .z(vn_ctl[1]));

    ZeroTerminal ZeroTerminal_4 (
        .z(vn_ctl[3]));

    ZeroTerminal ZeroTerminal_5 (
        .z(vp_ctl[1]));

    ZeroTerminal ZeroTerminal_6 (
        .z(vp_ctl[3]));

    ZeroTerminal ZeroTerminal_7 (
        .z(vn_ctl[0]));

    ZeroTerminal ZeroTerminal_8 (
        .z(vn_ctl[2]));

	// Clock_VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_188 = aclk;

    cy_psoc5_sar_v2_0 ADC_SAR (
        .clock(Net_188),
        .sof_udb(soc),
        .clk_udb(),
        .vp_ctl_udb(vp_ctl[3:0]),
        .vn_ctl_udb(vn_ctl[3:0]),
        .vplus(vplus),
        .vminus(Net_126),
        .irq(Net_252),
        .data_out(Net_207[11:0]),
        .eof_udb(eoc),
        .pump_clock(Net_188),
        .ext_pin(Net_215),
        .vrefhi_out(Net_257),
        .vref(Net_248),
        .next_out(eos));

	// cy_analog_virtualmux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_2_connect(Net_215, Net_210);
	defparam cy_analog_virtualmux_2_connect.sig_width = 1;

	wire [0:0] tmpOE__Bypass_net;
	wire [0:0] tmpFB_0__Bypass_net;
	wire [0:0] tmpIO_0__Bypass_net;
	wire [0:0] tmpINTERRUPT_0__Bypass_net;
	electrical [0:0] tmpSIOVREF__Bypass_net;

	cy_psoc3_pins_v1_10
		#(.id("c458cb36-01ca-42a9-a0e4-430009b09051/dea208d9-07b0-438b-a5e0-ac5d207f2658/16a808f6-2e13-45b9-bce0-b001c8655113"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Bypass
		 (.oe(tmpOE__Bypass_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Bypass_net[0:0]}),
		  .analog({Net_210}),
		  .io({tmpIO_0__Bypass_net[0:0]}),
		  .siovref(tmpSIOVREF__Bypass_net),
		  .interrupt({tmpINTERRUPT_0__Bypass_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Bypass_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	// cy_analog_virtualmux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_1_connect(Net_126, Net_149);
	defparam cy_analog_virtualmux_1_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 noconnect (
        .noconnect(Net_209));


	cy_vref_v1_0
		#(.guid("89B398AD-36A8-4627-9212-707F2986319E"),
		  .name("1.024V"),
		  .autoenable(1))
		vRef_1024
		 (.vout(Net_233));


	// cy_analog_virtualmux_4 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_4_connect(Net_257, Net_149);
	defparam cy_analog_virtualmux_4_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_255));

    cy_analog_noconnect_v1_0 noconnect_1 (
        .noconnect(Net_368));


    assign Net_221 = Net_383 | Net_385;

    assign Net_383 = 1'h0;



endmodule

// Component: bADC_SAR_SEQ_v2_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\bADC_SAR_SEQ_v2_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\bADC_SAR_SEQ_v2_0\bADC_SAR_SEQ_v2_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\bADC_SAR_SEQ_v2_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\bADC_SAR_SEQ_v2_0\bADC_SAR_SEQ_v2_0.v"
`endif

// Component: cy_sync_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_sync_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_sync_v1_0\cy_sync_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_sync_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_sync_v1_0\cy_sync_v1_0.v"
`endif

// ADC_SAR_SEQ_v2_10(ADC_Clock_Frequency=7163964, Adjust=0, ClockSource=0, InputRange=0, NumChannels=6, Reference=1, Resolution=12, rm_int=false, SampleMode=2, SamplePrecharge=6, SampleRate=397998, SampleRate_def=631579, VrefValue=1.024, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=ADC_SAR_SEQ_v2_10, CY_CONFIG_TITLE=ADC_SAR_Seq_1, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=ADC_SAR_Seq_1, CY_INSTANCE_SHORT_NAME=ADC_SAR_Seq_1, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=10, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.2, INSTANCE_NAME=ADC_SAR_Seq_1, )
module ADC_SAR_SEQ_v2_10_5 (
    soc,
    aclk,
    sdone,
    eoc,
    AIN_10,
    AIN1,
    AIN_20,
    AIN_21,
    AIN_30,
    AIN_31,
    AIN3,
    AIN_40,
    AIN_41,
    AIN_50,
    AIN_51,
    AIN5,
    AIN_60,
    AIN_61,
    AIN_70,
    AIN_71,
    AIN7,
    AIN_80,
    AIN_81,
    AIN_90,
    AIN_91,
    AIN9,
    AIN_100,
    AIN_101,
    AIN_110,
    AIN_111,
    AIN11,
    AIN_120,
    AIN_121,
    AIN_130,
    AIN_131,
    AIN13,
    AIN_140,
    AIN_141,
    AIN_150,
    AIN_151,
    AIN15,
    AIN_160,
    AIN_161,
    AIN_170,
    AIN_171,
    AIN17,
    AIN_180,
    AIN_181,
    AIN_190,
    AIN_191,
    AIN19,
    AIN_200,
    AIN_201,
    AIN_210,
    AIN_211,
    AIN21,
    AIN_220,
    AIN_221,
    AIN_230,
    AIN_231,
    AIN23,
    AIN_240,
    AIN_241,
    AIN_250,
    AIN_251,
    AIN25,
    AIN_260,
    AIN_261,
    AIN_270,
    AIN_271,
    AIN27,
    AIN_280,
    AIN_281,
    AIN_290,
    AIN_291,
    AIN29,
    AIN_300,
    AIN_301,
    AIN_310,
    AIN_311,
    AIN31,
    AIN_320,
    AIN_321,
    AIN49,
    AIN50,
    AIN51,
    AIN52,
    AIN53,
    AIN54,
    AIN55,
    AIN56,
    AIN57,
    AIN58,
    AIN59,
    AIN60,
    AIN61,
    AIN62,
    AIN63,
    AIN64,
    vdac_ref);
    input       soc;
    input       aclk;
    output      sdone;
    output      eoc;
    inout       AIN_10;
    electrical  AIN_10;
    inout       AIN1;
    electrical  AIN1;
    inout       AIN_20;
    electrical  AIN_20;
    inout       AIN_21;
    electrical  AIN_21;
    inout       AIN_30;
    electrical  AIN_30;
    inout       AIN_31;
    electrical  AIN_31;
    inout       AIN3;
    electrical  AIN3;
    inout       AIN_40;
    electrical  AIN_40;
    inout       AIN_41;
    electrical  AIN_41;
    inout       AIN_50;
    electrical  AIN_50;
    inout       AIN_51;
    electrical  AIN_51;
    inout       AIN5;
    electrical  AIN5;
    inout       AIN_60;
    electrical  AIN_60;
    inout       AIN_61;
    electrical  AIN_61;
    inout       AIN_70;
    electrical  AIN_70;
    inout       AIN_71;
    electrical  AIN_71;
    inout       AIN7;
    electrical  AIN7;
    inout       AIN_80;
    electrical  AIN_80;
    inout       AIN_81;
    electrical  AIN_81;
    inout       AIN_90;
    electrical  AIN_90;
    inout       AIN_91;
    electrical  AIN_91;
    inout       AIN9;
    electrical  AIN9;
    inout       AIN_100;
    electrical  AIN_100;
    inout       AIN_101;
    electrical  AIN_101;
    inout       AIN_110;
    electrical  AIN_110;
    inout       AIN_111;
    electrical  AIN_111;
    inout       AIN11;
    electrical  AIN11;
    inout       AIN_120;
    electrical  AIN_120;
    inout       AIN_121;
    electrical  AIN_121;
    inout       AIN_130;
    electrical  AIN_130;
    inout       AIN_131;
    electrical  AIN_131;
    inout       AIN13;
    electrical  AIN13;
    inout       AIN_140;
    electrical  AIN_140;
    inout       AIN_141;
    electrical  AIN_141;
    inout       AIN_150;
    electrical  AIN_150;
    inout       AIN_151;
    electrical  AIN_151;
    inout       AIN15;
    electrical  AIN15;
    inout       AIN_160;
    electrical  AIN_160;
    inout       AIN_161;
    electrical  AIN_161;
    inout       AIN_170;
    electrical  AIN_170;
    inout       AIN_171;
    electrical  AIN_171;
    inout       AIN17;
    electrical  AIN17;
    inout       AIN_180;
    electrical  AIN_180;
    inout       AIN_181;
    electrical  AIN_181;
    inout       AIN_190;
    electrical  AIN_190;
    inout       AIN_191;
    electrical  AIN_191;
    inout       AIN19;
    electrical  AIN19;
    inout       AIN_200;
    electrical  AIN_200;
    inout       AIN_201;
    electrical  AIN_201;
    inout       AIN_210;
    electrical  AIN_210;
    inout       AIN_211;
    electrical  AIN_211;
    inout       AIN21;
    electrical  AIN21;
    inout       AIN_220;
    electrical  AIN_220;
    inout       AIN_221;
    electrical  AIN_221;
    inout       AIN_230;
    electrical  AIN_230;
    inout       AIN_231;
    electrical  AIN_231;
    inout       AIN23;
    electrical  AIN23;
    inout       AIN_240;
    electrical  AIN_240;
    inout       AIN_241;
    electrical  AIN_241;
    inout       AIN_250;
    electrical  AIN_250;
    inout       AIN_251;
    electrical  AIN_251;
    inout       AIN25;
    electrical  AIN25;
    inout       AIN_260;
    electrical  AIN_260;
    inout       AIN_261;
    electrical  AIN_261;
    inout       AIN_270;
    electrical  AIN_270;
    inout       AIN_271;
    electrical  AIN_271;
    inout       AIN27;
    electrical  AIN27;
    inout       AIN_280;
    electrical  AIN_280;
    inout       AIN_281;
    electrical  AIN_281;
    inout       AIN_290;
    electrical  AIN_290;
    inout       AIN_291;
    electrical  AIN_291;
    inout       AIN29;
    electrical  AIN29;
    inout       AIN_300;
    electrical  AIN_300;
    inout       AIN_301;
    electrical  AIN_301;
    inout       AIN_310;
    electrical  AIN_310;
    inout       AIN_311;
    electrical  AIN_311;
    inout       AIN31;
    electrical  AIN31;
    inout       AIN_320;
    electrical  AIN_320;
    inout       AIN_321;
    electrical  AIN_321;
    inout       AIN49;
    electrical  AIN49;
    inout       AIN50;
    electrical  AIN50;
    inout       AIN51;
    electrical  AIN51;
    inout       AIN52;
    electrical  AIN52;
    inout       AIN53;
    electrical  AIN53;
    inout       AIN54;
    electrical  AIN54;
    inout       AIN55;
    electrical  AIN55;
    inout       AIN56;
    electrical  AIN56;
    inout       AIN57;
    electrical  AIN57;
    inout       AIN58;
    electrical  AIN58;
    inout       AIN59;
    electrical  AIN59;
    inout       AIN60;
    electrical  AIN60;
    inout       AIN61;
    electrical  AIN61;
    inout       AIN62;
    electrical  AIN62;
    inout       AIN63;
    electrical  AIN63;
    inout       AIN64;
    electrical  AIN64;
    inout       vdac_ref;
    electrical  vdac_ref;


    electrical  V_single;
    electrical  V_diff1;
          wire [5:0] ch_addr;
    electrical  V_diff0;
          wire  nrq;
          wire  clock;
          wire  soc_out;
          wire  Net_3905;
          wire  Net_3867;
          wire  Net_3716;
          wire  Net_3823;
          wire  Net_3822;
          wire  Net_3821;
    electrical  Net_3934;
    electrical  Net_3939;
          wire  Net_3710;
          wire  Net_3935;
          wire  Net_3830;
          wire  Net_3698;
          wire  Net_3874;
    electrical  Net_2803;

    // -- AMuxHw AMuxHw_2 start -- ***
    
    // -- AMuxHw Decoder Start--
    
    reg [63:0] AMuxHw_2_Decoder_one_hot;
    reg [5:0] AMuxHw_2_Decoder_old_id;
    wire  AMuxHw_2_Decoder_is_active;
    wire  AMuxHw_2_Decoder_enable;
    
    assign AMuxHw_2_Decoder_enable = 1'b1;
    
    genvar AMuxHw_2_Decoder_i;
    
    assign AMuxHw_2_Decoder_is_active = (ch_addr[5:0] == AMuxHw_2_Decoder_old_id) && AMuxHw_2_Decoder_enable;
    
    always @(posedge clock)
    begin
        AMuxHw_2_Decoder_old_id = ch_addr[5:0];
    end
    
    generate
        for (AMuxHw_2_Decoder_i = 0; AMuxHw_2_Decoder_i < 64; AMuxHw_2_Decoder_i = AMuxHw_2_Decoder_i + 1 )
        begin : AMuxHw_2_OutBit
            always @(posedge clock)
            begin
                AMuxHw_2_Decoder_one_hot[AMuxHw_2_Decoder_i] <= (AMuxHw_2_Decoder_old_id == AMuxHw_2_Decoder_i) && AMuxHw_2_Decoder_is_active;
            end
        end
    endgenerate
    
    // -- AMuxHw Decoder End--
    
    // -- AMuxHw Primitive A --
    
    cy_psoc3_amux_v1_0 #(
        .muxin_width(64),
        .hw_control(1),
        .one_active(1),
        .init_mux_sel(64'h0),
        .api_type(2'b10))
        AMuxHw_2(
        .muxin({
            AIN64,
            AIN63,
            AIN62,
            AIN61,
            AIN60,
            AIN59,
            AIN58,
            AIN57,
            AIN56,
            AIN55,
            AIN54,
            AIN53,
            AIN52,
            AIN51,
            AIN50,
            AIN49,
            AIN_321,
            AIN31,
            AIN_310,
            AIN_301,
            AIN29,
            AIN_290,
            AIN_281,
            AIN27,
            AIN_270,
            AIN_261,
            AIN25,
            AIN_250,
            AIN_241,
            AIN23,
            AIN_230,
            AIN_221,
            AIN21,
            AIN_210,
            AIN_201,
            AIN19,
            AIN_190,
            AIN_181,
            AIN17,
            AIN_170,
            AIN_161,
            AIN15,
            AIN_150,
            AIN_141,
            AIN13,
            AIN_130,
            AIN_121,
            AIN11,
            AIN_110,
            AIN_101,
            AIN9,
            AIN_90,
            AIN_81,
            AIN7,
            AIN_70,
            AIN_61,
            AIN5,
            AIN_50,
            AIN_41,
            AIN3,
            AIN_30,
            AIN_21,
            AIN1,
            AIN_10
            }),
        .hw_ctrl_en(AMuxHw_2_Decoder_one_hot[63:0]),
        .vout(V_single)
        );
    
    // -- AMuxHw AMuxHw_2 end -- ***

    ADC_SAR_v3_10_4 SAR (
        .vplus(Net_2803),
        .vminus(Net_3939),
        .soc(soc_out),
        .eoc(Net_3830),
        .aclk(clock),
        .vdac_ref(Net_3934),
        .eos(sdone));

	// cy_analog_virtualmux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_1_connect(Net_2803, V_single);
	defparam cy_analog_virtualmux_1_connect.sig_width = 1;

    bADC_SAR_SEQ_v2_0 bSAR_SEQ (
        .clock(clock),
        .ch_addr(ch_addr[5:0]),
        .eoc(eoc),
        .eos(sdone),
        .nrq(Net_3935),
        .bus_clock(Net_3710),
        .soc(soc),
        .soc_out(soc_out),
        .sar_eoc(Net_3830));
    defparam bSAR_SEQ.NumChannels = 6;
    defparam bSAR_SEQ.SampleMode = 2;

	// VirtualMux_4 (cy_virtualmux_v1_0)
	assign clock = Net_3874;


	cy_clock_v1_0
		#(.id("c458cb36-01ca-42a9-a0e4-430009b09051/9725d809-97e7-404e-b621-dfdbe78d0ca9"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("139587524.448755"),
		  .is_direct(0),
		  .is_digital(1))
		IntClock
		 (.clock_out(Net_3874));



	cy_dma_v1_0
		#(.drq_type(2'b00))
		TempBuf
		 (.drq(Net_3830),
		  .trq(1'b0),
		  .nrq(Net_3698));



	cy_dma_v1_0
		#(.drq_type(2'b00))
		FinalBuf
		 (.drq(Net_3698),
		  .trq(1'b0),
		  .nrq(nrq));



	cy_clock_v1_0
		#(.id("c458cb36-01ca-42a9-a0e4-430009b09051/3d23b625-9a71-4c05-baf4-2f904356009b"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		BusClock
		 (.clock_out(Net_3710));



    assign Net_3905 = Net_3867 | Net_3874;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_3867));


	cy_isr_v1_0
		#(.int_type(2'b10))
		IRQ
		 (.int_signal(eoc));


    cy_sync_v1_0 Sync (
        .s_in(nrq),
        .clock(Net_3710),
        .s_out(Net_3935));
    defparam Sync.SignalWidth = 1;



endmodule

// Component: B_Counter_v3_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Counter_v3_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Counter_v3_0\B_Counter_v3_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Counter_v3_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Counter_v3_0\B_Counter_v3_0.v"
`endif

// Counter_v3_0(CaptureMode=0, CaptureModeSoftware=0, ClockMode=1, CompareMode=0, CompareModeSoftware=0, CompareStatusEdgeSense=true, CompareValue=32768, CONTROL3=0, ControlRegRemoved=0, CyGetRegReplacementString=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, InitCounterValue=32768, InterruptOnCapture=false, InterruptOnCompare=false, InterruptOnOverUnderFlow=false, InterruptOnTC=false, Period=32768, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, ReloadOnCapture=false, ReloadOnCompare=false, ReloadOnOverUnder=true, ReloadOnReset=true, Resolution=16, RunMode=0, UDB16=true, UDB24=false, UDB32=false, UDB8=false, UDBControlReg=true, UseInterrupt=true, VerilogSectionReplacementString=sC16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Counter_v3_0, CY_CONFIG_TITLE=Cnt16, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=QuadDec_2:Cnt16, CY_INSTANCE_SHORT_NAME=Cnt16, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.2, INSTANCE_NAME=QuadDec_2_Cnt16, )
module Counter_v3_0_6 (
    reset,
    tc,
    comp,
    clock,
    interrupt,
    enable,
    capture,
    upCnt,
    downCnt,
    up_ndown,
    count);
    input       reset;
    output      tc;
    output      comp;
    input       clock;
    output      interrupt;
    input       enable;
    input       capture;
    input       upCnt;
    input       downCnt;
    input       up_ndown;
    input       count;

    parameter CaptureMode = 0;
    parameter ClockMode = 1;
    parameter CompareMode = 0;
    parameter CompareStatusEdgeSense = 1;
    parameter EnableMode = 0;
    parameter ReloadOnCapture = 0;
    parameter ReloadOnCompare = 0;
    parameter ReloadOnOverUnder = 1;
    parameter ReloadOnReset = 1;
    parameter Resolution = 16;
    parameter RunMode = 0;
    parameter UseInterrupt = 1;

          wire  Net_47;
          wire  Net_102;
          wire  Net_95;
          wire  Net_82;
          wire  Net_91;
          wire  Net_89;
          wire  Net_49;
          wire  Net_48;
          wire  Net_42;
          wire  Net_43;

	// int_vm (cy_virtualmux_v1_0)
	assign interrupt = Net_43;

	// TC_vm (cy_virtualmux_v1_0)
	assign tc = Net_49;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_82));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_89 = up_ndown;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_95));

	// vmEnableMode (cy_virtualmux_v1_0)
	assign Net_91 = enable;

    OneTerminal OneTerminal_1 (
        .o(Net_102));

    B_Counter_v3_0 CounterUDB (
        .reset(reset),
        .tc_out(Net_49),
        .cmp_out(comp),
        .clock(clock),
        .irq_out(Net_43),
        .up_ndown(Net_89),
        .upcnt(upCnt),
        .dwncnt(downCnt),
        .enable(enable),
        .capture(capture),
        .count(count));
    defparam CounterUDB.CaptureMode = 0;
    defparam CounterUDB.ClockMode = 1;
    defparam CounterUDB.CompareMode = 0;
    defparam CounterUDB.CompareStatusEdgeSense = 1;
    defparam CounterUDB.EnableMode = 0;
    defparam CounterUDB.ReloadOnCapture = 0;
    defparam CounterUDB.ReloadOnCompare = 0;
    defparam CounterUDB.ReloadOnOverUnder = 1;
    defparam CounterUDB.ReloadOnReset = 1;
    defparam CounterUDB.Resolution = 16;
    defparam CounterUDB.RunMode = 0;
    defparam CounterUDB.UseInterrupt = 1;



endmodule

// Component: bQuadDec_v3_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\bQuadDec_v3_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\bQuadDec_v3_0\bQuadDec_v3_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\bQuadDec_v3_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\bQuadDec_v3_0\bQuadDec_v3_0.v"
`endif

// Component: not_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0\not_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0\not_v1_0.v"
`endif

// Component: and_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0\and_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0\and_v1_0.v"
`endif

// QuadDec_v3_0(Counter8bit=false, CounterResolution=4, CounterSize=16, CounterSizeReplacementString=int16, CounterSizeReplacementStringUnsigned=uint16, TypeCastReplacementString=int32, UsingGlitchFiltering=true, UsingIndexInput=false, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=QuadDec_v3_0, CY_CONFIG_TITLE=QuadDec_2, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=QuadDec_2, CY_INSTANCE_SHORT_NAME=QuadDec_2, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.2, INSTANCE_NAME=QuadDec_2, )
module QuadDec_v3_0_7 (
    quad_A,
    quad_B,
    index,
    clock,
    interrupt);
    input       quad_A;
    input       quad_B;
    input       index;
    input       clock;
    output      interrupt;

    parameter CounterResolution = 4;
    parameter UsingGlitchFiltering = 1;
    parameter UsingIndexInput = 0;

          wire  Net_1126;
          wire  Net_1125;
          wire  Net_1124;
          wire  Net_1241;
          wire  Net_1123;
          wire  Net_1132;
          wire  Net_1131;
          wire  Net_1130;
          wire  Net_1243;
          wire  Net_1129;
          wire  Net_1287;
          wire  Net_1272;
          wire  Net_1290;
          wire  Net_1269;
          wire  Net_1264;
          wire  Net_1275;
          wire  Net_1276;
          wire  Net_1203;
          wire  Net_1260;
          wire  Net_1232;
          wire  Net_1229;
          wire  Net_1251;
          wire  Net_611;
          wire  Net_1151;
          wire  Net_1248;
          wire  Net_530;

    Counter_v3_0_6 Cnt16 (
        .reset(Net_1260),
        .tc(Net_1275),
        .comp(Net_1264),
        .clock(clock),
        .interrupt(Net_1129),
        .enable(1'b0),
        .capture(1'b0),
        .upCnt(1'b0),
        .downCnt(1'b0),
        .up_ndown(Net_1251),
        .count(Net_1203));
    defparam Cnt16.CaptureMode = 0;
    defparam Cnt16.ClockMode = 1;
    defparam Cnt16.CompareMode = 0;
    defparam Cnt16.CompareStatusEdgeSense = 1;
    defparam Cnt16.EnableMode = 0;
    defparam Cnt16.ReloadOnCapture = 0;
    defparam Cnt16.ReloadOnCompare = 0;
    defparam Cnt16.ReloadOnOverUnder = 1;
    defparam Cnt16.ReloadOnReset = 1;
    defparam Cnt16.Resolution = 16;
    defparam Cnt16.RunMode = 0;
    defparam Cnt16.UseInterrupt = 1;

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign Net_1290 = Net_1275;

    bQuadDec_v3_0 bQuadDec (
        .quad_A(quad_A),
        .quad_B(quad_B),
        .index(Net_1232),
        .clock(clock),
        .dir(Net_1251),
        .reset(Net_1260),
        .enable(Net_1203),
        .overflow(Net_530),
        .underflow(Net_611),
        .interrupt(interrupt));
    defparam bQuadDec.CounterResolution = 4;
    defparam bQuadDec.UsingGlitchFiltering = 1;
    defparam bQuadDec.UsingIndexInput = 0;


    assign Net_1151 = ~Net_1251;


    assign Net_530 = Net_1248 & Net_1251;


    assign Net_611 = Net_1248 & Net_1151;

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_1232 = Net_1229;

    OneTerminal OneTerminal_1 (
        .o(Net_1229));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign Net_1272 = Net_1264;


    assign Net_1287 = ~Net_1272;


    assign Net_1248 = Net_1287 & Net_1290;



endmodule

// top
module top ;

          wire  Net_227;
          wire  Net_225;
    electrical  Net_205;
    electrical  Net_204;
    electrical  Net_203;
    electrical  Net_202;
    electrical  Net_201;
    electrical  Net_200;
    electrical  Net_199;
    electrical  Net_198;
    electrical  Net_197;
    electrical  Net_196;
    electrical  Net_195;
    electrical  Net_194;
    electrical  Net_193;
    electrical  Net_192;
    electrical  Net_191;
    electrical  Net_190;
    electrical  Net_189;
    electrical  Net_188;
    electrical  Net_187;
    electrical  Net_186;
    electrical  Net_185;
    electrical  Net_184;
    electrical  Net_183;
    electrical  Net_182;
    electrical  Net_181;
    electrical  Net_180;
    electrical  Net_179;
    electrical  Net_178;
    electrical  Net_177;
    electrical  Net_176;
    electrical  Net_175;
    electrical  Net_174;
    electrical  Net_173;
    electrical  Net_172;
    electrical  Net_171;
    electrical  Net_170;
    electrical  Net_169;
    electrical  Net_168;
    electrical  Net_167;
    electrical  Net_166;
    electrical  Net_165;
    electrical  Net_164;
    electrical  Net_163;
    electrical  Net_162;
    electrical  Net_161;
    electrical  Net_160;
    electrical  Net_159;
    electrical  Net_158;
    electrical  Net_157;
    electrical  Net_156;
    electrical  Net_155;
    electrical  Net_154;
    electrical  Net_153;
    electrical  Net_152;
    electrical  Net_151;
    electrical  Net_150;
    electrical  Net_149;
    electrical  Net_148;
    electrical  Net_147;
    electrical  Net_146;
    electrical  Net_145;
    electrical  Net_144;
    electrical  Net_143;
    electrical  Net_142;
    electrical  Net_141;
    electrical  Net_140;
    electrical  Net_139;
    electrical  Net_138;
    electrical  Net_137;
    electrical  Net_136;
    electrical  Net_135;
    electrical  Net_134;
    electrical  Net_133;
    electrical  Net_132;
    electrical  Net_131;
    electrical  Net_130;
    electrical  Net_129;
    electrical  Net_128;
    electrical  Net_127;
    electrical  Net_126;
    electrical  Net_125;
    electrical  Net_124;
    electrical  Net_123;
    electrical  Net_122;
    electrical  Net_121;
    electrical  Net_120;
    electrical  Net_119;
    electrical  Net_117;
    electrical  Net_115;
    electrical  Net_112;
          wire  Net_108;
          wire  Net_107;
          wire  Net_336;
          wire  Net_335;
          wire  Net_334;
          wire  Net_333;
          wire  Net_332;
          wire  Net_1661;
          wire  Net_1660;
          wire  Net_758;
          wire  Net_757;
          wire  Net_1659;
          wire  Net_1658;
          wire  Net_1657;
          wire  Net_1656;
          wire  Net_1655;
          wire  Net_1654;
          wire  Net_1653;
          wire  Net_1652;
          wire  Net_1651;
          wire  Net_1650;
          wire  Net_1649;
          wire  Net_1648;
          wire  Net_1647;
          wire  Net_1646;
          wire  Net_1645;
          wire  Net_1644;
          wire  Net_1643;
          wire  Net_1642;
          wire  Net_1641;
          wire  Net_1640;
          wire  Net_1639;
          wire  Net_1638;
          wire  Net_1637;
    electrical  Net_118;
    electrical  Net_116;
    electrical  Net_114;
    electrical  Net_113;
    electrical  Net_111;
    electrical  Net_110;
          wire  Net_1286;
          wire  Net_10;
          wire  Net_106;
          wire  Net_1076;
          wire  Net_1048;
          wire  Net_963;
          wire  Net_933;
          wire  Net_90;
          wire  Net_89;
          wire  Net_220;
          wire  Net_96;
          wire  Net_72;

    PWM_v3_30_0 PWM_leftmotor (
        .reset(1'b0),
        .clock(Net_72),
        .tc(Net_1638),
        .pwm1(Net_933),
        .pwm2(Net_963),
        .interrupt(Net_1639),
        .capture(1'b0),
        .kill(1'b1),
        .enable(1'b1),
        .trigger(1'b0),
        .cmp_sel(1'b0),
        .pwm(Net_1645),
        .ph1(Net_1646),
        .ph2(Net_1647));
    defparam PWM_leftmotor.Resolution = 8;

    PWM_v3_30_1 PWM_rightmotor (
        .reset(1'b0),
        .clock(Net_72),
        .tc(Net_1649),
        .pwm1(Net_1048),
        .pwm2(Net_1076),
        .interrupt(Net_1650),
        .capture(1'b0),
        .kill(1'b1),
        .enable(1'b1),
        .trigger(1'b0),
        .cmp_sel(1'b0),
        .pwm(Net_1656),
        .ph1(Net_1657),
        .ph2(Net_1658));
    defparam PWM_rightmotor.Resolution = 8;


	cy_clock_v1_0
		#(.id("30ee65af-23cb-47d5-a15d-224311188925"),
		  .source_clock_id("39D5E4C2-EBFC-44ab-AE3D-19F9BBFD674D"),
		  .divisor(0),
		  .period("1000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_PWM
		 (.clock_out(Net_72));


    USBFS_v3_20_2 USBUART_1 (
        .sof(Net_757),
        .vbusdet(1'b0));
    defparam USBUART_1.epDMAautoOptimization = 0;


	cy_clock_v1_0
		#(.id("103d7608-d0cd-4c72-a5ab-ba20cdfcf95b"),
		  .source_clock_id("CEF43CFB-0213-49b9-B980-2FFAB81C5B47"),
		  .divisor(0),
		  .period("83333333.3333333"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_QENC
		 (.clock_out(Net_96));



	cy_clock_v1_0
		#(.id("2dbb57a7-4894-401d-aa64-148df43c21cb"),
		  .source_clock_id("CEF43CFB-0213-49b9-B980-2FFAB81C5B47"),
		  .divisor(0),
		  .period("100000000000"),
		  .is_direct(0),
		  .is_digital(1))
		timer_clock_2
		 (.clock_out(Net_10));


    ZeroTerminal ZeroTerminal_1 (
        .z(Net_1286));

    Timer_v2_80_3 Timer_2 (
        .reset(Net_1286),
        .interrupt(Net_332),
        .enable(1'b1),
        .trigger(1'b1),
        .capture(1'b0),
        .capture_out(Net_336),
        .tc(Net_106),
        .clock(Net_10));
    defparam Timer_2.CaptureCount = 2;
    defparam Timer_2.CaptureCounterEnabled = 0;
    defparam Timer_2.DeviceFamily = "PSoC5";
    defparam Timer_2.InterruptOnCapture = 0;
    defparam Timer_2.InterruptOnTC = 1;
    defparam Timer_2.Resolution = 16;
    defparam Timer_2.SiliconRevision = "0";

    ADC_SAR_SEQ_v2_10_5 ADC_SAR_Seq_1 (
        .soc(Net_106),
        .aclk(1'b0),
        .sdone(Net_108),
        .eoc(Net_220),
        .AIN_10(Net_110),
        .AIN1(Net_111),
        .AIN_20(Net_112),
        .AIN_21(Net_113),
        .AIN_30(Net_114),
        .AIN_31(Net_115),
        .AIN3(Net_116),
        .AIN_40(Net_117),
        .AIN_41(Net_118),
        .AIN_50(Net_119),
        .AIN_51(Net_120),
        .AIN5(Net_121),
        .AIN_60(Net_122),
        .AIN_61(Net_123),
        .AIN_70(Net_124),
        .AIN_71(Net_125),
        .AIN7(Net_126),
        .AIN_80(Net_127),
        .AIN_81(Net_128),
        .AIN_90(Net_129),
        .AIN_91(Net_130),
        .AIN9(Net_131),
        .AIN_100(Net_132),
        .AIN_101(Net_133),
        .AIN_110(Net_134),
        .AIN_111(Net_135),
        .AIN11(Net_136),
        .AIN_120(Net_137),
        .AIN_121(Net_138),
        .AIN_130(Net_139),
        .AIN_131(Net_140),
        .AIN13(Net_141),
        .AIN_140(Net_142),
        .AIN_141(Net_143),
        .AIN_150(Net_144),
        .AIN_151(Net_145),
        .AIN15(Net_146),
        .AIN_160(Net_147),
        .AIN_161(Net_148),
        .AIN_170(Net_149),
        .AIN_171(Net_150),
        .AIN17(Net_151),
        .AIN_180(Net_152),
        .AIN_181(Net_153),
        .AIN_190(Net_154),
        .AIN_191(Net_155),
        .AIN19(Net_156),
        .AIN_200(Net_157),
        .AIN_201(Net_158),
        .AIN_210(Net_159),
        .AIN_211(Net_160),
        .AIN21(Net_161),
        .AIN_220(Net_162),
        .AIN_221(Net_163),
        .AIN_230(Net_164),
        .AIN_231(Net_165),
        .AIN23(Net_166),
        .AIN_240(Net_167),
        .AIN_241(Net_168),
        .AIN_250(Net_169),
        .AIN_251(Net_170),
        .AIN25(Net_171),
        .AIN_260(Net_172),
        .AIN_261(Net_173),
        .AIN_270(Net_174),
        .AIN_271(Net_175),
        .AIN27(Net_176),
        .AIN_280(Net_177),
        .AIN_281(Net_178),
        .AIN_290(Net_179),
        .AIN_291(Net_180),
        .AIN29(Net_181),
        .AIN_300(Net_182),
        .AIN_301(Net_183),
        .AIN_310(Net_184),
        .AIN_311(Net_185),
        .AIN31(Net_186),
        .AIN_320(Net_187),
        .AIN_321(Net_188),
        .AIN49(Net_189),
        .AIN50(Net_190),
        .AIN51(Net_191),
        .AIN52(Net_192),
        .AIN53(Net_193),
        .AIN54(Net_194),
        .AIN55(Net_195),
        .AIN56(Net_196),
        .AIN57(Net_197),
        .AIN58(Net_198),
        .AIN59(Net_199),
        .AIN60(Net_200),
        .AIN61(Net_201),
        .AIN62(Net_202),
        .AIN63(Net_203),
        .AIN64(Net_204),
        .vdac_ref(Net_205));


	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_EOC_3
		 (.int_signal(Net_220));


	wire [0:0] tmpOE__ENCO1_net;
	wire [0:0] tmpIO_0__ENCO1_net;
	wire [0:0] tmpINTERRUPT_0__ENCO1_net;
	electrical [0:0] tmpSIOVREF__ENCO1_net;

	cy_psoc3_pins_v1_10
		#(.id("8d318d8b-cf7b-4b6b-b02c-ab1c5c49d0ba"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		ENCO1
		 (.oe(tmpOE__ENCO1_net),
		  .y({1'b0}),
		  .fb({Net_89}),
		  .io({tmpIO_0__ENCO1_net[0:0]}),
		  .siovref(tmpSIOVREF__ENCO1_net),
		  .interrupt({tmpINTERRUPT_0__ENCO1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__ENCO1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__ENCO2_net;
	wire [0:0] tmpIO_0__ENCO2_net;
	wire [0:0] tmpINTERRUPT_0__ENCO2_net;
	electrical [0:0] tmpSIOVREF__ENCO2_net;

	cy_psoc3_pins_v1_10
		#(.id("2b88a660-26fe-4fff-beb1-864170d12087"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		ENCO2
		 (.oe(tmpOE__ENCO2_net),
		  .y({1'b0}),
		  .fb({Net_90}),
		  .io({tmpIO_0__ENCO2_net[0:0]}),
		  .siovref(tmpSIOVREF__ENCO2_net),
		  .interrupt({tmpINTERRUPT_0__ENCO2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__ENCO2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    QuadDec_v3_0_7 QuadDec_2 (
        .quad_A(Net_89),
        .quad_B(Net_90),
        .index(1'b0),
        .clock(Net_96),
        .interrupt(Net_227));
    defparam QuadDec_2.CounterResolution = 4;
    defparam QuadDec_2.UsingGlitchFiltering = 1;
    defparam QuadDec_2.UsingIndexInput = 0;

	wire [0:0] tmpOE__Pin_3_net;
	wire [0:0] tmpFB_0__Pin_3_net;
	wire [0:0] tmpIO_0__Pin_3_net;
	wire [0:0] tmpINTERRUPT_0__Pin_3_net;
	electrical [0:0] tmpSIOVREF__Pin_3_net;

	cy_psoc3_pins_v1_10
		#(.id("b161ba86-e63c-4659-93dc-9ba39e8492ae"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_3
		 (.oe(tmpOE__Pin_3_net),
		  .y({Net_933}),
		  .fb({tmpFB_0__Pin_3_net[0:0]}),
		  .io({tmpIO_0__Pin_3_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_3_net),
		  .interrupt({tmpINTERRUPT_0__Pin_3_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_3_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_4_net;
	wire [0:0] tmpFB_0__Pin_4_net;
	wire [0:0] tmpIO_0__Pin_4_net;
	wire [0:0] tmpINTERRUPT_0__Pin_4_net;
	electrical [0:0] tmpSIOVREF__Pin_4_net;

	cy_psoc3_pins_v1_10
		#(.id("ab2b1a50-583b-4bdb-9464-d2869e8ef2c8"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_4
		 (.oe(tmpOE__Pin_4_net),
		  .y({Net_963}),
		  .fb({tmpFB_0__Pin_4_net[0:0]}),
		  .io({tmpIO_0__Pin_4_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_4_net),
		  .interrupt({tmpINTERRUPT_0__Pin_4_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_4_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_1_net;
	wire [0:0] tmpFB_0__Pin_1_net;
	wire [0:0] tmpIO_0__Pin_1_net;
	wire [0:0] tmpINTERRUPT_0__Pin_1_net;
	electrical [0:0] tmpSIOVREF__Pin_1_net;

	cy_psoc3_pins_v1_10
		#(.id("e851a3b9-efb8-48be-bbb8-b303b216c393"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_1
		 (.oe(tmpOE__Pin_1_net),
		  .y({Net_1048}),
		  .fb({tmpFB_0__Pin_1_net[0:0]}),
		  .io({tmpIO_0__Pin_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_1_net),
		  .interrupt({tmpINTERRUPT_0__Pin_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_2_net;
	wire [0:0] tmpFB_0__Pin_2_net;
	wire [0:0] tmpIO_0__Pin_2_net;
	wire [0:0] tmpINTERRUPT_0__Pin_2_net;
	electrical [0:0] tmpSIOVREF__Pin_2_net;

	cy_psoc3_pins_v1_10
		#(.id("30ddbc24-4b5b-4e2e-ad61-4826fd9ced85"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_2
		 (.oe(tmpOE__Pin_2_net),
		  .y({Net_1076}),
		  .fb({tmpFB_0__Pin_2_net[0:0]}),
		  .io({tmpIO_0__Pin_2_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_2_net),
		  .interrupt({tmpINTERRUPT_0__Pin_2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_Q2_net;
	wire [0:0] tmpFB_0__Pin_Q2_net;
	wire [0:0] tmpIO_0__Pin_Q2_net;
	wire [0:0] tmpINTERRUPT_0__Pin_Q2_net;
	electrical [0:0] tmpSIOVREF__Pin_Q2_net;

	cy_psoc3_pins_v1_10
		#(.id("0839440e-898a-46cc-a095-4cc05c13b12f"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_Q2
		 (.oe(tmpOE__Pin_Q2_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_Q2_net[0:0]}),
		  .analog({Net_111}),
		  .io({tmpIO_0__Pin_Q2_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_Q2_net),
		  .interrupt({tmpINTERRUPT_0__Pin_Q2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_Q2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_Q3_net;
	wire [0:0] tmpFB_0__Pin_Q3_net;
	wire [0:0] tmpIO_0__Pin_Q3_net;
	wire [0:0] tmpINTERRUPT_0__Pin_Q3_net;
	electrical [0:0] tmpSIOVREF__Pin_Q3_net;

	cy_psoc3_pins_v1_10
		#(.id("8af32a8b-9483-4c65-8fab-f87554e72574"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_Q3
		 (.oe(tmpOE__Pin_Q3_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_Q3_net[0:0]}),
		  .analog({Net_113}),
		  .io({tmpIO_0__Pin_Q3_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_Q3_net),
		  .interrupt({tmpINTERRUPT_0__Pin_Q3_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_Q3_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_Q4_net;
	wire [0:0] tmpFB_0__Pin_Q4_net;
	wire [0:0] tmpIO_0__Pin_Q4_net;
	wire [0:0] tmpINTERRUPT_0__Pin_Q4_net;
	electrical [0:0] tmpSIOVREF__Pin_Q4_net;

	cy_psoc3_pins_v1_10
		#(.id("0a083f02-fa5a-4700-a59f-1465a6637856"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_Q4
		 (.oe(tmpOE__Pin_Q4_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_Q4_net[0:0]}),
		  .analog({Net_114}),
		  .io({tmpIO_0__Pin_Q4_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_Q4_net),
		  .interrupt({tmpINTERRUPT_0__Pin_Q4_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_Q4_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_Q5_net;
	wire [0:0] tmpFB_0__Pin_Q5_net;
	wire [0:0] tmpIO_0__Pin_Q5_net;
	wire [0:0] tmpINTERRUPT_0__Pin_Q5_net;
	electrical [0:0] tmpSIOVREF__Pin_Q5_net;

	cy_psoc3_pins_v1_10
		#(.id("6a348d6f-e218-444f-ba27-f5eef6f323b8"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_Q5
		 (.oe(tmpOE__Pin_Q5_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_Q5_net[0:0]}),
		  .analog({Net_116}),
		  .io({tmpIO_0__Pin_Q5_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_Q5_net),
		  .interrupt({tmpINTERRUPT_0__Pin_Q5_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_Q5_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_Q6_net;
	wire [0:0] tmpFB_0__Pin_Q6_net;
	wire [0:0] tmpIO_0__Pin_Q6_net;
	wire [0:0] tmpINTERRUPT_0__Pin_Q6_net;
	electrical [0:0] tmpSIOVREF__Pin_Q6_net;

	cy_psoc3_pins_v1_10
		#(.id("1052159e-6dff-447e-b7bf-7d4475d90d24"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_Q6
		 (.oe(tmpOE__Pin_Q6_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_Q6_net[0:0]}),
		  .analog({Net_118}),
		  .io({tmpIO_0__Pin_Q6_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_Q6_net),
		  .interrupt({tmpINTERRUPT_0__Pin_Q6_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_Q6_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Pin_5_net;
	wire [0:0] tmpFB_0__Pin_5_net;
	wire [0:0] tmpIO_0__Pin_5_net;
	wire [0:0] tmpINTERRUPT_0__Pin_5_net;
	electrical [0:0] tmpSIOVREF__Pin_5_net;

	cy_psoc3_pins_v1_10
		#(.id("d7ba8bd4-7d69-4add-97c4-5310096044b6"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_5
		 (.oe(tmpOE__Pin_5_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Pin_5_net[0:0]}),
		  .analog({Net_110}),
		  .io({tmpIO_0__Pin_5_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_5_net),
		  .interrupt({tmpINTERRUPT_0__Pin_5_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_5_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__LED_1_net;
	wire [0:0] tmpFB_0__LED_1_net;
	wire [0:0] tmpIO_0__LED_1_net;
	wire [0:0] tmpINTERRUPT_0__LED_1_net;
	electrical [0:0] tmpSIOVREF__LED_1_net;

	cy_psoc3_pins_v1_10
		#(.id("6b886dbb-a1dd-4d7f-a155-0ff4e680b378"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		LED_1
		 (.oe(tmpOE__LED_1_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__LED_1_net[0:0]}),
		  .io({tmpIO_0__LED_1_net[0:0]}),
		  .siovref(tmpSIOVREF__LED_1_net),
		  .interrupt({tmpINTERRUPT_0__LED_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__LED_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__LED_2_net;
	wire [0:0] tmpFB_0__LED_2_net;
	wire [0:0] tmpIO_0__LED_2_net;
	wire [0:0] tmpINTERRUPT_0__LED_2_net;
	electrical [0:0] tmpSIOVREF__LED_2_net;

	cy_psoc3_pins_v1_10
		#(.id("c192f4ae-255e-4ae4-a836-10808f066079"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		LED_2
		 (.oe(tmpOE__LED_2_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__LED_2_net[0:0]}),
		  .io({tmpIO_0__LED_2_net[0:0]}),
		  .siovref(tmpSIOVREF__LED_2_net),
		  .interrupt({tmpINTERRUPT_0__LED_2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__LED_2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__LED_3_net;
	wire [0:0] tmpFB_0__LED_3_net;
	wire [0:0] tmpIO_0__LED_3_net;
	wire [0:0] tmpINTERRUPT_0__LED_3_net;
	electrical [0:0] tmpSIOVREF__LED_3_net;

	cy_psoc3_pins_v1_10
		#(.id("097d5510-6fd2-48e7-8716-bc5b38381b0f"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		LED_3
		 (.oe(tmpOE__LED_3_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__LED_3_net[0:0]}),
		  .io({tmpIO_0__LED_3_net[0:0]}),
		  .siovref(tmpSIOVREF__LED_3_net),
		  .interrupt({tmpINTERRUPT_0__LED_3_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__LED_3_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Timer_net;
	wire [0:0] tmpFB_0__Timer_net;
	wire [0:0] tmpIO_0__Timer_net;
	wire [0:0] tmpINTERRUPT_0__Timer_net;
	electrical [0:0] tmpSIOVREF__Timer_net;

	cy_psoc3_pins_v1_10
		#(.id("523698b6-dbb4-4ff5-a544-a3cfe50b2125"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Timer
		 (.oe(tmpOE__Timer_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Timer_net[0:0]}),
		  .io({tmpIO_0__Timer_net[0:0]}),
		  .siovref(tmpSIOVREF__Timer_net),
		  .interrupt({tmpINTERRUPT_0__Timer_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Timer_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};



endmodule

