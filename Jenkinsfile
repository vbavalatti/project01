pipeline {
  agent any
  environment {
    AWS_SECRET_ACCESS_KEY = credentials("AWS Credentials")
  }

  stages {
    stage('Init TF') {
      steps {
        sh '''
          ls -al
          sed -i "s|/home/dungpham/.aws/credentials|/root/.aws/credentials|g" main.tf
          cat main.tf
          terraform init
        '''
      }
    }

    stage('Plan TF') {
      steps {
        sh '''
          terraform plan
        '''
      }
    }
  }
}