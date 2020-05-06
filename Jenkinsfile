pipeline {
    agent any
         label {
             label ""
             customWorkspace "/var/lib/jenkins/workspace/maven_project_Pipeline_1/"
         }
    stages {
        stage('Clone sources') {
            steps {
                git url: 'https://github.com/viswa1145/hello-world.git'
            }
        }
        stage('Execute Maven') {
            steps {
                sh '''
                cd $WROKSPACE
                pwd
                /opt/maven/apache-maven-3.6.3/bin/mvn  clean install
                '''
            }
        }

    }
}
