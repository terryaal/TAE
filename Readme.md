# Requirement statement

In order to meet this deadline you must:

1. Identify five high risk areas of the application
2. Select two of the risks identified and create automated tests for them (using a framework/language of your choosing)

## High Risk area


1. User ability to successfully checkout selected item
2. User ability to register account with site
3. Website capability to retain wishlist of registered user
4. Website capability to list items in relevent section
5. Website capability to retain recently viewed product

## High Risk requirement selected for automation challenge
1. User ability to successfully checkout/purchase selected item
2. Website capability to retain wishlist of registered user


# Robotframework

Robot Framework is a Python-based, extensible keyword-driven automation framework for acceptance testing, acceptance test driven development (ATDD), behavior driven development (BDD) and robotic process automation (RPA). 

## Installation

Step 1: Install Python

Visit the following website to download Python software.

https://www.python.org/downloads/

To check if Python and pip are correctly installed, 

open the command prompt, and run the version command.
```bash
python --version
```
```bash
pip --version
```
Step 2: Configure Environment Variables

After installing Python and pip, you should configure environment variables by adding the path. 

To do so,
```bash
Go to System - > Advanced System Settings - > Advanced - > Environment Variables
```

Step 3: Install Robot Framework

Open the command prompt and navigate to the python folder and type the following command:
```bash
Pip install robotframework
```
Robot Framework is successfully installed. You can check it using the version command.
```bash
robot --version
```
Step 4: Install wxPython

Open the command prompt and type the following command:
```bash
Pip install –u wxPython
```
Step 5: Install RIDE

To install RIDE, open the command prompt and type the following command.
```bash
pip install robotframework-ride
```
Step 6: Install Selenium library
```bash
pip install --upgrade robotframework-selenium2library
```

To open RIDE, open the command prompt and type the following command:
```bash
ride.py
```

The latest version of Python i.e 3.8.1 doesn't support RIDE. You have to wait for the Future Ride 2.0. You can download the beta version that is released in Jul 2020 from the GitHub site here:

https://github.com/robotframework/RIDE/releases

Alternately, you can open a command prompt and use pip to install the beta ride version
```bash
pip install –pre-upgrade Robot Framework-ride==2.0b1
```
Step 6: Install RIDE

Open the command prompt and navigate to the folder of the saved test case. The file saves here under the scripts folder in the robot framework project directory.
```bash
C:\Users\****>cd C:\Automation\TAE\Test Suite\TestVersion01

C:\Automation\TAE\Test Suite\TestVersion01>robot TestSuite01.robot
```
