# Computer Vision (YOLO) Workshop 2025 Fall

This is the repo for CV Workshop held by Innovation Wing and SIG HKUArmStrong, Innovation Wing, HKU. 

It contains the basic YOLO usage from environment installation, YOLO training, to YOLO inferencing. A Corresponding slides is available as below.

This Workshop also serves as one of the tutorials for *Robotic Arm Challenge 2025 Fall*, Register if you feel interested! You may check it with the following Website.

Materials: [Website](https://innoacademy.engg.hku.hk/robotarm2025/) | [Self-Learning Material & Slides](https://hkuarmstrong.notion.site/Robotics-Arm-Challenge-2025-Autumn-Self-Learning-Materials-26497c42c7f38063b5b4fcb4572f9158?source=copy_link)

Enjoy and Have Fun!


# Install Conda to make a virtual environment for managing the tools

**PLEASE BE REMINDED TO TICK THE ADD TO ENV PATH OPTION For Windows**

- Go to Anaconda [installation website](https://www.anaconda.com/download/success) and install conda via installers. Both Conda and Miniconda are acceptable.
  - Check **ON** the Red Box "Add installation to my PATH" option during installation:
  - You may also want to check on the green box, if you prefer to use Conda in text editor like VSCode.

    ![Conda Environment Path Setup](ReadMe_img/conda_env_path.png)

Note: For Conda in VSCode, you **MUST** install [Python extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-python.python).

# Install the required environment for this workshop

In this part, we will create a virtual environment with (mini)conda, and install all the required packages and dependencies in conda virtual environment for the workshop
```bash
# explain: conda create --name envname packages
conda create -n cv_workshop
conda activate cv_workshop
# go to the workspace directory
cd path/to/cv_workspace # replace with actual path
pip install -r requirements_yolo.txt
```

Other commands:
```bash
# activate conda virtual environment
# explain: conda activate name_of_virtual_environment
conda activate cv_workshop

# (optional) deactivate conda virtual environment
conda deactivate
```

Note: You should see a `(base)` prefix at the left end of your terminal after you activate your conda virtual environment:
- Windows Terminal

    ![Windows Terminal Conda](ReadMe_img/cmd_conda.png)

- VSCode Terminal

    ![VSCode Terminal Conda](ReadMe_img/vscode_terminal_conda.png)



# RUN OUR DETECTION TASK!

Go to the [`yolov8.ipynb`](yolov8.ipynb) and play!

- Install ipykernal when running `.ipynb` for the first time, and select the python under the conda virtual environment we just created.

- For example, choosing *cv_workshop* virtual python environment here:
  
  ![VSCode Python Version](ReadMe_img/jupyter_kernel.png)

  ![VSCode Python Version](ReadMe_img/jupyter_kernel_py.png)
  
# FAQ

- Basic Bash command (Linux)
```bash
# Navigate to a directory
cd dir_name # replace with the real directory name
# or 
cd path/to/directory # replace with the actual path
# move to father directory
cd .. 

# Examine current directory (Linux)
ls 
# or a specific directory
ls path/to/directory # replace with the actual path

# Examine current directory (Windows)
dir path\to\directory # note the "\" here is different from Linux

# Making a directory
mkdir dir_name # replace with the real directory name

# Notations
/ # directory level symbol in linux
\ # directory level symbol in Windows
. # one dot usually means current node/level, e.g., current directory, and sometimes omitted.
.. # usually means father node/level, e.g., father directory
ls test/.. 
# is the same as 
ls .
# and the same as 
ls

```

- Windows ExecutionPolicies Issus

```bash
# Set the authorization
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUsers
# then source the profile.ps1
. 'C:\Users\Innowing\Documents\WindowsPowerShell\profile.ps1'
# Notice the dot in the command
```

- Select Python Interpreter in VSCode

  1. Press `Shift` + `Ctrl` + `P` together to open VSCode command panel
   
  2. Input `Python: Select Interpreter`

  3. Select the Python version you want

  - For example, select *base* conda virtual environment here

    ![VSCode Python Version](ReadMe_img/vscode_conda.png)

    ![VSCode Python Version](ReadMe_img/vscode_conda_py.png)
