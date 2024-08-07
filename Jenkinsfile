pipeline {
    agent {
        docker {
            image 'node:16'
        }
    }

    environment {
        NODE_ENV = 'production'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Armel90/medium-like-app.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install --unsafe-perm=true --allow-root'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }

        stage('Test') {
            steps {
                sh 'npm test'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy stage not configured'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
