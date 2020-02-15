# Delete an already pushed commit

- Remove the commit on your local repository:
  - `git rebase -i HEAD~2` (HEAD~2 is for the commit before the latest, but could be any other)
  - Comment out the commit(s) you want to delete
- Push upstream: `git push origin +master`
