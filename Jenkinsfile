@Library('my-shared-lib') _

pipeline {
    agent any

    parameters {
        booleanParam(name: 'DESTROY', defaultValue: false, description: 'Set true to destroy infra')
    }

    stages {
        stage('AWS Login') {
            steps {
                script {
                    awsLogin()
                }
            }
        }

        stage('Terraform Action') {
            steps {
                script {
                    withCredentials([[
                        $class: 'AmazonWebServicesCredentialsBinding',
                        credentialsId: 'aws-ecr-creds'
                    ]]) {
                        if (params.DESTROY) {
			    destroyPipeline('dev')
                        } else {
                            terraformPipeline('dev')
                        }
                    }
                }
            }
        }
    }
}
