pipeline {
  agent any

    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
       stage('Run') {
            steps {
                 sh 'npm start'
                 
            }
        }
       stage('get request') {
            steps {
                 sh 'curl http://localhost:8065'
                 
            }
        }
        
    }
}
