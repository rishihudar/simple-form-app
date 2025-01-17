pipeline {
    agent any
    stages {
        stage('Set Maven Permissions') {
            steps {
                echo 'Setting executable permissions for Maven Wrapper...'
                sh 'chmod +x mvnw'
            }
        }
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
