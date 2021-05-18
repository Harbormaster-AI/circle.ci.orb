# Harbormaster CircleCI Orb - Project Generator

![alt text](http://harbormaster.ai/wp-content/uploads/2021/03/captain_harbormaster-e1617238219491.png)

The Harbormaster Orb is a simple, yet powerful way to leverage CircleCI to automate the generation of DevOps projects to produce fully functional applications that can be deployed to, tested, and run through your CircleCI pipeline.  Choose from a growing set of tech stacks.

[Learn more ](http://docs.harbormaster.ai/) about Harbormaster.

## High Level Overview
![alt text](http://harbormaster.ai/wp-content/uploads/2021/04/harbormaster-orb-how-it-works.png)

## Orb Declarations

### Version
    version: 2.1

### Orb Declaration
    orbs:
    harbormaster/projectgenerator@2.1.4

### Job Declaration
    jobs:
      generate-devops-project:
        docker:
          - image: 'circleci/node:latest'
        steps:
          - harbormaster/initialize:
              api-token: "DsJqTpYht3LcKb80 or PUT_YOUR_API_TOKEN_HERE"
          - harbormaster/generate_devops_project:
              project-as-code-yaml-file: "src/examples/project.as.code/angular-project-as-code.yml"

*Before proceeding, the following must be considered:*

####Using Git
**Username and Password**

In order for Harbormaster to commit the generated project files to your Git repo, you must edit the project-as-code YAML file and 
supply your username and password to the Git section.

Keep in mind direct password usage on GitHub and Bitbucket will soon be deprecated, in favor of personal Git access tokens. 

Repository:
Be sure to create the repository before generating the project.

####Using Docker
If using Docker, in order for Harbormaster to push the Docker image created as part of the pipeline processing, be sure to apply the correct
credentials and repo related information within the docker section of the project-as-code YAML file.

####Harbormaster API Token
A general purpose CircleCI user account has been created resulting in the user token above `DsJqTpYht3LcKb80`.  
This CircleCI user token will work for project generation usage.  However, as mentioned previously, you will have to apply your Git
username and password within your project-as-code YAML file.

Instead consider registering at [platform.harbormaster.ai](platform.harbormaster.ai) to get your own API token and assign a personal Git access token to ensure uninterrupted secure Git commits by Harbormaster.


#### Workflows
	workflows:
		version: 2
		app-gen-workflow:
			jobs:
			- generate-devops-project

## Project__as__Code YAML File Examples 

To invoke project generation, one mandatory YAML file is required. It is known as a _Project-as-Code_ file. This file is referenced from the root of your Git repository since they are being accessed from the Orb.

Visit [here](https://harbormaster.ai/harbormaster-project-generation/) to to learn about the Project-as-Code file content.

Visit [here](https://github.com/Harbormaster-AI/circle.ci.orb/tree/main/src/examples) to view all sample model and Project-as-Code YAML configuration files.


> Use one of the provided sample project-as-code examples as a starting point.  Fill it out and replace existing values with those relevant to your project, especially the Git and Docker related params.
  