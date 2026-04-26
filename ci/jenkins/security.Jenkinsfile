pipeline {
    agent { kubernetes { yamlFile 'ci/jenkins/agent-pod.yaml' } }
    options { timeout(time: 30, unit: 'MINUTES') }
    stages {
        stage('Trivy FS')          { steps { sh 'trivy fs --exit-code 1 --severity CRITICAL,HIGH .' } }
        stage('Trivy image')       { steps { sh 'make scan-images' } }
        stage('Semgrep SAST')      { steps { sh 'semgrep ci --config=auto --error' } }
        stage('Gitleaks')          { steps { sh 'gitleaks detect --no-git --redact' } }
        stage('Checkov IaC')       { steps { sh 'checkov -d infra/ --framework terraform --quiet' } }
        stage('Hadolint')          { steps { sh 'find . -name Dockerfile | xargs -n1 hadolint' } }
        stage('OpenSSF Scorecard') { steps { sh 'scorecard --repo=github.com/prabhat-roy/GridForge' } }
    }
}
