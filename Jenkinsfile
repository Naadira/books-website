pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git url: 'https://github.com/Naadira/books-website.git', branch: 'main'
                echo 'Code pulled from GitHub.'
            }
        }

        stage('Terraform Init') {
            steps {
                bat 'terraform init'
                echo 'Terraform initialized.'
            }
        }

        stage('Terraform Apply') {
            steps {
                bat 'terraform apply -auto-approve'
                echo 'Terraform applied.'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the HTML file...'
                
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution finished.'
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}

