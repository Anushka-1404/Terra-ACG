pipeline {
    agent any

    tools {
        git 'DefaultGit'
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
        stage('Terraform Destroy') {
            when {
                expression {
                    return params.RUN_DESTROY == true
                }
            }
            steps {
                bat 'terraform destroy -auto-approve -var "credentials_file=%GOOGLE_APPLICATION_CREDENTIALS%"'
            }
        }
    }

    parameters {
        booleanParam(name: 'RUN_DESTROY', defaultValue: false, description: 'Check to run terraform destroy')
    }
}
