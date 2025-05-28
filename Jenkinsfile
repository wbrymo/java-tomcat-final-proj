pipeline {
    agent any
    environment {
        IMAGE_NAME = 'wbrymo/java-calculator'
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
                    docker rm -f calculator-container || true
                    docker run -d --name calculator-container -p 8080:8080 ${IMAGE_NAME}:latest
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

