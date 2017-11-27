# DataAuthenticity

A Bash script for generating a cryptographic hash value of all files under a given path

## Features
* Outputs the result to the terminal, as well as saves the final result in a timestamped .txt file.
* Also saves the hashes of every individual file in a separate timestamped .txt file.
* Includes a script to change permissions of files to deny writing.
* Will skip over, and report, files for which read permission is denied.
* Uses standard Bash commands.
* Light weight design.
* Simple design and usage.
* Includes explanation of commands withing the script comments

## Installation
None required; simply dowload the script then execute it from the terminal.

## Compatibility
Requires MacOS Version 10 or greater.
Might work with Linux; has not been tested.

## Usage Example
```console
$ ./LockAllFiles.sh 
$ ./AuthenticityHash.sh 
a6880f5b31f7817f063c46cfe5d50c1a6de20bba673932f55386d5c3aaa3f5c8  -
```

