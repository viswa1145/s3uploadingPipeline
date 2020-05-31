pipeline {
    agent any
	environment{
		DEPLOY_TO='productions'
	}
    stages {
        stage('Build') {
            when {
                beforeAgent true
                branch 'CI_Pipeline-Example'
            }

            steps {
                echo 'Deploying'
            }
        }
    }
}
