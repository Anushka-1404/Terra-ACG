pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-repo.git'
            }
        }
        stage('Initialize Terraform') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Plan Changes') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Apply Changes') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
