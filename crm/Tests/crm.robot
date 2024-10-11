*** Settings ***
Documentation    This is some basic information about the whole suite
Resource         ../Resources/Crm.robot
Resource         ../Resources/Common.robot
Test Setup       Initialize Selenium
Test Setup       Begin Web Test
Test Teardown    End Web Test

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the test case
    [Tags]                  1006    Smoke   Contacts

    Crm.Log In
    Crm.Add New Customer