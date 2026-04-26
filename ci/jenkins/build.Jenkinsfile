pipeline {
    agent { kubernetes { yamlFile 'ci/jenkins/agent-pod.yaml' } }
    parameters {
        string(name: 'SERVICE',  defaultValue: 'all', description: 'Service name or "all"')
        string(name: 'GIT_REF',  defaultValue: 'main')
    }
    options { timeout(time: 60, unit: 'MINUTES'); disableConcurrentBuilds() }
    environment { REGISTRY = 'harbor.gridforge.internal' }
    stages {
        stage('Checkout') { steps { checkout scm } }
        stage('Build')    { steps { sh 'make build' } }
        stage('Test')     { steps { sh 'make test' } }
        stage('Scan')     { steps { sh 'make scan-images' } }
        stage('Sign')     { steps { sh "cosign sign --yes ${REGISTRY}/gridforge/${params.SERVICE}:${env.GIT_COMMIT}" } }
        stage('Push')     { steps { sh 'make push' } }
    }
    post { failure { slackSend channel: '#gridforge-ci', message: "Build failed: ${env.BUILD_URL}" } }
}
