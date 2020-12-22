pipeline {
    agent any
    tools { 
        maven 'Maven' 
        jdk 'JDK' 
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }
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
