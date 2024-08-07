pipeline {
    agent any

    environment {
        // Definiraj varijable okoline ako su potrebne
        NODE_ENV = 'production'
    }

    stages {
        stage('Checkout') {
            steps {
                // Kloniraj repozitorij iz specifične grane
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
                // Na primjer, možeš koristiti rsync za prijenos na server
                // sh 'rsync -avz ./out/ user@server:/path/to/deploy'
                echo 'Deploy stage not configured'
            }
        }
    }

    post {
        always {
            // Čišćenje, obavijesti, itd.
            cleanWs()
        }
    }
}
