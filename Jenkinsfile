pipeline {
    agent any
    stage ('Build') {
            steps {
                sh '/opt/maven/apache-maven-3.6.3/bin/mvn -Dmaven.test.failure.ignore=true install' 
            }
    }
}
