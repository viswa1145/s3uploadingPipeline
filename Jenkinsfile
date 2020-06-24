def getEnvFromBranch(branch) {
  if (branch == 'master') {
    return 'production'
  } else {
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
