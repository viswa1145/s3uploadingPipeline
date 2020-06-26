def getEnvFromBranch(branch) {
  if (BRANCH_NAME == 'master') { return 'production' }
  if (BRANCH_NAME == 'if_condition') { return 'NonProd' }
}
def awsCredentials = [[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'CICD']]


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
              withCredentials(awsCredentials)
            }
          }
          sh 'echo "$AWS_ACCESS_KEY_ID"'
          sh 'echo "$AWS_SECRET_ACCESS_KEY"'
        }
    }
  }
}
