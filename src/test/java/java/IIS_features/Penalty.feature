@PenaltyDBQ
Feature: To Test the Penalty DBQ pplication

  @AT_Penalty_001
  Scenario: Check the penalty details window modication in the all Investment deals screen
    Given navigate to IIS Cloud application and login with valid credentials
    Given User get the testdata for product class for testcase id AT_Penalty_001_DBQ_D1
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_Penalty_001_DBQ_D1
    And User_629 get testdata for AT_Penalty_001
    And User_630 click the Maintenance under Investment Deals Combined without Trade Deal
    And User_630 enter the Party in maintenance under Investment Deals Combined without Trade Deal
    And User_630 enter the Category in maintenance under Investment Deals Combined without Trade Deal
    And User_630 enter the Product Class in maintenance under Investment Deals Combined without Trade Deal
    And User_630 enter the Deal Currency in maintenance under Investment Deals Combined without Trade Deal
    And User_630 enter the Tenure Periodicity Number in maintenance under Investment Deals Combined without Trade Deal
    And User_630 select the Tenure Periodicity Type in maintenance under Investment Deals Combined without Trade Deal
    And User_630 enter the Yield Percentage in maintenance under Investment Deals Combined without Trade Deal
    And User_630 enter the Amount in maintenance under Investment Deals Combined without Trade Deal
    And User_630 click the Contributor details tab in maintenance under Investment Deals Combined without Trade Deal
    And User_630 double click the Contributor details row in maintenance under Investment Deals Combined without Trade Deal
    And User_630 enter the nostro account details in contributor tab under maintenance in Investment Deals Combined without Trade Deal
    And User_630 enter the maturity account details in contributor tab under maintenance in Investment Deals Combined without Trade Deal
    And User_630 click the save button in maintenance under Investment Deals Combined without Trade Deal
    And User click Confirmation yes2
    And User click Information ok2
    And User_630 click the Additional Detail in maintenance under Investment Deals
    And User_629 click the Penalty Detail at Additional Detail in maintenance under Investment Deals
    And User_629 Check the new Field under the Additional details tab

  @AT_Penalty_012
  Scenario: check the functionality of new flag Apply penalty on due payment’ in product class
    Given navigate to IIS Param Cloud Application and login with valid credentials
    Given User get the testdata for product class for testcase id AT_Penalty_012_DBQ_D1
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_Penalty_012_DBQ_D1
    And User_629 get testdata for AT_Penalty_012
    And User Navigate to ProductClass Maintenance M003MT screen
    And User_629 Cick on Search Button in maintenance under Product Class
    And User_629 Enter The Product class in Class tab under Product Class
    And User_629 Select The Product Class Row
    And User_629 Click on Additional Information in maintanace under Product Class
    And User_629 Click Limit Tab under Additional Information in maintanace under Product Class
    And User_629 check the new flag Apply penalty on due payment is available
    And User_629 Check New Flag is Avialable
    And User_629 check the user  can define  the valid numbers in new fields

  @AT_Penalty_014 @1110864
  Scenario: check the functionality of new flag Apply penalty on due payment’ in product class
    Given navigate to IIS Param Cloud Application and login with valid credentials
    Given User get the testdata for product class for testcase id AT_Penalty_014_DBQ_D1
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_Penalty_014_DBQ_D1
    And User_629 get testdata for AT_Penalty_014
    And User_629 click on Control Record Maintanance Under parameter
    And User_629 Click on Additional parameter
    And User_629 Check the availability of the flag

  @AT_Penalty_015 @1110867
  Scenario: check the new value is added in penalty screen
    Given navigate to IIS Param Cloud Application and login with valid credentials
    Given User get the testdata for product class for testcase id AT_Penalty_015_DBQ_D1
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_Penalty_015_DBQ_D1
    And User_629 get testdata for AT_Penalty_015
    And User_629 Click on Maintenance in Penalty under Parameter
    And User_629 Enter Code under Maintenance in Penalty
    And User_629 Enter Description under Maintenance in Penalty
    And User_629 Check New Penalty Type under Maintenance in Penalty
    And User_629 Click On Save Button under Maintenance in Penalty
    And User click Confirmation yes
    And User_629 click Ok button Information Popup
    And User close the current active screen
