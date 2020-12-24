# Jenkins MultiBranch Pipeline
This is Demonstration project for Multibranch pipelines using JenkinsFile (Pipeline as code). We have created following branches:
        1. master (default)
        2. dev
        3. feature-1
        4. feature-2
        5. bug-fx  
    
 The jenkinsfile are available only of the dev and master branches so those job will only show up in jenkins.
 also the regular experisson matches for dev or master or feature branches only. The bug-fix branch is not included in the build.
    


# Jenkins Setup:

### Install Jenkins on Docker
docker run -p 8989:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts

#### Install Required plugins
Install Git , maven, Declarative pipelines, Pipeline Stage view and other plugins


#### Configure GIT Credentials
Configure Usename/password in global credentials

#### Configure a multibranch pipeline

    1. Add a GIT "Branch sources".
    2. Add the GIT URL : https://github.com/dipsscor/JenkinsMultiBranch-pipeline.git.
    3. Add regular expression for branch filtering:
        ^dev|master|feature.*$
        

#### Add OpenJDK and Maven Plugins
    Click "Manage Jenkins" > "Global Tool Configuration" > "Add JDK" (near JDK installations)

    Delete the java.sun.com installer. Just click "Add Installer" below and choose "Extract .zip/.tar.gz"

    Enter following:

    Label: openjdk-11

    Download URL: https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz

    Subdirectory of extracted archive: jdk-11.0.1 

    

 



# References

      https://www.youtube.com/watch?v=pMO26j2OUME&list=PLy7NrYWoggjw_LIiDK1LXdNN82uYuuuiC

