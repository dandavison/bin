#!/bin/sh

# From sbuss@counsyl.com

# If, like me, you can't remember what you worked on this past year and you're trying to write your yearly review, you might find this command helpful:

git log --grep="Merge pull request" --author=$USER --since=1.year -c --stat # --reverse

# It shows you every PR merge that you did. The --stat option is included to remind you how big of a project it was. If you're a rockstar and don't need to be reminded about the size of the diffs, try this much more compact display:

# git log --grep="Merge pull request" --author=$USER --since=1.year --reverse --oneline

# Also note you'll need to do this for every repo you contributed to.
