pipeline {
    agent any
    environment {
        IMAGE_NAME = 'wbrymo/java-webappcal'   // New, unique image name
    }

    stages {
        stage('Clone Repo') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/project-1']],
                    userRemoteConfigs: [[url: 'https://github.com/wbrymo/cee-final-proj.git']]])
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${IMAGE_NAME}:latest")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-login') {
                        docker.image("${IMAGE_NAME}:latest").push()
                    }
                }
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                    # Stop and remove existing container if it exists
                    docker rm -f calc-container || true

                    # Run container with updated port mapping
                    docker run -d --name calc-container -p 8081:8080 ${IMAGE_NAME}:latest
                '''
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
