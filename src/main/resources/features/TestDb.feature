@ODBC
Feature: Verify data in database
  CRUD commands are executed and results are verified

  @1
  Scenario Outline: Insert and verify data
    Given table with name <TableName>
    When insert user with first name <FirstName> and last name <LastName> into table <TableName>
    Then correct data with <FirstName> and <LastName> appears in the table <TableName>

    Examples:
      | TableName | FirstName | LastName |
      | employee  | Vitalii   | Rymar    |

########################################################################################################################
  @2
  Scenario Outline: Update and verify data
    Given table with name <TableName>
    When insert user with first name <FirstName> and last name <LastName> into table <TableName>
    Then correct data with <FirstName> and <LastName> appears in the table <TableName>
    When update data in table <TableName> with <NewFirstName> and <NewLastName>
    Then correct data with <NewFirstName> and <NewLastName> appears in the table <TableName>

    Examples:
      | TableName | FirstName | LastName | NewFirstName | NewLastName |
      | employee  | Vitalii   | Rymar    | John         | Smith       |

########################################################################################################################
  @3
  Scenario Outline: Delete data by name and verify data
    Given table with name <TableName>
    When insert user with first name <FirstName> and last name <LastName> into table <TableName>
    Then correct data with <FirstName> and <LastName> appears in the table <TableName>
    When delete data from table <TableName> where first name = <FirstName> and last name = <LastName>
    Then data is absent with <FirstName> and <LastName> in table <TableName>

    Examples:
      | TableName| FirstName | LastName |
      | employee | Vitalii   | Rymar    |

########################################################################################################################
  @4
  Scenario Outline: Delete data by id and verify data
    Given table with name <TableName>
    When insert user with first name <FirstName> and last name <LastName> into table <TableName>
    Then correct data with <FirstName> and <LastName> appears in the table <TableName>
    When delete data from table <TableName> by id
    Then data is absent with <FirstName> and <LastName> in table <TableName>

    Examples:
      | TableName| FirstName | LastName |
      | employee | Vitalii   | Rymar    |