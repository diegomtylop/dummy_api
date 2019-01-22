node { 
    stage('First stage SCM') {
        echo 'Hello world from a pipeline defined in a file inside the github repo' 
    }
    stage('Building') {
        echo 'Building...'
        sh 'mvn package' 
    }
    stage('Test') {
        echo 'Testing....'
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}