# Import marc to folio
Two scripts to simplify testing of importing marc data to FOLIO.

## Setup
Copy the file `.env-example` to `.env` and enter your values.  
Run `./getFolioToken.sh` and input the username and password for the user that will be used to upload the data to FOLIO. __The password field will not echo back what you enter__. This saves a token in the file `.okapi-token`

## Usage
Save a marc file in this directory.  
Now you can import a marcfile with the command `./load-marc-data-into-folio.sh sample.marc` replacing sample.marc with your marc filename.

## Acknowledgements
[load-marc-data-into-folio.sh](https://github.com/folio-org/mod-data-import/blob/master/scripts/load-marc-data-into-folio.sh) is a slightly modified version from [folio.org/mod-data-import](https://github.com/folio-org/mod-data-import) repository.