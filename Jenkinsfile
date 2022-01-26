pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sh './gradlew clean cucumber -P tags='@ODBC''
            }
        }
    }
}
