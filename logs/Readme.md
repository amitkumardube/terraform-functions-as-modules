# Logging in Terraform

## Before terraform 0.15

### Till terraform 0.14.* there were 2 environment variables to configure logging in terraform.
- TF_LOG - this controls the log level. It can be TRACE, DEBUG, INFO, WARN or ERROR . The default is TRACE which means most verbose. This variable controls the logging for both terraform and the providers used.
- TF_LOG_PATH - with this variable set, the logs can be appended to the file mentioned as value of this environment variable.

## With Terraform 0.15

### 2 new environment variables are introduced while there is no change in existing environment variable for logging. These new variables lets us have clear segregation between the log levels from terraform itself and the providers being used.
- TF_LOG_CORE - this controls the log level only for terraform. This variable can have the same values as TF_LOG.
- TF_LOG_PROVIDER - this controls the log level only for providers. This variable can have the same value as TF_LOG.

## setup for logging (the documentation shows setup on powershell)

### generating LOGS for both provider and terraform
terraform version

$env:TF_LOG = 'TRACE';

$env:TF_LOG_PATH = './../logs/core_provider_log.txt';

### generating LOGS only for terraform
terraform version

$env:TF_LOG = '';

$env:TF_LOG_CORE = '';

$env:TF_LOG_PATH = './../logs/core_log.txt';

### generating LOGS only for providers
terraform version

$env:TF_LOG = '';

$env:TF_LOG_PROVIDER = '';

$env:TF_LOG_PATH = './../logs/provider_log.txt';