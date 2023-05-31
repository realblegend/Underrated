pipeline {
    agent any

    stages {
        stage('Build and Push Docker Image') {
            steps {
                // Checkout code from Git repository
                checkout scm

                // Build Docker image
                script {
                    docker.build('yourusername/my-html-app:1.0', './path/to/Dockerfile')
                }

                // Log in to Docker Hub
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                        docker.image('yourusername/my-html-app:1.0').push()
                    }
                }
            }
        }
    }
}
