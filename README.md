# Import marc to folio
Two scripts to simplify testing of importing marc data to FOLIO.

## Prerequisities
You need to have bash, curl and jq installed on your machine.

### Windows
On windows you get both curl and bash if you have installed [git](https://git-scm.com/download/win).  
Create a directory named `bin` in your home directory and fetch [jq](https://stedolan.github.io/jq/download/) and move the downloaded binary to the `bin` folder and rename it to `jq.exe`.

## Setup
Copy the file `.env-example` to `.env` and enter your values. If your import profile name includes spaces set quoation marks around the variable. Like `PROFILE_NAME="Your name with spaces"`  
Run `./getFolioToken.sh` and input the username and password for the user that will be used to upload the data to FOLIO. __The password field will not echo back what you enter__. This saves a token in the file `.okapi-token`

## Usage
Save a marc file in this directory.  
Now you can import a marcfile with the command `./load-marc-data-into-folio.sh sample.marc` replacing sample.marc with your marc filename.

## Acknowledgements
[load-marc-data-into-folio.sh](https://github.com/folio-org/mod-data-import/blob/master/scripts/load-marc-data-into-folio.sh) is a slightly modified version from [folio.org/mod-data-import](https://github.com/folio-org/mod-data-import) repository.