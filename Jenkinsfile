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
        stage ("Merge pull request to master") {
            when {
                 expression {
                    currentBuild.result == 'SUCCESS'
                 }
            }
            steps {
                 echo 'Need command to merge into master'
              }
            }
        }
    }
}
