pipeline {
  agent any
  environment {
    TF_IN_AUTOMATION = 'true'
    AWS_SHARED_CREDENTIALS_FILE='/root/.aws/credentials'
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