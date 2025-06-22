@Library('my-shared-lib') _

pipeline {
    agent any

    parameters {
	    choice(name: 'ENVIRONMENT', choices: ['dev', 'prod'], description: 'Choose environment')
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
							destroyPipeline(params.ENVIRONMENT)
                        } else {
                            terraformPipeline(params.ENVIRONMENT)
                        }
                    }
                }
            }
        }
    }
}
