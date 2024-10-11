*** Settings ***
Library          SeleniumLibrary

*** Keywords ***

Initialize Selenium
    Set selenium speed      .2s
    set selenium timeout    10s
    log                     Starting the test case

Begin Web Test
    open browser            about:blank     firefox

End Web Test
    sleep                   4s
    close browser