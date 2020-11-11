function q = inform()
clc
waistSub=rossubscriber('/motor_controller_1/state');
waistMsg=receive(waistSub,1);
%waistm=waistSub.LatestMessage

q(1)=waistMsg.CurrentPos
m(1)=waistMsg.IsMoving

shoulderSub=rossubscriber('/motor_controller_2/state');
shoulderMsg=receive(shoulderSub,1);
q(2)=shoulderMsg.CurrentPos
m(2)=shoulderMsg.IsMoving

elbowSub=rossubscriber('/motor_controller_3/state');
elbowMsg=receive(elbowSub,1);
q(3)=elbowMsg.CurrentPos
m(3)=elbowMsg.IsMoving

wristSub=rossubscriber('/motor_controller_4/state');
wristMsg=receive(wristSub,1);
q(4)=wristMsg.CurrentPos
m(4)=wristMsg.IsMoving

handSub=rossubscriber('/motor_controller_5/state');
handMsg=receive(handSub,1);
q(5)=handMsg.CurrentPos
m(5)=handMsg.IsMoving
end
