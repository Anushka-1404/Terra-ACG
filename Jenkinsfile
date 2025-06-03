pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Anushka-1404/Terra-ACG.git'
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
