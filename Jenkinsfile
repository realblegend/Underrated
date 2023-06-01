pipeline {
    agent any

    stages {
        stage('Build and Push Docker Image') {
            steps {
                // Checkout code from Git repository
                checkout scm

                // Build Docker image
                script {
                    sudo docker.build('realblegend/my-devclass-app:1.1')
                }

            }
        }
    }

   post {
        success {
            // Push Docker image to Docker Hub
            script {
                docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                    docker.image('realblegend/my-devclass-app:1.1').push()
                }
            }
        }
    }
}
