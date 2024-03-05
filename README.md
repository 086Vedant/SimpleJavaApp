# SimpleJavaApp - Thread Dump
SimpleJavaApp for use workflow 

# Add self hosted runner in git hub repo
link: https://docs.github.com/en/enterprise-cloud@latest/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners 


# Thread-dump choice 
## Make a GitHub Workflow and run it on a self-hosted runner in your AWS cluster:
### Pros:
The workflow runs directly on the instances in your AWS cluster, so you have direct access to your application processes.
You don't need to establish a separate connection or tunnel between the runner and your AWS cluster.
The workflow can be triggered on a schedule or triggered manually, making it easier to automate and manage thread dump collection.

### Cons:
You need to set up and maintain a self-hosted runner on your AWS cluster instances.
If your instances are ephemeral or frequently replaced, you'll need to reconfigure the self-hosted runner periodically.

## Make a GitHub Workflow on any runner and connect it to your AWS cluster to run commands:

### Pros:
You can use any runner (GitHub-hosted or self-hosted) to run the workflow.
You don't need to set up and maintain a self-hosted runner on your AWS cluster instances.
The workflow can still be triggered on a schedule or manually.

### Cons:
You need to establish a secure connection or tunnel between the runner and your AWS cluster instances to run commands.
Additional setup and configuration are required to enable the runner to access and run commands on your AWS cluster instances.
The connection or tunnel between the runner and your AWS cluster instances might introduce additional latency or complexity.

##  Walkthrough: Use the AWS CLI with Run Command
Link: https://docs.aws.amazon.com/systems-manager/latest/userguide/walkthrough-cli.html
