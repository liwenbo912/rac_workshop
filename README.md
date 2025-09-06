# Robotics Arm Challenge Workshop

This repository contains three tutorials for the Dobot Magician robotics arm. These tutorials will guide you in controlling the robotics arm using Python.

## Tutorials

1. [Dobot Magician Robot Arm Control Tutorial](dobot.ipynb)
2. [YOLO Training Tutorial](yolov8-obb.ipynb) (from HKUGenAI)
3. [Dobot Magician Robot Arm Calibration Tutorial](calibration.ipynb)

## Environment Setup

To run the tutorials, follow these steps:

1. **Clone the repository:**
    ```bash
    git clone https://github.com/HKUArmStrong/dobot-workshop.git
    cd dobot-workshop
    ```

2. **Create a virtual environment:**
    ```bash
    python3 -m venv venv
    source venv/bin/activate  # On Windows use `venv\Scripts\activate`
    ```

3. **Alternatively, create a conda environment:**
    ```bash
    conda create -n rac_workshop python=3.10
    conda activate rac_workshop
    ```

4. **Install required packages:**
    ```bash
    pip install -r requirements.txt # See the below requirement for difference hardware and OS. 
    ```

### Requirements Files

Choose the appropriate requirements file for your platform:

- **Windows (CPU):** `requirements.txt`
- **Windows (CUDA 12.8):** `requirements-cuda.txt`
- **Linux (CPU):** `requirements-linux-cpu.txt`
- **Linux (CUDA 12.8):** `requirements.txt`
- **macOS:** `requirements-mac.txt`

