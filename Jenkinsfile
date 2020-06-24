def getEnvFromBranch(branch) {
  if (branch == 'master') {
    return 'production'
  }
  elif (branch == 'if_condition') {
    return 'if_condition'
 }
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
            echo "Building in ${env.targetedEnv}"
        }
    }
 }
}
