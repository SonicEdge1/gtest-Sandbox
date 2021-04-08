# language: en

Feature: The Facebook application should authenticate user login.

  Scenario: Successful Login
     Given I navigate to Facebook login page https://www.facebook.com
     And I type jegan@tektutor.org as Email
     And I type mysecretpassword as Password
     When I click the Login button
     Then I expect Facebook Home Page after Successful Login
