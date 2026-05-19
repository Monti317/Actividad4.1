pipeline {
    agent any

    environment {
        ROOT_PASSWORD = credentials('Admin1.')
    }

    stages {

        stage('Deploy') {
            steps {
                sh 'docker compose down -v || true'
                sh 'docker compose up --build -d'
            }
        }

    }
}
