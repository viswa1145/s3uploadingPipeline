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
            echo "Building in ${env.targetedEnv}"
        }
    }
 }
}
