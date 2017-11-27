#!/bin/bash

filePath="/path/to/file"

find "$filePath" -type f -print0 | xargs -0 chmod -w
