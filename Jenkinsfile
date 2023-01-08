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
                  sh "chmod +x -R ${env.WORKSPACE}"
                 sh './run.sh'
                 
            }
        }
  stage('Check-log') {
            steps {
                  sh "chmod +x -R ${env.WORKSPACE}"
                 sh './check-log.sh'
                 
            }
        }
        
    }
}
