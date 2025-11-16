pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/<your-username>/java_simple_app.git'
            }
        }
        stage('Build JAR') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t java_simple_app:latest .'
            }
        }
        stage('Run Container') {
            steps {
                sh '''
                docker rm -f java_simple_app || true
                docker run -d --name java_simple_app -p 9090:9090 java_simple_app:latest
                '''
            }
        }
    }
}
