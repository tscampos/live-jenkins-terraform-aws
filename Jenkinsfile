pipeline {
    agent any

    stages {

        stage("Checkout source") {
            steps {
                git url: 'https://github.com/fabricioveronez/live-jenkins-terraform-aws.git', branch: 'main'
                sh 'ls'
            }
        }
    }
}