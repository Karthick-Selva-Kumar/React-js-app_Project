pipeline {
    agent any

    stages {

        stage('Changing the File Permission') {
            steps {
                sh 'chmod +x build.sh'
                sh 'chmod +x deploy.sh'
            }
        }

        stage('Executing the File') {
            steps {
                sh './build.sh'
                sh './deploy.sh'
            }
        }
    }
}
