pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker') {
            steps {
                script {
                    docker.build(atividade-java)
                }
            }
        }
        stage('Executar aplicação') {
            steps {
                sh '''
                docker run --rm -v $(pwd):/app -w /app atividade
                '''
            }
        }
    }
}
