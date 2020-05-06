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
                sh 'mvn -f $WORKSAPCE/pom.xml clean install'
            }
        }

    }
}
