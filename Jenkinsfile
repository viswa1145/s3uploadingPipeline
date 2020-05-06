pipeline {
  agent {
    node {
      label 'my-defined-label'
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
