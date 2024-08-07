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
                // Kloniraj repozitorij
                git branch: 'main', url: 'https://github.com/Armel90/medium-like-app.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                // Instaliraj npm pakete
                sh 'npm install'
            }
        }

        stage('Build') {
            steps {
                // Izgradi aplikaciju
                sh 'npm run build'
            }
        }

        stage('Test') {
            steps {
                // Pokreni testove
                sh 'npm test'
            }
        }

        stage('Deploy') {
            steps {
                // Ovdje možeš dodati korake za deployment ako je potrebno
                echo 'Deploy stage not configured'
            }
        }
    }

    post {
        always {
            // Čišćenje, obavijesti, itd. Unutar 'node' bloka
            node {
                cleanWs()
            }
        }
    }
}
