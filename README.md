# Harbormaster CircleCI Orb

![alt text](http://harbormaster.ai/wp-content/uploads/2021/03/captain_harbormaster-e1617238219491.png)

**Say goodbye to Hello World!**

The Harbormaster Orb is a simple, yet powerful way to use CircleCI to automate the generation of software projects to produce fully functional applications that can be deployed to, tested, and run through your CircleCI pipeline. It includes generating the CircleCI config.yml necessary to execute a pipeline.

[Learn more ](http://www.harbormaster.ai/) about Harbormaster.

![alt text](http://harbormaster.ai/wp-content/uploads/2021/04/harbormaster-orb-how-it-works.png)

## Declarations

### Orb Declaration
    orbs:
      harbormaster/projectgenerator@2.1.4

### Job Declaration
    workflows:
      your_work_flow:
        jobs:
          - harbormaster/generate:
            project-as-code-yaml-file: "src/examples/project.as.code/angular-project-as-code.yml"


## Getting Started

#### Harbormaster API Token

To use this Orb, you must first register at platform.harbormaster.ai to get your own API token and assign a Personal Git Access Token to ensure uninterrupted secure Git commits by Harbormaster

Once registered, create an environmental variable on CircleCI named HARBORMASTER__API__TOKEN and assign it your Harbormaster API token..

See https://circleci.com/docs/2.0/env-vars/ for more details on assigning an environment variable.

#### Using Git
**Project Commit**

In order for Harbormaster to commit the generated project files to your Git repo, you must edit a Project-as-Code YAML file and 
supply your username, possibly your password, and other relevant fields to the Git section.

Keep in mind direct password usage on GitHub and Bitbucket will soon be deprecated, in favor of personal Git access tokens. Create a personal access token and provide it as part of your user details on Harbormaster.

**Create The Repository**

Be sure to create the Git repository before generating the project.

#### Using Docker
If using Docker, in order for Harbormaster to push the Docker image created as part of the pipeline processing, be sure to apply the correct
credentials and repo related information within the docker section of the Project-as-Code YAML file.


#### Workflows
	workflows:
		version: 2
		app-gen-workflow:
			jobs:
			- generate-devops-project

## Project As Code Examples 

For project generation to work, Harbormaster requires a mandatory YAML file. It is known as a Project-As-Code file. This file is referenced relative to the root of your Git repository since they are being accessed from the Orb.  It contains the directorives and data options to guide Harbormaster to generate the DevOps application and project you are targetting.

Visit [here](https://harbormaster.ai/harbormaster-project-generation/) to to learn about the Project-as-Code file content.

Visit [here](https://github.com/Harbormaster-AI/circle.ci.orb/tree/main/src/examples) to view all sample model and Project-as-Code YAML configuration files.


> Use one of the provided sample project-as-code examples as a starting point.  Fill it out and replace existing values with those relevant to your project, especially the Git and Docker related params.
  
