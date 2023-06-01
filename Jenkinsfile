pipeline {
    agent any

    stages {
        stage('Build and Push Docker Image') {
            steps {
                // Checkout code from Git repository
                checkout scm

                // Build Docker image
                script {
                    sudo docker.build('realblegend/my-devclass-app:1.1.2')
                }

            }
        }
    }
}
