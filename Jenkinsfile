pipeline {
    agent any

    stages {
        stage('Build and Push Docker Image') {
            steps {
                // Checkout code from Git repository
                checkout scm

                // Build Docker image
                script {
                    sudo docker.build('realblegend/my-devclass-app:1.0')
                }

                // Log in to Docker Hub
                script {
                    sudo docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                        sudo docker.image('realblegend/my-devclass-app:1.0').push()
                    }
                }
            }
        }
    }
}
