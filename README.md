# ⚡ Robust Defence Against Zero-Dynamics Attacks in Power Systems

This repository contains the Simulink implementation of ideal and robust control strategies designed to compensate **zero-dynamics attacks (ZDAs)** in power systems, developed as part of a university project for the course **System and Control Methods for Cyber-Physical Security**.

## 🏫 Course Information

Department of Computer, Control and Management Engineering  
Sapienza University of Rome  
**Course:** System and Control Methods for Cyber-Physical Security  
**Author:** Andrea Di Paolo and Emanuele De Bianchi  

## 📘 Project Overview

Zero-Dynamics Attacks (ZDAs) are stealthy cyber-physical threats that exploit the internal unobservable dynamics of a power grid to destabilize it. This project studies a defense framework that includes:

- **Ideal control strategy**: Assumes full model knowledge and allows for perfect decoupling of the attacked and protected subsystems.
- **Robust control strategy**: Uses an **extended high-gain observer** to estimate internal states and allows effective decoupling even in the absence of full model knowledge.

## 🧠 Theoretical Background

The defense design is based on the work of Di Giorgio et al. (2018) which proposes a robust scheme capable of rejecting attacks targeting unobservable system dynamics.

> 📄 **Citation**  
> Di Giorgio, A., Pietrabissa, A., Delli Priscoli, F., & Isidori, A. (2018).  
> *Robust protection scheme against cyber-physical attacks in power systems*.  
> [IET Control Theory & Applications, 12(13), 1792–1801.](https://doi.org/10.1049/iet-cta.2017.0725)  

## 🛠️ Contents

- `ideal_defence_zda.slx`: Simulink model implementing the ideal defense controller
- `ideal_defence_zda.m`: MATLAB values for the relative Simulink model
- `robust_defence_zda.slx`: Simulink model with the robust control scheme using a high-gain observer
- `robust_defence_zda.m`: MATLAB values for the relative Simulink model
- `figure_code.m`: MATLAB script to plot the simulation results
- `README.md`: This file
- `img` directory: simulations results

## 🧪 Case Study

The models simulate the **WSCC 9-bus system**, in which:
- Generator 2 is under attack.
- Generator 3 is protected using the control strategy.
- Generator 1 is unprotected.

Control gains and observer parameters can be adjusted in the `.m` files.

## 👨‍🏫 Authors

- Andrea Di Paolo  
- Emanuele De Bianchi

**Supervised by:**  
Prof. Francesco Liberati  
Department of Computer, Control, and Management Engineering  
Sapienza University of Rome

Academic Year: **2021/2022**