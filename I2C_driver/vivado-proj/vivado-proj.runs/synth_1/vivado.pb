
z
Command: %s
53*	vivadotcl2I
5synth_design -top servo_driver -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 304.645 ; gain = 98.105
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2 
servo_driver2default:default2i
SD:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/src/servo_driver.v2default:default2
22default:default8@Z8-638h px? 
i
%s
*synth2Q
=	Parameter state_set_mode_sleep bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter state_setf bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter state_set_mode_run bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter state_update bound to: 3 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter state_send_on_h bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter state_send_on_l bound to: 5 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter state_send_off_h bound to: 6 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter state_send_off_l bound to: 7 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter state_wait bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter mode_reg_addr bound to: 8'b00000000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter mode_sleep_data bound to: 8'b00010000 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter mode_run_data bound to: 8'b00000000 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter frequency_reg_addr bound to: 8'b11111110 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter frequency_data bound to: 8'b01111001 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter pwm0_on_h_data bound to: 8'b00000000 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter pwm0_on_l_data bound to: 8'b00000000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter pwm0_off_h_data bound to: 8'b00000000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter pwm0_off_l_data bound to: 8'b11011000 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter pwm0_on_l_addr bound to: 8'b00001010 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter pwm0_on_h_addr bound to: 8'b00001011 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter pwm0_off_l_addr bound to: 8'b00001100 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter pwm0_off_h_addr bound to: 8'b00001101 
2default:defaulth p
x
? 
?
synthesizing module '%s'638*oasys2 
time_divider2default:default2i
SD:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/src/time_divider.v2default:default2
12default:default8@Z8-638h px? 
`
%s
*synth2H
4	Parameter ratio bound to: 1000000 - type: integer 
2default:defaulth p
x
? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	o_clk_reg2default:default2 
time_divider2default:default2i
SD:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/src/time_divider.v2default:default2
242default:default8@Z8-5788h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
time_divider2default:default2
12default:default2
12default:default2i
SD:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/src/time_divider.v2default:default2
12default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2$
I2C_frame_output2default:default2m
WD:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/src/I2C_frame_output.v2default:default2
32default:default8@Z8-638h px? 
b
%s
*synth2J
6	Parameter slave_addr bound to: 16'b0000000001000000 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter state_idle bound to: 30 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter state_start bound to: 29 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter state_slave_h bound to: 28 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter state_slave_l bound to: 22 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter state_rw1 bound to: 21 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter state_ack1 bound to: 20 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter state_reg_adr_h bound to: 19 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter state_reg_adr_l bound to: 12 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter state_ack2 bound to: 11 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter state_data_h bound to: 10 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter state_data_l bound to: 3 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter state_ack bound to: 2 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter state_stop bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter state_waitforstart bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2$
rst_complete_reg2default:default2$
I2C_frame_output2default:default2m
WD:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/src/I2C_frame_output.v2default:default2
452default:default8@Z8-5788h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2$
I2C_frame_output2default:default2
22default:default2
12default:default2m
WD:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/src/I2C_frame_output.v2default:default2
32default:default8@Z8-256h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2 
gen_data_reg2default:default2 
servo_driver2default:default2i
SD:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/src/servo_driver.v2default:default2
652default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2)
gen_register_addr_reg2default:default2 
servo_driver2default:default2i
SD:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/src/servo_driver.v2default:default2
642default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
next_state_reg2default:default2 
servo_driver2default:default2i
SD:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/src/servo_driver.v2default:default2
842default:default8@Z8-5788h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
servo_driver2default:default2
32default:default2
12default:default2i
SD:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/src/servo_driver.v2default:default2
22default:default8@Z8-256h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:11 . Memory (MB): peak = 341.137 ; gain = 134.598
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:11 . Memory (MB): peak = 341.137 ; gain = 134.598
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2?
?D:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/vivado-proj/vivado-proj.srcs/constrs_1/new/servo_driver_top.xdc2default:defaultZ20-179h px? 
?
No nets matched '%s'.
507*	planAhead2 
i_rst_n_IBUF2default:default2?
?D:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/vivado-proj/vivado-proj.srcs/constrs_1/new/servo_driver_top.xdc2default:default2
92default:default8@Z12-507h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?D:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/vivado-proj/vivado-proj.srcs/constrs_1/new/servo_driver_top.xdc2default:default2
92default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2?
?D:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/vivado-proj/vivado-proj.srcs/constrs_1/new/servo_driver_top.xdc2default:defaultZ20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
?D:/wza/vivado_program_files/project_for_digital_logic/I2C_driver/vivado-proj/vivado-proj.srcs/constrs_1/new/servo_driver_top.xdc2default:default22
.Xil/servo_driver_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
641.2892default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:20 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
A
%s
*synth2)
Module servo_driver 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
A
%s
*synth2)
Module time_divider 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
E
%s
*synth2-
Module I2C_frame_output 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Start Parallel Synthesis Optimization  : Time (s): cpu = 00:00:15 ; elapsed = 00:00:20 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
N
%s
*synth26
"Start Cross Boundary Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:21 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Parallel Reinference  : Time (s): cpu = 00:00:15 ; elapsed = 00:00:21 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,
Start Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2%
next_state_reg[3]2default:default2
FDE2default:default2#
gen_data_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2,
gen_register_addr_reg[7]2default:default2
FDE2default:default2,
gen_register_addr_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2,
gen_register_addr_reg[6]2default:default2
FDE2default:default2,
gen_register_addr_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2,
gen_register_addr_reg[5]2default:default2
FDE2default:default2,
gen_register_addr_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
gen_data_reg[6]2default:default2
FDE2default:default2#
gen_data_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
gen_data_reg[5]2default:default2
FDE2default:default2#
gen_data_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
gen_data_reg[2]2default:default2
FDE2default:default2#
gen_data_reg[1]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2%
\gen_data_reg[1] 2default:defaultZ8-3333h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%controller_clk_generator/count_reg[0]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%controller_clk_generator/count_reg[1]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%controller_clk_generator/count_reg[2]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%controller_clk_generator/count_reg[3]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%controller_clk_generator/count_reg[4]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%controller_clk_generator/count_reg[5]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%controller_clk_generator/count_reg[6]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%controller_clk_generator/count_reg[7]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%controller_clk_generator/count_reg[8]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%controller_clk_generator/count_reg[9]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[10]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[11]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[12]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[13]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[14]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[15]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[16]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[17]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[18]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[19]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[20]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[21]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[22]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[23]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[24]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[25]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[26]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[27]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[28]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[29]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[30]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&controller_clk_generator/count_reg[31]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
gen_register_addr_reg[7]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
gen_register_addr_reg[6]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
gen_register_addr_reg[5]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
gen_data_reg[6]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
gen_data_reg[5]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
gen_data_reg[1]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
next_state_reg[3]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
gen_data_reg[2]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2,
gen_register_addr_reg[4]2default:default2
FDE2default:default2#
gen_data_reg[0]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2,
\I2C_driver/o_SCL_reg_P 2default:defaultZ8-3333h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
I2C_driver/o_SCL_reg_P2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
gen_register_addr_reg[4]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*i_9/I2C_driver/clk_generator/count_reg[22]2default:default2
FDC2default:default2>
*i_9/I2C_driver/clk_generator/count_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*i_9/I2C_driver/clk_generator/count_reg[27]2default:default2
FDC2default:default2>
*i_9/I2C_driver/clk_generator/count_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*i_9/I2C_driver/clk_generator/count_reg[20]2default:default2
FDC2default:default2>
*i_9/I2C_driver/clk_generator/count_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*i_9/I2C_driver/clk_generator/count_reg[24]2default:default2
FDC2default:default2>
*i_9/I2C_driver/clk_generator/count_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*i_9/I2C_driver/clk_generator/count_reg[30]2default:default2
FDC2default:default2>
*i_9/I2C_driver/clk_generator/count_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*i_9/I2C_driver/clk_generator/count_reg[29]2default:default2
FDC2default:default2>
*i_9/I2C_driver/clk_generator/count_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*i_9/I2C_driver/clk_generator/count_reg[23]2default:default2
FDC2default:default2>
*i_9/I2C_driver/clk_generator/count_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*i_9/I2C_driver/clk_generator/count_reg[21]2default:default2
FDC2default:default2>
*i_9/I2C_driver/clk_generator/count_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*i_9/I2C_driver/clk_generator/count_reg[26]2default:default2
FDC2default:default2>
*i_9/I2C_driver/clk_generator/count_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*i_9/I2C_driver/clk_generator/count_reg[28]2default:default2
FDC2default:default2>
*i_9/I2C_driver/clk_generator/count_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*i_9/I2C_driver/clk_generator/count_reg[25]2default:default2
FDC2default:default2>
*i_9/I2C_driver/clk_generator/count_reg[31]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,i_9/\I2C_driver/clk_generator/count_reg[31] 2default:defaultZ8-3333h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys23
I2C_driver/current_state_reg[5]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&I2C_driver/clk_generator/count_reg[20]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&I2C_driver/clk_generator/count_reg[21]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&I2C_driver/clk_generator/count_reg[22]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&I2C_driver/clk_generator/count_reg[23]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&I2C_driver/clk_generator/count_reg[24]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&I2C_driver/clk_generator/count_reg[25]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&I2C_driver/clk_generator/count_reg[26]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&I2C_driver/clk_generator/count_reg[27]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&I2C_driver/clk_generator/count_reg[28]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&I2C_driver/clk_generator/count_reg[29]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&I2C_driver/clk_generator/count_reg[30]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&I2C_driver/clk_generator/count_reg[31]2default:default2 
servo_driver2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
zFinished Area Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:21 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Area Optimization  : Time (s): cpu = 00:00:15 ; elapsed = 00:00:21 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Technology Mapping Optimization  : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Synthesis Optimization  : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |     5|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     2|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    12|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |     9|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |     3|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |    30|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |    10|
2default:defaulth px? 
D
%s*synth2,
|9     |FDCE   |    33|
2default:defaulth px? 
D
%s*synth2,
|10    |FDPE   |     2|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   |    12|
2default:defaulth px? 
D
%s*synth2,
|12    |LDC    |     3|
2default:defaulth px? 
D
%s*synth2,
|13    |IBUF   |     2|
2default:defaulth px? 
D
%s*synth2,
|14    |OBUF   |     2|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
a
%s
*synth2I
5+------+------------------+-----------------+------+
2default:defaulth p
x
? 
a
%s
*synth2I
5|      |Instance          |Module           |Cells |
2default:defaulth p
x
? 
a
%s
*synth2I
5+------+------------------+-----------------+------+
2default:defaulth p
x
? 
a
%s
*synth2I
5|1     |top               |                 |   127|
2default:defaulth p
x
? 
a
%s
*synth2I
5|2     |  I2C_driver      |I2C_frame_output |    91|
2default:defaulth p
x
? 
a
%s
*synth2I
5|3     |    clk_generator |time_divider     |    56|
2default:defaulth p
x
? 
a
%s
*synth2I
5+------+------------------+-----------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 55 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:20 . Memory (MB): peak = 641.289 ; gain = 114.102
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:26 ; elapsed = 00:00:32 . Memory (MB): peak = 641.289 ; gain = 434.750
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
102default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
22default:default2
62default:defaultZ31-138h px? 
?
!Unisim Transformation Summary:
%s111*project2?
t  A total of 3 instances were transformed.
  LDC => LDCE: 2 instances
  LDC => LDCE (inverted pins: G): 1 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
402default:default2
612default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:252default:default2
00:00:292default:default2
641.2892default:default2
417.3952default:defaultZ17-268h px? 
?
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.016 . Memory (MB): peak = 641.289 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Jan 03 21:59:53 20222default:defaultZ17-206h px? 


End Record