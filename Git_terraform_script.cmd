@echo off
SETLOCAL EnableDelayedExpansion

REM Create the 'modules' directory
mkdir modules
cd modules

REM Create the 'database' module
mkdir database
cd database
type nul > main.tf
type nul > variables.tf
type nul > outputs.tf
cd ..

REM Create the 'warehouse' module
mkdir warehouse
cd warehouse
type nul > main.tf
type nul > variables.tf
type nul > outputs.tf
cd ..

REM Create the 'roles' module
mkdir roles
cd roles
type nul > main.tf
type nul > variables.tf
type nul > outputs.tf
cd ..

REM Go back to the root directory
cd ..

REM Create the 'dev' environment folder
mkdir dev
cd dev
type nul > main.tf
type nul > variables.tf
type nul > terraform.tfvars
type nul > outputs.tf
type nul > provider.tf
type nul > backend.tf
cd ..

REM Create the 'prod' environment folder
mkdir prod
cd prod
type nul > main.tf
type nul > variables.tf
type nul > terraform.tfvars
type nul > outputs.tf
type nul > provider.tf
type nul > backend.tf
cd ..

REM Go back to the root directory
cd ..

echo Directory structure created successfully!
pause
