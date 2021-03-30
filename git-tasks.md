# Delete an already pushed commit

- Remove the commit on your local repository:
  - `git rebase -i HEAD~2` (HEAD~2 is for the commit before the latest, but could be any other)
  - Comment out the commit(s) you want to delete
- Push upstream: `git push origin +master`

# Set up identities

This is a way to have multiple git identities (e.g. personal and work) set up in the same box.

- Make sure that there is no global identity

```
git config --global --unset user.name
git config --global --unset user.email
git config --global --unset user.signingkey
```

- Force a requirement on having an identity

```
git config --global user.useConfigOnly true
```

- Create the keys and set them in your repo of choice (GitHub, Gitlab, etc.)
- Create each identity. e.g:

```
git config --global user.gitlab.name "Some Name"
git config --global user.gitlab.email "some@email.com"
git config --global user.gitlab.signingkey WHATEVER
```

- Add a git alias to set your identity:

```
git config --global alias.identity '! git config user.name "$(git config user.$1.name)"; git config user.email "$(git config user.$1.email)"; git config user.signingkey "$(git config user.$1.signingkey)"; :'
```

- Once in the dir of your project, you can configure it to use a particular identity:

```
git identity identity_name
```

# Find things:

- Find a commit where a particular string is part of the diff: `git log -S "the_content" -p`
- Optional to the above, by someone: `git log -S "the_content" --author some_username -p`
