pipeline {
  agent any

  stages {

    stage("Checkout source") {
      steps {
        git url: 'https://github.com/tscampos/live-jenkins-terraform-aws.git', branch: 'main'
      }
  }
}
