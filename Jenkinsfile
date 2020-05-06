pipeline {
   agent none
   environment {
       first_path = get_first()
   }
   stages {
       stage('example') {
            agent { label 'master' }
            steps {
                print(env.first_path)
            }
        }
    }
}
