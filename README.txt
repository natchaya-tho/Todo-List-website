**Getting Started with Robot Framework**

Here are the prerequisites for running this acceptance testing framework:


1. Install Python (version3)
    - https://www.python.org/downloads/ 
    - Check if Python is installed:
        - open terminal
        - run command: python3 -V
            - should return something like "Python 3.13.1"
2. Install Robot framework
    - open terminal
    - run command: pip3 install robotframework
        - should return Successfully installed robotframwork-X.0
3. Install SeleniumLibrary
    - open terminal
    - run command: pip3 install robotframework-seleniumlibrary
4. Install all packages dependencies:
    - Check if all libraries are installed:
        - open terminal
        - run command: python3 -m pip check 
            - should return something like "No broken requirements found.
        - run command: pip3 list 
            - should return list of required libraries
5. Download chromedriver
    - https://chromedriver.chromium.org/downloads
        - the downloaded chromedriver version should be compatible with your Chrome Browser version

**How to run project**

1. open terminal
2. run command: robot to_do_list.robot