pipeline {
    //{dockerfile true}
    agent {
        docker {
            image 'node:6-alpine'
            args '-p 30005:8080'
        }
    }
    
    /*environment {
        CI = 'true'
    }*/
    stages {
        stage('Build') {
            steps {
                cd './bulletin-board-app'
                sh 'npm install'
            }
        }
        /*stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }*/
        /*stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/kill.sh'
            }
        }*/
        stage('Deploy') {
            steps {
                sh './deployment.sh'
            }
        }
    }
}
