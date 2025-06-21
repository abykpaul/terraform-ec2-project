@Library('my-shared-lib') _

pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'us-east-1'
    }

    stages {
        stage('AWS Login') {
            steps {
                script {
                    awsLogin()
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    terraformPipeline('dev')
                }
            }
        }
    }
}