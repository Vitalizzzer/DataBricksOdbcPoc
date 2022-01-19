
pipeline {
    agent {
        docker { image 'cypress/included:3.2.0'}
    }
    stages {
        stage('Test') {
            steps {
             sh 'virtualenv venv && . venv/bin/activate && pip install behave'
            }
        }
    }
}
