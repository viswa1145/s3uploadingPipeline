def getEnvFromBranch(branch) {
  if (BRANCH_NAME == 'master') { return 'production' }
  if (BRANCH_NAME == 'if_condition') { return 'NonProd' }
  else{
    return 'staging'
  }
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
            else {
               echo "Building in ${env.targetedEnv}"
            }
            echo "Nothing has been Changed"
            echo "something has been Changed"
          }
        }
    }
  }
}
