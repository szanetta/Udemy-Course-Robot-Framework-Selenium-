*** Settings ***
Library          SeleniumLibrary

*** Keywords ***
Log In
    go to                   https://automationplayground.com/crm/
    page should contain     Customers Are Priority One
    click link              Sign In
    page should contain     Login
    input text              id=email-id     admin@robotframeworktutorial.com
    input text              id=password     qwe
    click button            Submit

Add New Customer
    page should contain     Our Happy Customers
    click link              id=new-customer
    page should contain     Add Customer
    input text              id=EmailAddress     john.doe@gmail.com
    input text              id=FirstName        John
    input text              id=LastName         Doe
    input text              id=City             Dallas
    select from list by value       id=StateOrRegion        TX
    select radio button     gender      female
    select checkbox         name=promos-name
    click button            Submit
    wait until page contains        Success! New customer added.


