# Excavator Operator Performance - Discrete Event Simulation

This repository contains the model developed for the paper **"Utilizing Digital Twins to Model and Optimize Shovel Operator Performance Through Arena Simulation."**

## 📋 Project Description
This project examines how operators control hydraulic shovels, focusing on swing motion and bucket rotation. The goal is to understand operator behavior and its impact on efficiency.

## ⚙️ Installation

1. Clone or download the repository to your local machine.
2. Ensure that both **MATLAB** and **Arena** are installed on your system.
    - MATLAB distribution fitter is used for data processing.
3. Place the desired XLSX data file in an accessible location on your computer.

## 🛠️ Usage

### 1️⃣ Finding the Best Fit Distribution
1. Open **MATLAB**.
2. Run the script by entering the following command in the MATLAB Command Window:
    ```matlab
    DataProcessingTool
    ```
3. Select the XLSX file (e.g., `Data_Rate.xlsx`) that contains the table template.  
   **Note**: It is not necessary to strictly follow the template, but using it helps maintain consistency.
4. Run the MATLAB script (`OperatorDataProcessing.m`) and select the appropriate data folder.
5. Use the **Distribution Fitter App** in MATLAB to identify the best-fit distribution for the data.

##

### 2️⃣ Running the Arena Model
1. Open the Arena model file (`operatorPerformance_Arena.doe`).
2. Modify the input variables as needed. (You can locate the exact variable inputs within the Arena model.)
3. Run the simulation and generate the report.  
   Alternatively, navigate to the model’s folder and open the `.OUT` file to view the output results.

## 📬 Contact

If you have any questions or need further assistance, feel free to reach out:

- **Email:** [mateof.797@gmail.com](mailto:mateof.797@gmail.com)

<br/>
<br/>

> [!NOTE]  
> This project was developed using **MATLAB R2024a** and **Arena v16.1**.  
> Compatibility with other versions may vary.  

