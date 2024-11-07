# DATABASE

`gulp db:create`
Makes a new database on your local environment or overwrites an existing one

`gulp db:backup --from [environment]` (if no `--from` key is specified, the `local` environment is used)
Saves a copy of your database, either from the local system or a specified environment

`gulp db:migrate --from [source] --to [target]`
Transfers your database from one environment to another, useful for moving data between development stages

`gulp db:export --from [source] --to [target]`
Creates a file copy of your [source] database, adjusting website links to work in a [target] location.

`gulp db:delete --from [source]`
Removes your [source] database

# FILE SYSTEM

`gulp backup --from [environment] --src [source]`
Archives files from a specified [environment] and [source] (app | theme | uploads).

`gulp deploy --to [environment] --src [source]`
Deploys files to a specified [environment]

`gulp migrate --from [source environment] --to [target environment] --src [source]`
Migrates files between environments, including backup and deployment stages. (app | theme | uploads).

