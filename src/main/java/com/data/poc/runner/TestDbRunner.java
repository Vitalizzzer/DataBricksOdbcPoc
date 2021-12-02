package com.data.poc.runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {
                "pretty",
                "html:target/cucumber-report/cucumber-html-report.html",
                "json:target/cucumber-report/cucumber-report.json",
                "com.epam.reportportal.cucumber.StepReporter"
        },
        features = {"classpath:features"},
        glue={"com.data.poc.steps.TestDbSteps"},
        strict = true

)
public class TestDbRunner {
}
