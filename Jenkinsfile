pipeline
{agent any
    stages{
        stage("Build")
        {
            steps
            {
                bat 'make'
            }
        }
        stage("Test")
        {
            steps
            {
                bat 'make test'
            }
        }
         stage("Deploy")
        {
            steps
            {
                bat 'make deploy'
            }
        }
    }
}