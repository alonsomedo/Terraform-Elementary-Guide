#### Useful commands

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

