pipeline {
    agent any
    stages {
        stage('Clonar repositório') {
            steps {
                git 'https://github.com/LeandroSanttos/Atividade01.git'
            }
        }
        stage('Build Docker') {
            steps {
                sh 'docker build -t atividade-java .'
            }
        }
        stage('Executar aplicação') {
            steps {
                sh 'docker run --rm atividade-java'
            }
        }
    }
}