pipeline {
    agent any
    
    tools {
        jdk "1.8.0_242"
        maven "Maven 3.6.3"
    }
    stages {
        stage('Clone sources') {
            steps {
                git url: https://github.com/viswa1145/hello-world.git 
            }
        }
    }
}
