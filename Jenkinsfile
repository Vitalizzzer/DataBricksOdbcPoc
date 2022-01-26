pipeline {
    agent any
    stages {
        stage('Test') {
            when {
                expression {
                    BRANCH_NAME == 'development'
                }
            }
            steps {
                sh './gradlew clean cucumber -P tags=@ODBC'
            }
        }
    }
}
