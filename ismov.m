function o = ismov()
clc
m=[0 0 0 0 0];
waistSub=rossubscriber('/motor_controller_1/state');
waistMsg=receive(waistSub,1);
m(1)=waistMsg.IsMoving;

shoulderSub=rossubscriber('/motor_controller_2/state');
shoulderMsg=receive(shoulderSub,1);
m(2)=shoulderMsg.IsMoving;

elbowSub=rossubscriber('/motor_controller_3/state');
elbowMsg=receive(elbowSub,1);
m(3)=elbowMsg.IsMoving;

wristSub=rossubscriber('/motor_controller_4/state');
wristMsg=receive(wristSub,1);
m(4)=wristMsg.IsMoving;

handSub=rossubscriber('/motor_controller_5/state');
handMsg=receive(handSub,1);
m(5)=handMsg.IsMoving;

o= m(1)||m(2)||m(3)||m(4)||m(5);
end
