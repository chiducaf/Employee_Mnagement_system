pipeline {
agent any

tools {
maven "M2_HOME"
}
stages {
stage('SCM_Checkout') {
steps {
// Get some code from a GitHub repository
git 'https://github.com/chiducaf/Employee_Mnagement_system.git'
}
}
stage('Build') {
steps {
bat "mvn -Dmaven.test.failure.ignore=true clean install"
}
}
stage('CodeCoverage') {
steps {
bat "mvn sonar:sonar"
}
}
stage ('Deploy To Server') {
steps {
bat '''COPY "C:\\Program Files (x86)\\Jenkins\\workspace\\Emplyee_Managment\\target\\EmployeeManagementSystem.war" "C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps"'''   }}}}