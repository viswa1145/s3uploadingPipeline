def getEnvFromBranch(branch) {
  if (BRANCH_NAME == 'master') { return 'production' }
  if (BRANCH_NAME == 'if_condition') { return 'NonProd' }
}

pipeline {
  agent any
  environment {
    targetedEnv = getEnvFromBranch(env.BRANCH_NAME)
  }
  stages {
    stage('Build') {
        steps {
          script{
            if (env.targetedEnv == 'NonProd') {
              def awsCredentials = [[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'CICD']]
              withCredentials(awsCredentials)
            }
            echo "$AWS_ACCESS_KEY_ID"
            echo "$AWS_SECRET_ACCESS_KEY"
          }
        }
    }
  }
}
