pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building the Java application...'
                sh './mvnw clean package'
            }
        }
        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t simple-form-app .'
            }
        }
        stage('Docker Run') {
            steps {
                echo 'Starting the application container...'
                sh 'docker-compose up -d'
            }
        }
    }
}
