
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:012default:default2
00:00:052default:default2
224.1052default:default2
17.5202default:defaultZ17-268h px? 

Command: %s
53*	vivadotcl2N
:synth_design -top vga_pannel_design -part xc7a100tcsg324-12default:defaultZ4-113h px? 
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
)%s is already implicitly declared earlier992*oasys2
locked2default:default2q
[D:/wza/vivado_program_files/project_for_digital_logic/VGA_test/vga_pannel/src/system_ctrl.v2default:default2
712default:default8@Z8-992h px? 
?
%s*synth2?
sStarting Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:27 . Memory (MB): peak = 315.035 ; gain = 108.449
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2%
vga_pannel_design2default:default2w
aD:/wza/vivado_program_files/project_for_digital_logic/VGA_test/vga_pannel/src/vga_pannel_design.v2default:default2
102default:default8@Z8-638h px? 
`
%s
*synth2H
4	Parameter DUTY_CYCLE bound to: 50 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter DIVIDE_DATA bound to: 10 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter MULTIPLY_DATA bound to: 13 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter H_DISP bound to: 11'b10000000000 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter H_FRONT bound to: 11'b00000011000 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter H_SYNC bound to: 11'b00010001000 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter H_BACK bound to: 11'b00010100000 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter H_TOTAL bound to: 11'b10101000000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter V_DISP bound to: 10'b1100000000 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter V_FRONT bound to: 10'b0000000011 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter V_SYNC bound to: 10'b0000000110 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter V_BACK bound to: 10'b0000011101 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter V_TOTAL bound to: 10'b1100100110 
2default:defaulth p
x
? 
?
synthesizing module '%s'638*oasys2
system_ctrl2default:default2q
[D:/wza/vivado_program_files/project_for_digital_logic/VGA_test/vga_pannel/src/system_ctrl.v2default:default2
112default:default8@Z8-638h px? 
`
%s
*synth2H
4	Parameter DUTY_CYCLE bound to: 50 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter DIVIDE_DATA bound to: 10 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter MULTIPLY_DATA bound to: 13 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'638*oasys2 
system_delay2default:default2q
[D:/wza/vivado_program_files/project_for_digital_logic/VGA_test/vga_pannel/src/system_ctrl.v2default:default2
982default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
system_delay2default:default2
12default:default2
12default:default2q
[D:/wza/vivado_program_files/project_for_digital_logic/VGA_test/vga_pannel/src/system_ctrl.v2default:default2
982default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
pll_vga2default:default2m
WD:/wza/vivado_program_files/project_for_digital_logic/VGA_test/vga_pannel/src/pll_vga.v2default:default2
392default:default8@Z8-638h px? 
`
%s
*synth2H
4	Parameter DUTY_CYCLE bound to: 50 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter DIVIDE_DATA bound to: 10 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter MULTIPLY_DATA bound to: 13 - type: integer 
2default:defaulth p
x
? 
?
module '%s' not found439*oasys2
altpll2default:default2m
WD:/wza/vivado_program_files/project_for_digital_logic/VGA_test/vga_pannel/src/pll_vga.v2default:default2
722default:default8@Z8-439h px? 
d
%s
*synth2L
8	Parameter clk0_divide_by bound to: 10 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter clk0_duty_cycle bound to: 50 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter clk0_multiply_by bound to: 13 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter clk0_phase_shift bound to: 0 - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter compensate_clock bound to: CLK0 - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter gate_lock_signal bound to: NO - type: string 
2default:defaulth p
x
? 

%s
*synth2g
S	Parameter inclk0_input_frequency bound to: 32'sb00000000000000000100111000100000 
2default:defaulth p
x
? 
s
%s
*synth2[
G	Parameter intended_device_family bound to: Cyclone II - type: string 
2default:defaulth p
x
? 
?
%s
*synth2h
T	Parameter invalid_lock_multiplier bound to: 32'sb00000000000000000000000000000101 
2default:defaulth p
x
? 
t
%s
*synth2\
H	Parameter lpm_hint bound to: CBX_MODULE_PREFIX=pll_vga - type: string 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter lpm_type bound to: altpll - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter operation_mode bound to: NORMAL - type: string 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter port_activeclock bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter port_areset bound to: PORT_USED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_clkbad0 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_clkbad1 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_clkloss bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter port_clkswitch bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter port_configupdate bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter port_fbin bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter port_inclk0 bound to: PORT_USED - type: string 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter port_inclk1 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter port_locked bound to: PORT_USED - type: string 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter port_pfdena bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
u
%s
*synth2]
I	Parameter port_phasecounterselect bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter port_phasedone bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter port_phasestep bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter port_phaseupdown bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter port_pllena bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter port_scanaclr bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_scanclk bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter port_scanclkena bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter port_scandata bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter port_scandataout bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter port_scandone bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter port_scanread bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter port_scanwrite bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter port_clk0 bound to: PORT_USED - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter port_clk1 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter port_clk2 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter port_clk3 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter port_clk4 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter port_clk5 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_clkena0 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_clkena1 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_clkena2 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_clkena3 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_clkena4 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_clkena5 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_extclk0 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_extclk1 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_extclk2 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter port_extclk3 bound to: PORT_UNUSED - type: string 
2default:defaulth p
x
? 
~
%s
*synth2f
R	Parameter valid_lock_multiplier bound to: 32'sb00000000000000000000000000000001 
2default:defaulth p
x
? 
?
,zero replication count - replication ignored693*oasys2m
WD:/wza/vivado_program_files/project_for_digital_logic/VGA_test/vga_pannel/src/pll_vga.v2default:default2
792default:default8@Z8-693h px? 
?
,zero replication count - replication ignored693*oasys2m
WD:/wza/vivado_program_files/project_for_digital_logic/VGA_test/vga_pannel/src/pll_vga.v2default:default2
862default:default8@Z8-693h px? 
?
,zero replication count - replication ignored693*oasys2m
WD:/wza/vivado_program_files/project_for_digital_logic/VGA_test/vga_pannel/src/pll_vga.v2default:default2
932default:default8@Z8-693h px? 
?
failed synthesizing module '%s'285*oasys2
pll_vga2default:default2m
WD:/wza/vivado_program_files/project_for_digital_logic/VGA_test/vga_pannel/src/pll_vga.v2default:default2
392default:default8@Z8-285h px? 
?
failed synthesizing module '%s'285*oasys2
system_ctrl2default:default2q
[D:/wza/vivado_program_files/project_for_digital_logic/VGA_test/vga_pannel/src/system_ctrl.v2default:default2
112default:default8@Z8-285h px? 
?
failed synthesizing module '%s'285*oasys2%
vga_pannel_design2default:default2w
aD:/wza/vivado_program_files/project_for_digital_logic/VGA_test/vga_pannel/src/vga_pannel_design.v2default:default2
102default:default8@Z8-285h px? 
?
%s*synth2?
sFinished Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:29 . Memory (MB): peak = 332.949 ; gain = 126.363
2default:defaulth px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
72default:default2
42default:default2
02default:default2
52default:defaultZ4-41h px? 
N

%s failed
30*	vivadotcl2 
synth_design2default:defaultZ4-43h px? 
`
Command failed: %s
69*common2+
Vivado Synthesis failed2default:defaultZ17-69h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Dec 31 19:58:16 20212default:defaultZ17-206h px? 


End Record