Feature: Insert and verify data
    @ODBC @TestCaseKey=TGTB-T3
    Scenario Outline: Insert and verify data
        
        Given table with name employee
          When insert user with first name <FirstName> and last name <LastName>
          Then correct data with <FirstName> and <LastName> appears
        
          Examples:
            | FirstName | LastName |
            | John      | Smith    |