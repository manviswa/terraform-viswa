pipeline {
    agent { node { label 'AGENT-1' } }
    options {
        ansiColor('xterm')
    }

    stages {
        stage('Init') {
            steps {
                sh'''
                    sudo cd example
                    sudo ls -ltr
                    sudo pwd
                    sudo terraform init
                '''
            }
        }
        stage('Plan') {
            steps {
                sh'''
                    sudo ls -ltr
                    sudo pwd
                    sudo cd example
                    sudo terraform plan
                '''
            }
        }
        stage('Approve') {
            steps{
                input "Shall I apply?"
            }
        }

        stage('Apply') {
            steps{
                
                sh '''
                    sudo pwd
                    sudo ls -ltr
                    sudo cd example
                    sudo terraform apply -auto-approve
                '''
            }
        }
    }

    post { 
        always { 
            echo 'I will always run whether job is success or not'
        }
        success{
            echo 'I will run only when job is success'
        }
        failure{
            echo 'I will run when failure'
        }
    }
}