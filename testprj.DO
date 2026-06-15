# ACCEL PCB V17.01.22 Auto-Generated DO File
# Fri Apr 03 17:33:08 2020
#
bestsave on $\best.w
status_file $\progress.sts
#
#do components.do
#
unit mil
#
grid wire 1.000000 
#grid via 1.000000 CV_08_30
grid via 1.000000
#
define (pair (nets MDI0P MDI0M))
define (pair (nets MDI1P MDI1M))
define (pair (nets MDI2P MDI2M))
define (pair (nets MDI3P MDI3M))
circuit class ETHPAIRS (match_net_length on (tolerance 6.0))
rule class ETHPAIRS (length_gap 7.9) (length_amplitude 7.9) (width 7.8) (clearance 7.9)
#
define (pair (nets USB0_DP USB0_DM))
define (pair (nets USB3_DP USB3_DM))
define (pair (nets USB0_DP_1 USB0_DM_1))
define (pair (nets USB1_DP_1 USB1_DM_1))
#
define (pair (nets USB0_DP_I USB0_DM_I))
define (pair (nets USB1_DP_I USB1_DM_I))
define (pair (nets USB2_DP_I USB2_DM_I))
#
define (pair (nets HUB1_DP1_I HUB1_DM1_I))
define (pair (nets HUB1_DP2_I HUB1_DM2_I))
#
define (pair (nets HUB1_DP4_I HUB1_DM4_I))
define (pair (nets HUB1_DP4 HUB1_DM4))
#
define (pair (nets LVDS_V0M LVDS_V0P))
define (pair (nets LVDS_V1M LVDS_V1P))
define (pair (nets LVDS_V2M LVDS_V2P))
define (pair (nets LVDS_V3M LVDS_V3P))
define (pair (nets LVDS_CKM LVDS_CKP))
#circuit class LVDSDATA (match_net_length on (tolerance 6.0))
#rule class LVDSDATA (length_gap 7.9) (length_amplitude 20.0)
#
define (pair (nets HDMI_TD0+ HDMI_TD0-))
define (pair (nets HDMI_TD1+ HDMI_TD1-))
define (pair (nets HDMI_TD2+ HDMI_TD2-))
define (pair (nets HDMI_TD3+ HDMI_TD3-))
define (pair (nets HDMI_TDCK+ HDMI_TDCK-))
circuit class HDMIDATA (match_net_length on (tolerance 6.0))
rule class HDMIDATA (length_gap 7.9) (length_amplitude 20.0)
#
define (pair (nets TXDACP TXDACN))
define (pair (nets ADC_AIN_N ADC_AIN_P))
define (pair (nets ADCRF_N ADCRF_P))
define (pair (nets ADC_CLK_P ADC_CLK_N))
#
circuit class ETHTX (match_net_length on (tolerance 6.0))
rule class ETHTX (length_gap 7.9) (length_amplitude 20.0)
#
circuit class ETHRX (match_net_length on (tolerance 6.0))
rule class ETHRX (length_gap 7.9) (length_amplitude 20.0)
#
#circuit class DACDATA (match_net_length on (tolerance 6.0))
#rule class DACDATA (length_gap 7.9) (length_amplitude 20.0)
#
#select class ADCDATA
  circuit class ADCDATA (match_net_length on (tolerance 6.0))
  rule class ADCDATA (length_gap 7.9) (length_amplitude 20.0)
#  smart_route
#  unselect all nets
#  forget class ADCDATA
#  miter 5 (pin 5.0) (slant 5.0) (bend 5.0) (tjunction 5.0) (style diagonal)
#
#
#select class USB0
#  circuit class USB0 (match_net_length on (tolerance 100.0))
#  rule class USB0 (length_gap 15.0) (length_amplitude 15.0)
#  smart_route
#  unselect all nets
#  forget class USB0
#  miter 5 (pin 5.0) (slant 5.0) (bend 5.0) (tjunction 5.0) (style diagonal)
#
#select class USB1
#  circuit class USB1 (match_net_length on (tolerance 100.0))
#  rule class USB1 (length_gap 15.0) (length_amplitude 15.0)
#  smart_route
#  unselect all nets
#  forget class USB1
#  miter 5 (pin 5.0) (slant 5.0) (bend 5.0) (tjunction 5.0) (style diagonal)
#
#
bus diagonal
set diagonal_mode on
#
bus diagonal
route 50
clean 4
route 50 16
clean 4
filter 5
route 100 16
clean 2
delete conflicts
#	
write wire $\testprj.w
spread 
miter
write wire $\testprj.m
#
write session $\testprj.ses
report status $\testprj.sts
