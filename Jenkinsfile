pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo 'Building the application'
                sh 'mvn -Dmaven.test.failure.ignore=true clean install'
            }
        }
        stage('test') {
            steps {
                echo 'Testing the application'
            }
        }
        stage('deploy') {
            steps {
                echo 'Deploying the application'
            }
        }
    }
}
