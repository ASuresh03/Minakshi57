package java.Runner;

import java.util.List;
import java.util.Map;

import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import dataProvider.ExcelData;
import dataProvider.ExcelTest;
import utilities.ExtentManager;
import utilities.ExtentTestManager;

public class NewExcelTestRunner {
	String path = System.getProperty("user.dir") + "\\TestData\\DBQ_IIS_testdata.xlsx"; //sheet
	ExcelData testExecution = new ExcelData(path, "TestExecution", "TestCaseID");
	Map<String, String> testExecutionData;
	ExcelTest excelTest = new ExcelTest(path, "TestExecution", "TestCaseID");
	List<String> testCaseTagsFromExcel = excelTest.getTestCaseTagsfromExcel();
	static String currentExecutionTag;

	public void excelTestArea(String tags, int listSize, int tagIndex) {

		String[] parameter = {

//				"src/test/java/IIS_DBQ",
				"src\\test\\java\\IIS_DBQ\\IslamicFinanceCalculator.feature",
//				"src\\test\\java\\features\\BudgetAndPlanning_UATBudgetSupplementary.feature",
//				"src\\test\\java\\features\\BudgetTransferExcel.feature",
				"--glue", "stepdefinitions", "--plugin",
				"pretty", "--plugin", "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:",
				"--plugin", "rerun:ReRunScenarios/FailedReRun.txt", "--tags", "@" + tags };

		CucumberRunner.run(parameter, listSize, tagIndex);

	}

	@BeforeTest
	public void beforeTest() {

		System.out.println("Test Execution Started");
		ExtentTestManager.endTest();
		ExtentManager.getInstance().flush();
	}

	@Test()
	public void test() {
		String path = System.getProperty("user.dir") + "\\TestData\\DBQ_IIS_testdata.xlsx";
		ExcelTest excelTest = new ExcelTest(path, "TestExecution", "TestCaseID");
		testCaseTagsFromExcel = excelTest.getTestCaseTagsfromExcel();
		NewExcelTestRunner newExcelTestRunner = new NewExcelTestRunner();

		for (String string : testCaseTagsFromExcel) {
			ExcelTest excelTest2 = new ExcelTest(path, "TestExecution", "TestCaseID");
			testCaseTagsFromExcel = excelTest2.getTestCaseTagsfromExcel();
			System.out.println(string);
			currentExecutionTag = string;
			ExcelData testExecution = new ExcelData(path, "TestExecution", "TestCaseID");
			testExecutionData = testExecution.getTestdata(string);
			// run the scenarios based on tags from excel
			newExcelTestRunner.excelTestArea(string, testCaseTagsFromExcel.size(),
					testCaseTagsFromExcel.indexOf(string));
		}

	}

	// get the current execution tag for before and after hooks
	public static String getCurrentExecutionTag() {
		return currentExecutionTag;
	}

	@AfterTest
	public void afterTest() {
		System.out.println("Test Execution Ended");
		ExtentTestManager.endTest();
		ExtentManager.getInstance().flush();
	}
}
