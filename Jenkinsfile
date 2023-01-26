pipeline {
agent any
    tools { 
      maven 'Maven' 
     
    }
    stages {
        stage ('Stage -1: clone Git-Repo') {
        steps {
            echo "Pulling changes from branch main and from repo "
            checkout poll: false,
            scm: [
            $class: 'GitSCM',
            branches: [[name: "main"]],
            doGenerateSubmoduleConfigurations: false,
            extensions: [[$class: 'CleanBeforeCheckout']],
            extensions: [[$class: 'CloneOption', depth: 1, noTags: false, reference: '', shallow: true]],
            gitTool: 'Default',
            userRemoteConfigs: [[url: "https://github.com/nabajyotimodak/Hello-World-Nabajyoti.git"]]
  ]
                }
            }
        stage ('Stage-2 Building the Job') {
        steps {
            sh 'mvn clean install'
        }
        }
        stage ('Stage-3 Building the Docker Image') {
        steps {
            sh 'docker build -t apacheimage .'
        }
        }
        }
}
