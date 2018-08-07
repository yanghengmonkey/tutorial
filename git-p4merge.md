### Configure P4Merge for Git on Ubuntu

1. Download p4merge from perforce homepage

   https://www.perforce.com/downloads/visual-merge-tool

2. Copy  extracted p4merge download to /opt/merge

   ```
   ~/Downloads/p4v/p4v-2018.2.1666551$ ls
   bin  lib
   ~/Downloads/p4v/p4v-2018.2.1666551$ sudo mkdir -p /opt/p4merge
   ~/Downloads/p4v/p4v-2018.2.1666551$ sudo mv * /opt/p4merge
   ```

3. Symlink p4merge

   ```sudo ln -s /opt/p4merge/bin/p4merge /usr/local/bin/p4merge```

4. Add this to your ~/.gitconfig

```
    [merge]
        keepBackup = false;
        tool = p4merge
    [mergetool]
        prompt = false
        keepBackup = false
    [mergetool "p4merge"]
        cmd = p4merge "$BASE" "$LOCAL" "$REMOTE" "$MERGED"
        keepTemporaries = false
        trustExitCode = false
        keepBackup = false
        path = /usr/local/bin/p4merge
    [difftool]
        prompt = false
        keepBackup = false
    [difftool "p4merge"]
        cmd = p4merge "$LOCAL" "$REMOTE"
        keepTemporaries = false
        trustExitCode = false
        keepBackup = false
        path = /usr/local/bin/p4merge
```

5. Check changes/conflicts by command:

   ```git difftool```

   ```git mergetool```

