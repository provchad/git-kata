#!/bin/bash

source util.sh

echo "KATA 6 - GIT INTERACTIVE ADD

SCENARIO DESCRIPTION:
You made local changes to many files. Use interactive add to
go through changes one by one. Careful! Some of the changes will not be desired.

GOAL:
- Commit and push 'good' changes to the remote repo

LEARNINGS:
- Common git workflow"

commitChange src/app.js "Old MACDONALD had a farm" "Farm"
commitChange src/app.js "E-I-E-I-O" "eio"

commitChange src/conf.js "{api_endpoint: 10.1.20.4}" "conf"
pushChanges

appendToFile src/app.js "And on his farm he had a cow"
appendToFile src/app.js "E-I-E-I-O"
editFile src/conf.js "{api_endpoint: localhost}"
