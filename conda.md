# Conda Installation

## Install Conda to make a virtual environment for managing the tools

**PLEASE BE REMINDED TO TICK THE ADD TO ENV PATH OPTION For Windows**

- Go to Anaconda [installation website](https://www.anaconda.com/download/success) and install conda via installers. Both Conda and Miniconda are acceptable.
  - Check **ON** the Red Box "Add installation to my PATH" option during installation:
  - You may also want to check on the green box, if you prefer to use Conda in text editor like VSCode.

    ![Conda Environment Path Setup](/img/conda_env_path.png)

Note: For Conda in VSCode, you **MUST** install [Python extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-python.python).

Note: You should see a `(base)` prefix at the left end of your terminal after you activate your conda virtual environment:
- Windows Terminal

    ![Windows Terminal Conda](/img/cmd_conda.png)

- VSCode Terminal

    ![VSCode Terminal Conda](/img/vscode_terminal_conda.png)
  
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

- Windows ExecutionPolicies Issues

```bash
# Set the authorization
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUsers
# then source the profile.ps1
. 'C:\Users\Innowing\Documents\WindowsPowerShell\profile.ps1'
# Notice the dot in the command
```

- Change Disk in Windows terminal
  ```bash
  cd /d D: # for example to Disk D:
  ```

- Error Debug
  ```bash
    error: subprocess-exited-with-error

    × Getting requirements to build wheel did not run successfully.
  ```
  It means your enviroment lacks some essential tools/compilers for building the packages we want to install. Usually conda install python would solve these kind of problems
  ```bash
  conda install python==x.xx.x # x.xx.x means the python version you want to install
  # in this workshop we use python 3.10
  conda install python==3.10
  ```