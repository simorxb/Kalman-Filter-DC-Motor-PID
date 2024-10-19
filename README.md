# Kalman Filter and PID Controller - DC Motor Angular Velocity Control

[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=simorxb/Kalman-Filter-DC-Motor-PID)

## Summary
This project demonstrates how to use a **Kalman Filter** in conjunction with a **PID Controller** to control the angular velocity of a DC motor. The Kalman Filter estimates the angular velocity of the motor, while the PID controller regulates it based on the estimation. The project is implemented in **MATLAB** and **Simulink**.

## Project Overview
The Kalman Filter is employed to estimate the angular velocity of a DC motor based on noisy measurements of its angular position. This estimation is used as feedback for the PID controller to regulate the motor's speed. The PID controller outputs the required voltage input for the DC motor based on the error between the desired setpoint and the estimated velocity.

### Key Components
1. **Kalman Filter:**
   - The Kalman Filter is designed without prior knowledge of the DC motor's physical properties, relying on a kinematic model.
   - It estimates angular velocity by processing noisy angular position measurements taken at discrete time intervals.
   - The filter model assumes a linear dynamic system:
     $$x_k = F x_{k-1} + G \alpha_k + w_k$$
     where $F$ is the state transition matrix, $G$ is the input matrix, and $w_k$ is process noise.
     
2. **PID Controller:**
   - A discrete PID block in Simulink controls the DC motor based on the error between the setpoint and the Kalman Filter's estimated velocity.
   - The controller outputs the voltage input required to achieve the desired motor speed.

3. **Simulation Environment:**
   - The DC motor model is implemented in **Simscape** and integrated with the Kalman Filter using **MATLAB** and **Simulink**.
   - The simulation visualizes the performance of the Kalman Filter in estimating the motor's velocity and the PID controller's ability to regulate speed under varying noise conditions.

### Kalman Filter Equations
- **State Equation:**
  $$x_k = F x_{k-1} + B u_k + w_k$$
  Where:
  - $x_k$ = $[\theta$; $\omega]$ ($\theta$ = angular position, $\omega$ = angular velocity)
  - $$F = [ 1, \Delta t ; 0, 1]$$ is the state transition matrix.
  - $w_k$ is process noise.

- **Measurement Equation:**
  $$z_k = H x_k + v_k$$
  where $H = [ 1, 0]$, $v_k$ is measurement noise.

### PID Control Process
- The Kalman Filter provides the estimated angular velocity as input to the PID controller.
- The PID controller adjusts the DC motor's voltage to minimize the error between the target and estimated velocities.

### Simulation Results
- The simulation includes extreme noise in the angular position measurements, but the Kalman Filter successfully estimates the motor's angular velocity. The PID controller stabilizes the motor speed based on these estimations.

## Author
This project is developed by Simone Bertoni. Learn more about my work on my personal website - [Simone Bertoni - Control Lab](https://simonebertonilab.com/).

## Contact
For further communication, connect with me on [LinkedIn](https://www.linkedin.com/in/simone-bertoni-control-eng/).
