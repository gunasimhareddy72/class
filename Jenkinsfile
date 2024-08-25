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
                subject: "Pipeline status: ${currentBuild.result}",
                body: '''<html>
                            <body>
                                <p>Build Status: ${currentBuild.result}</p>
                                <p>Build Number: ${currentBuild.number}</p>
                                <p>Check the <a href="${env.BUILD_URL}">console output</a></p>
                            </body>
                        </html>''',
                to: 'gunasimhareddy72@gmail.com',
                from: 'eshwarmahadev72@gmail.com',
                replyTo: 'kotlagunasimha72@gmail.com',
                mimeType: 'text/html'
            )
        }
    }
}
