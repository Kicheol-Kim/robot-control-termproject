%% Show 3D simulation of robot using external controller
%% Based on Yet Another Robotics Toolbox, https://github.com/sjchoi86/yart
%% Modified by Seung-Joon YI, 2022

addpath('./lib')
ccc
robot_name = 'kortex_gen36dof';
%robot_name = 'manipulator-h';

chain = get_chain_from_urdf_with_caching(robot_name);

external_controller=@example_controller; %Replace this with your custom controller function
% robotdraw_extcontroller(chain, external_controller); %Run the simulation using external controller function
% robotdraw_extcontroller(chain, external_controller,'PLOT_JOINT_AXIS',1,'PRINT_JOINT_POS',1,'PLOT_ENDEFFECTOR',1);
robotdraw_extcontroller(chain, external_controller,'PLOT_ENDEFFECTOR',1,'PLOT_EETRAJ',1); %Plot end effector trajectory too
