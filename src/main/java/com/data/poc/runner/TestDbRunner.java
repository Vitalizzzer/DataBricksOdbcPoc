package com.data.poc.runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import org.junit.runner.RunWith;
import org.testng.annotations.DataProvider;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {
                "pretty",
                "html:cucumber-report/cucumber-html-report.html",
                "json:cucumber-report/cucumber-report.json",
                "com.epam.reportportal.cucumber.StepReporter"
        },
        features = {"classpath:features"},
        glue={"com.data.poc.steps.TestDbSteps"},
        strict = true

)
public class TestDbRunner extends AbstractTestNGCucumberTests {

        @Override
        @DataProvider(parallel = false)
        public Object[][] scenarios() {
                return super.scenarios();
        }
}
