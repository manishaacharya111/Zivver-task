pipeline {
    agent any

    stages {
        stage('SCM Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/manishaacharya111/Zivver-task.git'
            }
        }
        
        stage('build Image') {
            steps {
                dir('version-server-html') {
                sh 'docker build -t zivver_page .'
                }
            }
        }
        stage('Run container') {
            steps {
                sh 'docker run -d --name zivver-container -p 8000:8080 zivver_page'
            }
        }
    }
}

