# git-workflow-lab

A small repo where I practise the Git and GitHub workflow DevOps teams use: feature branches, pull requests, a merge conflict resolved by hand, and a bad change rolled back with a revert. Lab work from week 2 of my Azure and DevOps training.

## What's in it
- healthcheck.sh: prints disk use on / against a warning threshold, then uptime.

## Run it
Run ./healthcheck.sh on any Linux machine (tested on Ubuntu in WSL2).

## What the history shows
- PR 1: the script, added on a feature branch and reviewed in a pull request.
- PRs 2 and 3: two branches changed the same line. I merged one, resolved the conflict in the other on my PC, and we settled on 85%.
- PRs 4 and 5: a change broke the script, so I rolled it back with GitHub's Revert button rather than rewriting history.

## What I learned
- Every change reaches main through a pull request, so it's reviewed and easy to trace.
- Conflicts get resolved on the feature branch, not on main; Git marks both versions and I choose the result.
- Revert, not reset, is the safe way to undo something that's already been merged and pushed.
