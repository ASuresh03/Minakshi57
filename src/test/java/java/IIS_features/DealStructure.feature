@DealStructureDBQ
Feature: To Test the DEAL STRUCTURE DBQ pplication

  @DealStructureDBQ_prerequest
  Scenario: Getting the prerequest first
    Given User get the testdata for product class for testcase id AT_DS_001_DBQ
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_DS_001_DBQ
    Given User get the testdata for product class for testcase id AT_DS_002_DBQ
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_DS_002_DBQ
    Given User get the testdata for product class for testcase id AT_DS_003_DBQ
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_DS_003_DBQ
    Given User get the testdata for product class for testcase id AT_DS_004_DBQ
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_DS_004_DBQ    
    #Given User get the testdata for product class for testcase id AT_DS_005_DBQ
    #And User get the product class from db if its present as per the user need
    #And Update the product class in main sheet for testcase id AT_DS_005_DBQ
    #Given User get the testdata for product class for testcase id AT_DS_006_DBQ
    #And User get the product class from db if its present as per the user need
    #And Update the product class in main sheet for testcase id AT_DS_006_DBQ    
    Given User get the testdata for product class for testcase id AT_DS_007_DBQ
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_DS_007_DBQ
    #Given User get the testdata for product class for testcase id AT_DS_008_DBQ
    #And User get the product class from db if its present as per the user need
    #And Update the product class in main sheet for testcase id AT_DS_008_DBQ
    Given User get the testdata for product class for testcase id AT_DS_009_DBQ
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_DS_009_DBQ
    Given User get the testdata for product class for testcase id AT_DS_010_DBQ
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_DS_010_DBQ
    Given User get the testdata for product class for testcase id AT_DS_011_DBQ
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_DS_011_DBQ
    Given User get the testdata for product class for testcase id AT_DS_012_DBQ
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_DS_012_DBQ
    Given User get the testdata for product class for testcase id AT_DS_013_DBQ
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_DS_013_DBQ
    Given User get the testdata for product class for testcase id AT_DS_014_DBQ
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_DS_014_DBQ
    Given User get the testdata for product class for testcase id AT_DS_015_DBQ
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_DS_015_DBQ
    Given User get the testdata for product class for testcase id AT_DS_016_DBQ
    And User get the product class from db if its present as per the user need
    And Update the product class in main sheet for testcase id AT_DS_016_DBQ

  @AT_DS_001_DBQ
  Scenario: 131191- Checking the Control Record and Product class required parameter setup for Deal Structure
    Given navigate to IIS Param Cloud Application and login with valid credentials
    And User_DS get testdata for AT_DS_001_DBQ
    And User Navigate to ProductClass Maintenance M003MT screen
    And User_DS Cick on Search Button in maintenance under Product Class
    And User_DS Enter The Product class in Class tab under Product Class
    And User_DS Select The Product Class Row
    And User_DS Click on Additional Information in maintanace under Product Class
    And User_DS check the Allow Deal Restructuring Flag in Deal Detain Tab
    And User_DS Click on Repayment Plan in Additional Information
    And User_DS Validate the Accrual Basic Tab
    And User_DS Click on Save Button in Maintenance under Product Class
    And User close the current active screen

  @AT_DS_002_DBQ
  Scenario: 131192-Create Investment deal
    Given navigate to IIS Cloud application and login with valid credentials
    And User_DS get testdata for AT_DS_002_DBQ
    And User Navigate to T022 maintenance screen in IIS application
    And User_DS enter the Party in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Category in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Product Class in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Deal Currency in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Tenure Periodicity Number in maintenance under Investment Deals Combined without Trade Deal
    And User_DS select the Tenure Periodicity Type in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Yield Percentage in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Amount in maintenance under Investment Deals Combined without Trade Deal
    And User_DS click the Contributor details tab in maintenance under Investment Deals Combined without Trade Deal
    And User_DS double click the Contributor details row in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the nostro account details in contributor tab under maintenance in Investment Deals Combined without Trade Deal
    And User_DS enter the party value in contributor tab under maintenance in Investment Deals Combined without Trade Deal
    And User_DS enter the maturity account details in contributor tab under maintenance in Investment Deals Combined without Trade Deal
    And User_DS click the save button in maintenance under Investment Deals Combined without Trade Deal
    And User_DS click Confirmation yes
    And User_DS click Information ok
    And User_DS click the Repayment plan button in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the No of Payment in in maintenance under Investment Deals Combined without Trade Deal
    And User_DS uncheck the compounding grace period flag under maintenance in Investment Deals Combined without Trade Deal
    And User_DS click the create schedule button in repayment tab under maintenance in Investment Deals Combined without Trade Deal
    And User_DS get the Installment amount
    And User_DS close the repayment tab under maintenance in Investment Deals Combined without Trade Deal    
    And User_DS validate button in maintenance under Investment Deals Combined without Trade Deal
    And User_DS click Confirmation yes
    And User_DS Store Deal Created
    And User close the current active screen
    #approve
    And User_DS get testdata for AT_DS_002_DBQ
    And User Navigate to T022 Approve screen in IIS application
    And User_DS search the deal number in searchgrid under Approve menu in Investment Deals Combined without Trade Deal
    And User_DS double click the searchgrid row in Approve menu under Investment Deals Combined without Trade Deal
    When User_DS click the Approve button Approve menu in under Investment Deals Combined without Trade Deal
    And User_DS click Confirmation yes
    And User_DS click Information ok
    And User_DS verify the deal is created and approved using Db query
    #JV
    And User_DS click the Maintenance under Investment Deals Combined without Trade Deal
    And User_DS click on the search button at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS search the deal number in seacrh grid at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS double click on the retrieved rec in search grid at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS Click Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal
    And User_DS Click Journal Voucher Details In Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal

  @AT_DS_003_DBQ
  Scenario: 131193-Run Accrual and check the JV posting
    Given navigate to IIS Cloud application and login with valid credentials
    And User_DS get testdata for AT_DS_003_DBQ
    And User Navigate to T10EMF Final Accural Screen in IIS Application
    And User_DS Enable the Specific Deal Flag in Final Accruals in Periodical Processing
    And User_DS Search the DealNo in Search grid in Final Accruals under Periodical Processing
    And User_DS Click the Ok Button under Final Accruals in Periodical Processing
    And User close the current active screen
    And User_DS Click the confirm change Button under Final Accruals in Periodical Processing
    #JV
    And User Navigate to T022 maintenance screen in IIS application
    And User_DS click on the search button at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS search the deal number in seacrh grid at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS double click on the retrieved rec in search grid at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS Click Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal
    And User_DS Click Journal Voucher Details In Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal
    And User_DS Check Journal Voucher Details In Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal

  @AT_DS_004_DBQ
  Scenario: 131194- Create Settlement for the first Installment
    Given navigate to IIS Cloud application and login with valid credentials
    And User_DS click the maintenance menu under Settlement module
    And User_DS get testdata for AT_DS_004_DBQ
    And User_DS enter the Deal number in maintenance menu under Settlement
    And User_DS enter the Amount received from party in maintenance menu under Settlement
    When User_DS click the Automatic Allocation button in maintenance menu under Settlement
    When User_DS click the Save button in maintenance menu under Settlement
    And User close the current active screen
    #SettlementApprove
    And User_DS click the approve menu under Settlement module
    And User_DS get testdata for AT_DS_004_DBQ
    And User_DS enter the settlement number in searchgrid under approve menu in Settlement
    And User_DS double click the searchgrid row in approve menu under Settlement
    And User_DS click the Approve button in approve menu under Settlement
    And User close the current active screen
    #JV
    And User_DS click the maintenance menu under Settlement module
    And User_DS click on search button on settlement maintanance
    And User_DS get testdata for AT_DS_004_DBQ
    And User_DS search the settlementNo in maintanance screen
    And User_DS Select the new settlement in maintanance screen
    And User_DS click on JV details in maintanance under settlement
    And User_DS Check entries for past dues in maintanance under settlement

  @AT_DS_007_DBQ
  Scenario: 131203-Checking the Control Record and Product class required parameter setup for Deal Structure
    Given navigate to IIS Param Cloud Application and login with valid credentials
    And User_DS get testdata for AT_DS_007_DBQ
    And User_DS Click on Maintenance in  Product Class under Parameter
    And User_DS Cick on Search Button in maintenance under Product Class
    And User_DS Enter The Product class in Class tab under Product Class
    And User_DS Select The Product Class Row
    And User_DS Click on Additional Information in maintanace under Product Class
    And User_DS check the Allow Deal Restructuring Flag in Deal Detain Tab
    And User_DS Click on Repayment Plan in Additional Information
    And User_DS Validate the Accrual Basic Tab
    And User_DS Click on Save Button in Maintenance under Product Class
    And User_DS click Ok button Information Popup
    And User close the current active screen

  @AT_DS_009_DBQ
  Scenario: 131197- Checking the Control Record and Product class required parameter setup for Deal Structure
    Given navigate to IIS Param Cloud Application and login with valid credentials
    And User_DS get testdata for AT_DS_009_DBQ
    And User_DS Click on Maintenance in  Product Class under Parameter
    And User_DS Cick on Search Button in maintenance under Product Class
    And User_DS Enter The Product class in Class tab under Product Class
    And User_DS Select The Product Class Row
    And User_DS Click on Additional Information in maintanace under Product Class
    And User_DS check the Allow Deal Restructuring Flag in Deal Detain Tab
    And User_DS Click on Repayment Plan in Additional Information
    And User_DS Validate the Accrual Basic Tab
    And User_DS Click on Save Button in Maintenance under Product Class
    And User_DS click Ok button Information Popup
    And User close the current active screen

  @AT_DS_010_DBQ
  Scenario: 131198-Create Investment deal
    Given navigate to IIS Cloud application and login with valid credentials
    And User_DS get testdata for AT_DS_010_DBQ
    And User Navigate to T022 maintenance screen in IIS application
    And User_DS enter the Party in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Category in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Product Class in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Deal Currency in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Tenure Periodicity Number in maintenance under Investment Deals Combined without Trade Deal
    And User_DS select the Tenure Periodicity Type in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Yield Percentage in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Amount in maintenance under Investment Deals Combined without Trade Deal
    And User_DS click the Contributor details tab in maintenance under Investment Deals Combined without Trade Deal
    And User_DS double click the Contributor details row in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the nostro account details in contributor tab under maintenance in Investment Deals Combined without Trade Deal
    And User_DS enter the party value in contributor tab under maintenance in Investment Deals Combined without Trade Deal
    And User_DS enter the maturity account details in contributor tab under maintenance in Investment Deals Combined without Trade Deal
    And User_DS click the save button in maintenance under Investment Deals Combined without Trade Deal
    And User_DS click Confirmation yes
    And User_DS click Information ok
    And User_DS click the Repayment plan button in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the No of Payment in in maintenance under Investment Deals Combined without Trade Deal
    And User_DS uncheck the compounding grace period flag under maintenance in Investment Deals Combined without Trade Deal
    And User_DS click the create schedule button in repayment tab under maintenance in Investment Deals Combined without Trade Deal
    And User_DS get the Installment amount
    And User_DS close the repayment tab under maintenance in Investment Deals Combined without Trade Deal    
    And User_DS validate button in maintenance under Investment Deals Combined without Trade Deal
    And User_DS click Confirmation yes
    And User_DS Store Deal Created
    And User close the current active screen
    #approve
    And User_DS get testdata for AT_DS_010_DBQ
    And User Navigate to T022 Approve screen in IIS application
    And User_DS search the deal number in searchgrid under Approve menu in Investment Deals Combined without Trade Deal
    And User_DS double click the searchgrid row in Approve menu under Investment Deals Combined without Trade Deal
    When User_DS click the Approve button Approve menu in under Investment Deals Combined without Trade Deal
    And User_DS click Confirmation yes
    And User_DS click Information ok
    And User_DS verify the deal is created and approved using Db query
    #JV
    And User_DS get testdata for AT_DS_010_DBQ
    And User_DS click the Maintenance under Investment Deals Combined without Trade Deal
    And User_DS click on the search button at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS search the deal number in seacrh grid at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS double click on the retrieved rec in search grid at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS Click Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal
    And User_DS Click Journal Voucher Details In Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal

  @AT_DS_011_DBQ
  Scenario: 131199-Run Accrual and check the JV posting
    Given navigate to IIS Cloud application and login with valid credentials
    And User_DS get testdata for AT_DS_011_DBQ
    And User Navigate to T10EMF Final Accural Screen in IIS Application
    And User_DS Enable the Specific Deal Flag in Final Accruals in Periodical Processing
    And User_DS Search the DealNo in Search grid in Final Accruals under Periodical Processing
    And User_DS Click the Ok Button under Final Accruals in Periodical Processing
    And User close the current active screen
    And User_DS Click the confirm change Button under Final Accruals in Periodical Processing
    #JV
    And User_DS get testdata for AT_DS_011_DBQ
    And User Navigate to T022 maintenance screen in IIS application
    And User_DS click on the search button at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS search the deal number in seacrh grid at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS double click on the retrieved rec in search grid at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS Click Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal
    And User_DS Click Journal Voucher Details In Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal
    And User_DS Check Journal Voucher Details In Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal

  @AT_DS_012_DBQ
  Scenario: 131200- Create Settlement for the first Installment
    Given navigate to IIS Cloud application and login with valid credentials
    And User_DS click the maintenance menu under Settlement module
    And User_DS get testdata for AT_DS_012_DBQ
    And User_DS enter the Deal number in maintenance menu under Settlement
    And User_DS enter the Amount received from party in maintenance menu under Settlement
    When User_DS click the Automatic Allocation button in maintenance menu under Settlement
    When User_DS click the Save button in maintenance menu under Settlement
    And User close the current active screen
    #SettlementApprove
    And User_DS click the approve menu under Settlement module
    And User_DS get testdata for AT_DS_012_DBQ
    And User_DS enter the settlement number in searchgrid under approve menu in Settlement
    And User_DS double click the searchgrid row in approve menu under Settlement
    And User_DS click the Approve button in approve menu under Settlement
    And User close the current active screen
    #JV
    And User_DS click the maintenance menu under Settlement module
    And User_DS click on search button on settlement maintanance
    And User_DS get testdata for AT_DS_012_DBQ
    And User_DS search the settlementNo in maintanance screen
    And User_DS Select the new settlement in maintanance screen
    And User_DS click on JV details in maintanance under settlement
    And User_DS Check entries for past dues in maintanance under settlement

  @AT_DS_013_DBQ
  Scenario: 131204-Create Investment deal
    Given navigate to IIS Cloud application and login with valid credentials
    And User_DS get testdata for AT_DS_013_DBQ
    And User Navigate to T022 maintenance screen in IIS application
    And User_DS enter the Party in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Category in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Product Class in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Deal Currency in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Tenure Periodicity Number in maintenance under Investment Deals Combined without Trade Deal
    And User_DS select the Tenure Periodicity Type in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Yield Percentage in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the Amount in maintenance under Investment Deals Combined without Trade Deal
    And User_DS click the Contributor details tab in maintenance under Investment Deals Combined without Trade Deal
    And User_DS double click the Contributor details row in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the nostro account details in contributor tab under maintenance in Investment Deals Combined without Trade Deal
    And User_DS enter the party value in contributor tab under maintenance in Investment Deals Combined without Trade Deal
    And User_DS enter the maturity account details in contributor tab under maintenance in Investment Deals Combined without Trade Deal
    And User_DS click the save button in maintenance under Investment Deals Combined without Trade Deal
    And User_DS click Confirmation yes
    And User_DS click Information ok
    And User_DS click the Repayment plan button in maintenance under Investment Deals Combined without Trade Deal
    And User_DS enter the No of Payment in in maintenance under Investment Deals Combined without Trade Deal
    And User_DS uncheck the compounding grace period flag under maintenance in Investment Deals Combined without Trade Deal
    And User_DS click the create schedule button in repayment tab under maintenance in Investment Deals Combined without Trade Deal
    And User_DS get the Installment amount
    And User_DS close the repayment tab under maintenance in Investment Deals Combined without Trade Deal    
    And User_DS validate button in maintenance under Investment Deals Combined without Trade Deal
    And User_DS click Confirmation yes
    And User_DS Store Deal Created
    And User close the current active screen
    #approve
    And User_DS get testdata for AT_DS_013_DBQ
    And User Navigate to T022 Approve screen in IIS application
    And User_DS search the deal number in searchgrid under Approve menu in Investment Deals Combined without Trade Deal
    And User_DS double click the searchgrid row in Approve menu under Investment Deals Combined without Trade Deal
    When User_DS click the Approve button Approve menu in under Investment Deals Combined without Trade Deal
    And User_DS click Confirmation yes
    And User_DS click Information ok
    And User_DS verify the deal is created and approved using Db query
    #JV
    And User_DS click the Maintenance under Investment Deals Combined without Trade Deal
    And User_DS click on the search button at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS search the deal number in seacrh grid at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS double click on the retrieved rec in search grid at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS Click Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal
    And User_DS Click Journal Voucher Details In Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal

  @AT_DS_014_DBQ
  Scenario: 131205-Run Accrual and check the JV posting
    Given navigate to IIS Cloud application and login with valid credentials
    And User_DS get testdata for AT_DS_014_DBQ
    And User Navigate to T10EMF Final Accural Screen in IIS Application
    And User_DS Enable the Specific Deal Flag in Final Accruals in Periodical Processing
    And User_DS Search the DealNo in Search grid in Final Accruals under Periodical Processing
    And User_DS Click the Ok Button under Final Accruals in Periodical Processing
    And User close the current active screen
    And User_DS Click the confirm change Button under Final Accruals in Periodical Processing
    #JV
    And User_DS get testdata for AT_DS_014_DBQ
    And User Navigate to T022 maintenance screen in IIS application
    And User_DS click on the search button at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS search the deal number in seacrh grid at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS double click on the retrieved rec in search grid at Maintenance under Investment Deals Combined without Trade Deal
    And User_DS Click Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal
    And User_DS Click Journal Voucher Details In Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal
    And User_DS Check Journal Voucher Details In Payment Instruction In mainteance under Investment Deals Combined Without Trad Deal

  @AT_DS_015_DBQ
  Scenario: 131206- Create Settlement for the first Installment
    Given navigate to IIS Cloud application and login with valid credentials
    And User_DS click the maintenance menu under Settlement module
    And User_DS get testdata for AT_DS_015_DBQ
    And User_DS enter the Deal number in maintenance menu under Settlement
    And User_DS enter the Amount received from party in maintenance menu under Settlement
    When User_DS click the Automatic Allocation button in maintenance menu under Settlement
    When User_DS click the Save button in maintenance menu under Settlement
    #SettlementApprove
    And User_DS click the approve menu under Settlement module
    And User_DS get testdata for AT_DS_015_DBQ
    And User_DS enter the settlement number in searchgrid under approve menu in Settlement
    And User_DS double click the searchgrid row in approve menu under Settlement
    And User_DS click the Approve button in approve menu under Settlement
    And User close the current active screen
    #JV
    And User_DS click the maintenance menu under Settlement module
    And User_DS click on search button on settlement maintanance
    And User_DS get testdata for AT_DS_015_DBQ
    And User_DS search the settlementNo in maintanance screen
    And User_DS Select the new settlement in maintanance screen
    And User_DS click on JV details in maintanance under settlement
    And User_DS Check entries for past dues in maintanance under settlement

  @AT_DS_016_DBQ
  Scenario: 131207 Checking the Deal Incidental charges
    Given navigate to IIS Cloud application and login with valid credentials
    And User_DS Click Maintenance Screen Under T07 Sub Menu
    And User_DS get testdata for AT_DS_016_DBQ
    And User_DS Search Deal Number in T07 Maintenance Screen
    And User_DS Search Code In Charge Code under T07 Maintenance Screen
    And User_DS Select Remaining Installments under Charge Allocation Criteria under T07 Maintenance Screen
    And User_DS Click Save Button in T07
    And User_DS click Confirmation ok in Pop Up
    And User_DS Click Information ok in Transaction saved successfully
    And User close the current active screen
    #APPROVE
    And User_DS Click Approve Screen In T07
    And User_DS get testdata for AT_DS_016_DBQ
    And User_DS Search deal Serial No In T07
    And User_DS Select the searched Deal no In T07
    And User_DS Click Approve button in T07
    And User_DS click Confirmation ok in Pop Up
    #And User_DS Click Confirmation Yes In Amount exceeds Amount available Warning
    And User_DS Click Information ok in Transaction saved successfully
    And User close the current active screen
