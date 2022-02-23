File description

Simulink Files
- M1DCSSimulator_M1BcoordinateSystem.slx : Simulator to interface with M1DCS. All physics calculations are done in M1B coordinat system
- SixDsimulator_M1B.slx : Simulator for mirror with loop closed around inputs and outputs. Simulates the mirror with expected high level behaviour of the M1DCS. 

mfiles

Functions that run with Simulink model
- ActForces2FM.m
- decompose_gravity_vector.m
- dm2dh.m
- Force_M2S.m
- hp_stiffness.m
- Mlength2Slength.m
- node_rearangement.m
- Slength2Mlength.m
- ss_compression_tension.m
- ss_stiffness.m

Standalone m files
- M1DCS6Dsim_M1B.m : Standalone m file implementation of the simulink model M1DCS6Dsim_M1B.slx


Running the simulation
- Set the zenith angle and clocking angle of the off axis mirror in simulink model
- Details of input/output dimensions and units are in the imulink model
- User can generated expected commands from M1DCS to the active support system using M1DCSSimulator_M1BcoordinateSystem.slx. 
Connect simulink output port to the gray blocks and read the values in the "out" variable in matlab workspace.