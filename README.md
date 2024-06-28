# Parking Management System

This repository contains the Verilog code for a Parking Management System. The system tracks university and non-university cars entering and exiting a parking lot, manages available spaces, and provides outputs indicating the current parking status.

## Tools

- **Modelsim**
- **Quartus**

## Features

- **Track University and Non-University Cars**: The system differentiates between university and non-university cars.
- **Dynamic Space Allocation**: Adjusts available university parking spaces based on the hour of the day.
- **Vacancy Indication**: Provides outputs indicating if there are available parking spaces.
- **Sequential Logic**: Uses clock-driven sequential logic to ensure reliable operation.

## Module Description

### ParkingSystem

This module is the core of the parking management system. It tracks the number of parked university and non-university cars, manages available spaces, and provides various status outputs.

#### Inputs

- `car_entered`: Signal indicating a car has entered the parking lot.
- `is_uni_car_entered`: Signal indicating if the car entered is a university car.
- `car_exited`: Signal indicating a car has exited the parking lot.
- `is_uni_car_exited`: Signal indicating if the car exited is a university car.
- `hour`: 5-bit signal representing the current hour.

#### Outputs

- `uni_parked_car`: Number of currently parked university cars.
- `parked_car`: Number of currently parked non-university cars.
- `uni_vacated_space`: Number of available university parking spaces.
- `vacated_space`: Number of available non-university parking spaces.
- `uni_is_vacated_space`: Indicates if there are available university parking spaces.
- `is_vacated_space`: Indicates if there are available non-university parking spaces.
- `parking_is_vacated_space`: Indicates if there are any available parking spaces.

### Local Parameters

- `PARKING_SIZE`: Total size of the parking lot (set to 700).

### Testbench

The testbench verifies the functionality of the `ParkingSystem` module by simulating car entries and exits, and checking space allocation at different times of the day.

#### Testbench Description

#### Outputs

- `uni_parked_car`: Number of currently parked university cars.
- `parked_car`: Number of currently parked non-university cars.
- `uni_vacated_space`: Number of available university parking spaces.
- `vacated_space`: Number of available non-university parking spaces.
- `uni_is_vacated_space`: Indicates if there are available university parking spaces.
- `is_vacated_space`: Indicates if there are available non-university parking spaces.
- `parking_is_vacated_space`: Indicates if there are any available parking spaces.

## How to Use
To simulate the module first we need to run Modelsim. We have used the following guide to do this and simulate a verilog code with a testbench using Modelsim. https://staff.cs.upt.ro/~opritoiu/modelsim/rmt/index.html

Here is a screenshot of running Modelsim:
![image](https://github.com/amirrs82/DSD_Compensatory/assets/119596638/b1ca59f1-7745-4c52-987f-3ec7827eb639)

## Results
1. **Testbench 1**
   
   ![image](https://github.com/amirrs82/DSD_Compensatory/assets/119596638/b741935c-b94f-4740-9960-9aea72b5e39a)
   ![image](https://github.com/amirrs82/DSD_Compensatory/assets/119596638/0844f9ba-43fc-4849-a7e1-faa95fce88cb)

2. **Testbench 2**

   ![image](https://github.com/amirrs82/DSD_Compensatory/assets/119596638/534122e8-af92-4f30-ba5e-975648c97ca1)
   ![image](https://github.com/amirrs82/DSD_Compensatory/assets/119596638/c823ef57-87d9-4cf6-9a67-ae2b16a4a349)

## Acknowledgements

- **Author**: Amirreza Saeedi
- **Student Number**: 401106041
- **Course Master**: Mr. Foshati
