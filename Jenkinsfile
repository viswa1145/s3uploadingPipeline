pipeline {
  agent {
    node {
      label 'Master'
      customWorkspace '/var/lib/jenkins/workspace/'
    }
  }
  stages {
    stage('Example Build') {
      steps {
        sh 'mvn -B clean verify'
      }
    }
  }
}
