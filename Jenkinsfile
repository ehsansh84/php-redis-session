pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh "docker build -t php-redis ."
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                
                sh 'docker stop php-redis || true && docker rm php-redis || true'
                sh 'docker run -d --restart always --name php-redis -p 8101:8000 php-redis'
            }
        }
    }
}

