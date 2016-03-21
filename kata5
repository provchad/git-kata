#!/bin/bash

source util.sh

echo "KATA 5 - SQUASHING COMMITS (REWRITE HISTORY)

SCENARIO DESCRIPTION:
Working on your feature branch, you've made a whole bunch
of local commits and pushed them. Some of them are very granular and would pollute
master branch if merged in. Squash them into a single commit and
push that single commit back to the remote branch. You have to override history.

WARNING: This is only fine if you're sure that you're the only person who has this
branch checkout out.

GOAL:
- Squash the 4 commits into 1
- Push that one commit up

LEARNINGS:
- Squashing
- Keeping 'clean history'
- Overwriting history"

commitChange src/app.js "Old MACDONALD had a farm" "commit 1"
commitChange src/app.js "E-I-E-I-O" "commit 2"
commitChange src/app.js "And on his farm he had a cow" "commit 3"
commitChange src/app.js "E-I-E-I-O" "commit 4"
pushChanges
