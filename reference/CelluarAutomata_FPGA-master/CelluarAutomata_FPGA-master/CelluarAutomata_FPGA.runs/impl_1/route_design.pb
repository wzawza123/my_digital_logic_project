
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
y
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 106b8086c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:37 . Memory (MB): peak = 1270.766 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 2.1 Create Timer | Checksum: 106b8086c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:38 . Memory (MB): peak = 1270.766 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 106b8086c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:38 . Memory (MB): peak = 1270.766 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 106b8086c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:38 . Memory (MB): peak = 1270.766 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 1491b5086
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:54 ; elapsed = 00:00:43 . Memory (MB): peak = 1270.766 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=1.112  | TNS=0.000  | WHS=-0.113 | THS=-41.807|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 1c48f9b5b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:57 ; elapsed = 00:00:45 . Memory (MB): peak = 1270.766 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 2514e5e8e
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:49 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
4.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 4.1.1 Update Timing | Checksum: af4b222c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:24 ; elapsed = 00:01:02 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.705  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.1 Global Iteration 0 | Checksum: c0f7f24e
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:24 ; elapsed = 00:01:02 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
E
0Phase 4 Rip-up And Reroute | Checksum: c0f7f24e
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:24 ; elapsed = 00:01:02 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 5.1.1 Update Timing | Checksum: f6c3d9be
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:25 ; elapsed = 00:01:02 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.713  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
B
-Phase 5.1 Delay CleanUp | Checksum: f6c3d9be
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:25 ; elapsed = 00:01:02 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
L
7Phase 5.2 Clock Skew Optimization | Checksum: f6c3d9be
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:25 ; elapsed = 00:01:03 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: f6c3d9be
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:25 ; elapsed = 00:01:03 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 6.1.1 Update Timing | Checksum: 7fe1944c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:27 ; elapsed = 00:01:03 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.713  | TNS=0.000  | WHS=0.079  | THS=0.000  |
2default:defaultZ35-416h px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: 7fe1944c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:27 ; elapsed = 00:01:03 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: 7fe1944c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:27 ; elapsed = 00:01:03 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 151552cde
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:27 ; elapsed = 00:01:04 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 151552cde
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:27 ; elapsed = 00:01:04 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 1ea178266
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:29 ; elapsed = 00:01:05 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=0.713  | TNS=0.000  | WHS=0.079  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
G
2Phase 10 Post Router Timing | Checksum: 1ea178266
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:29 ; elapsed = 00:01:06 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
=
Router Completed Successfully
16*routeZ35-16h px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:29 ; elapsed = 00:01:06 . Memory (MB): peak = 1287.223 ; gain = 16.4572default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
542default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:01:312default:default2
00:01:072default:default2
1287.2232default:default2
16.4572default:defaultZ17-268h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:072default:default2
00:00:032default:default2
1287.2232default:default2
0.0002default:defaultZ17-268h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
?D:/wza/vivado_program_files/CelluarAutomata_FPGA-master/CelluarAutomata_FPGA-master/CelluarAutomata_FPGA.runs/impl_1/top_drc_routed.rpt?D:/wza/vivado_program_files/CelluarAutomata_FPGA-master/CelluarAutomata_FPGA-master/CelluarAutomata_FPGA.runs/impl_1/top_drc_routed.rpt2default:default8Z2-168h px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:082default:default2
00:00:052default:default2
1287.2232default:default2
0.0002default:defaultZ17-268h px? 


End Record