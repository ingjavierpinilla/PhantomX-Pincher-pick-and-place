# PhantomX Pincher pick and place
## READ ME
[![Project Video](https://img.youtube.com/vi/CVnChKj30n8w/0.jpg)](http://www.youtube.com/watch?v=CVnChKj30n8)

This project allows for take-and-leave actions with the Phantom X pincher robot, using Matlab and ROS

- pick_and_place.m:
  - ROS is started.
  - The motorsetup function is started with the desired speed of each motor.
  - The desired end positions are written for each motor in each process position.
  - The position is sent to each engine and waited for it to stop moving.
  
***The engines are listed from 1 to 5, from waist to hand***
- motorsetup.m: 
  for each engine:
  - Create a client.
  - Create a message.
  - Indicates the speed using the *Speed* attribute.
  - Call the service to send the message .
  - The margin and torque is also set.
  

  
- posicion.m:
  - Create publisher.
  - Create message.
  - In the *Data* attribute of each message you add the desired position.
  - The message is sent for each engine.

- ismov.m:
for each engine:
  - Create subscriber.
  - Receive a message.
  - Read the *IsMoving* attribute of the message
  - If any joint moves it returns True
  
  
###### Comments
To obtain the positions create subscribers to the position of each motor and manually take it to each desired position to perform the process
