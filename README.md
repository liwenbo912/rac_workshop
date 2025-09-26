# Robotics Arm Challenge Workshop

This repository contains three tutorials for the Dobot Magician robotics arm. These tutorials will guide you in controlling the robotics arm using Python.

## Tutorials

1. [Dobot Magician Robot Arm Control Tutorial](dobot.ipynb)
2. [YOLO Training Tutorial](cv_yolo/yolov8.ipynb) (Check [`ReadMe.md`](cv_yolo/ReadMe.md) under the [`cv_yolo`](cv_yolo) folder)
3. [Dobot Magician Robot Arm Calibration Tutorial](calibration.ipynb)

## Environment Setup

To run the tutorials, follow these steps:

1. **Clone the repository:**
    ```bash
    git clone https://github.com/HKUArmStrong/rac_workshop.git
    cd rac_workshop
    ```

2. **Create a virtual environment:**
    ### For Mac/Linux ###
   ```bash
    python3 -m venv venv
    source venv/bin/activate
    ```
    ### For Windows ###
    ```bash
    python3 -m venv venv
    venv\Scripts\activate.bat
    ```

4. **Alternatively, create a conda environment:**
    ```bash
    conda create -n rac_workshop python=3.10
    conda activate rac_workshop
    ```

5. **Install required packages:**
    ```bash
    pip install -r requirements.txt # See the below requirement for difference hardware and OS. 
    ```

  
### Requirements Files

Select the requirements file that matches your operating system and hardware:

- **Windows (CPU):** `requirements.txt`
- **Windows (CUDA 12.8):** `requirements-cuda.txt`
- **Linux (CPU):** `requirements-linux-cpu.txt`
- **Linux (CUDA 12.8):** `requirements.txt`
- **macOS:** `requirements-mac.txt`

For YOLO workshop, we use a different environment setting, a new conda (virtual) environment is recommended.
- **YOLO (GPU):** `requirements_yolo_txt`

### Known Issue
On macOS, the RealSense camera is not supported. As a result, all camera-related functions are disabled, and `calibration.ipynb` will have limited functionality.
