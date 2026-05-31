%% Show 3D simulation of robot using interactive controller
%% Based on Yet Another Robotics Toolbox, https://github.com/sjchoi86/yart
%% Modified by Seung-Joon YI, 2022

addpath('./lib')
ccc
%robot_name = 'kortex_gen36dof';
%robot_name = 'manipulator-h';
robot_name = 'panda';
chain = get_chain_from_urdf_with_caching(robot_name);


% robotdraw_interactive(chain); %Interactive Control with no output

%Interactive Control with joint axis, end effector frame and joint angle output
robotdraw_interactive(chain,'PLOT_JOINT_AXIS',1,'PRINT_JOINT_POS',1,'PLOT_ENDEFFECTOR',1);
