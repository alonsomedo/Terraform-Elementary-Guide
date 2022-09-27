## Commands

### Generic commands

```terraform init``` - Set local workpsace

```terraform plan``` - See the resources are going to be deployed

```terraform apply``` - Deploy resources

```terraform destroy``` - Destroy resources

```sensitive_content``` - Used to not display the content when running terraform plan or apply.

```terraform output {resource-name}``` - Display all outputs.

```terraform show``` - Show values of the resource attributes

```terraform validate``` - To validate/parse our configuration file

```terraform fmt``` - Scan your configuration files and formats the code for redability.

```terraform show -json``` - Display the current state of the infrastructure.

```terraform providers``` - Display list of all providers.

```terraform providers mirror /root/terraform/local_file``` - This command will mirror the provider configuration in a new but slash route.

```terraform refresh``` - To update the state file

```terraform graph``` - Show dependencies between resources.
- You need to install graphviz
- Run command ```terraform graph | dot -Tsvg > graph.svg``` 

### State commands

terraform state <subcommand> [options] [args]
- Sub-command
    - list: list all the resources
    - mv: used to move items in the terraform state file. It can moves items from one state file to another. Rename resource.
    - pull: download and display the state in remote storage backend.
    - rm: remove items from the state file.
    - show: show the attributes of a single resource

```terraform state list aws_s3_bucket.finance-20201101```

```terraform state show aws_s3_bucket.finance-20201101```

```terraform state mv [options] SOURCE DESTINATION```
- ```terraform state mv aws_dynamodbtable.state-locking aws_dynamodbtable.state-locking-db```


```terraform state pull [options] SOURCE DESTINATION```

```terraform state rm aws_s3_bucket.finance-20200922```
- Remove manually the associated resource block from configuration file. If the resource was already created, it won't be deleted.


### Taint 
```terraform taint aws_instance.webser``` - There would be cases where we want to force a particular resource to be recreated. Instead of using destroy and apply, we can use taint.

```terraform untaint aws_instance.webser```  - Untaint resource


### Debug, Logs

```export TF_LOG=<LOG_LEVEL>``` - Set Log
- INFO
- WARNING
- ERROR
- DEBUG
- TRACE

```export TF_LOG_PATH=<PATH>``` - Set Log path

```unset TF_LOG_PATH```-  Unse Log path

### Import

```terraform import <resource_type>.<resource_name> <attribute>``` - Import resource managed/created by other method as Ansible or AWS Management Console

```terraform import aws_instance.ec2-md i-70df115bc86b07d4e```
- attribute {instace-id}


### Module

```
module <name> {
    source = <path-to-child-module>
} 
``` 

Remote Module
 - ```terraform get``` - Download module from registry