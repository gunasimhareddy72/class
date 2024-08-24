pipeline {
    agent any
    
    stages {
        stage('permission') {
            steps {
                echo 'Building...'
                sh 'chmod +x ./script.sh'
            }
        }
        
        stage('execute') {
            steps {
                echo 'Testing...'
                // This command will fail because 'exit 1' returns a non-zero exit code
                sh 'cat test2.txt'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh './script.sh'
            }
        }
    }
    
    post {
        always{
            sh 'touch test9.txt'
            sh 'echo "this is test9.txt hello nice to meet you" >> test9.txt'
        }
        
        success {
            echo 'This will run only if the pipeline succeeds.'
        }
        failure {
            echo 'This will run only if the pipeline fails.'
        }
    }
}
