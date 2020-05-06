pipeline {
    agent any
    stages {
        stage('Clone sources') {
            steps {
                git url: 'https://github.com/viswa1145/hello-world.git'
            }
        }
        stage('Execute Maven') {
            steps {
                script{
                    rtMaven.run pom: 'pom.xml', goals: 'clean install', buildInfo: buildinfo
                    
                }
            }
        }
    }
}
