### ODBC Testing POC
The test suite executed ODBC tests with Sqlite database

### Prerequisites
Add environment variables for Report Portal in terminal:
export RP_UUID=<UUID>
export RP_ENDPOINT=<REPORT_PORTAL_ADDRESS>
export RP_PROJECT=<PROJECT_NAME>
export RP_LAUNCH=<LAUNCH_NAME>

### Execution
Run in terminal in MAC/Linux:
```bash 
./gradlew clean cucumber -P tags='@ODBC'
```

Run in terminal in Windows:
```bash 
gradlew clean cucumber -P tags='@ODBC'
```