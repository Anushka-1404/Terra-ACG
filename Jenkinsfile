pipeline {
    agent any

    tools {
        git 'DefaultGit' // This should match the name you configured in Jenkins > Global Tool Configuration
    }

    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('gcp-key')
    }

    stages {
        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                bat 'terraform plan -var "credentials_file=%GOOGLE_APPLICATION_CREDENTIALS%"'
            }
        }
        stage('Terraform Apply') {
            steps {
                bat 'terraform apply -auto-approve -var "credentials_file=%GOOGLE_APPLICATION_CREDENTIALS%"'
            }
        }
    }
}
