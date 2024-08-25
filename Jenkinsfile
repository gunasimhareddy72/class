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
                // This command will fail if 'test2.txt' does not exist
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
        
        
        success {
            echo 'This will run only if the pipeline succeeds.'
        }
        
        failure {
            echo 'This will run only if the pipeline fails.'
        }

        always {
            emailext (
                subject: "Pipeline status: ${BUILD_NUMBER}",
                body: '''<html>
                            <body>
                                <p>Build Status: ${BUILD_STATUS}</p>
                                <p>Build Number: ${BUILD_NUMBER}</p>
                                <p>Check the <a href="${BUILD_URL}">console output</a></p>
                            </body>
                        </html>''',
                to: 'eshwarmahadev72@gmail.com',
                from: 'eshwarmahadev72@gmail.com',
                replyTo: 'kotlagunasimha72@gmail.com',
                mimeType: 'text/html'
            )
        }
    }
}
