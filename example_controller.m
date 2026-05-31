function [ret,do_draw]=example_controller(tick,q_rev,T_ee)
  %tick is the simulation count, q_rev is the current joint angle of the robot_name
  %T_ee is the transform of the end effector
  angle=2*pi*(tick/200);

  q_target=[0 0 0 0 0 0 0]';
  q_target(2)=sin(angle)*(pi/2);
  q_target(4)=sin(angle)*(pi/2);

  ret=q_target;
  do_draw=floor(mod(angle,3.1415)/1.57);
end
