*** Settings ***

Resource        C:/Users/rohit/PycharmProjects/Amazon/Libraries/Resources/OS/OS.robot

*** Variables ***


*** Test Cases ***

Create Directories
    [Tags]  OperatingSystem
    OS.Create Base Directory
    OS.Create First Directory
    OS.Create Second Directory
Create Files
    [Tags]  OperatingSystem
    OS.Create First File
    OS.Create Second File
    OS.Create Third File
File Operations
    [Tags]  OperatingSystem
    OS.Move file Operation
    OS.Copy file Operation