pipeline {
agent any
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
        }
}
