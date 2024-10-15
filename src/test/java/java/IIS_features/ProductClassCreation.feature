@Get_New_ProductClass
Feature: fetching Product as per the requirement

  @PC
  Scenario: get product class
    Given User get the testdata for product class for testcase id AT_Penalty_001_DBQ_D1
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_Penalty_001_DBQ_D1
    
    
 