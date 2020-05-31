pipeline {
    agent any
	environment{
		DEPLOY_TO='productions'
	}
    stages {
        stage('Build') {
            when {
                beforeAgent true
                branch 'master'
            }

            steps {
                echo 'Deploying'
            }
        }
    }
}
