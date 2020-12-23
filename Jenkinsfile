pipeline {
    agent any
    
    tools { 
        maven 'Maven' 
        jdk 'JDK' 
    }
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
                sh 'mvn surefire:test'
                sh 'mvn failsafe:integration-test'
            }
        }
        stage('deploy') {
            steps {
                echo 'Deploying the application'
            }
        }
    }
    post {
        always {
            junit 'target/surefire-reports/TEST-*.xml'
        }
    }
}
