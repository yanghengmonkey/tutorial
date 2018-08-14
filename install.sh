#wget http://192.168.128.193/share/meld/meld.zip
#unzip  meld.zip
#cd meld-master
#python setup.py install --prefix=/usr
sudo apt-get install meld 
git config --global merge.tool           meld
git config --global merge.keepBackup     false
git config --global mergetool.prompt     false
git config --global mergetool.keepBackup false
git config --global difftool.prompt      false
git config --global difftool.keepBackup  false
git config --global mergetool.meld.keepBackup      false
git config --global mergetool.meld.path  /usr/bin/meld
git config --global mergetool.meld.cmd   \
  'meld "$LOCAL" "$BASE" "$REMOTE" --output "$MERGED"'
git config --global difftool.meld.path   /usr/bin/meld
git config --global difftool.meld.cmd    \
  'meld "$LOCAL" "$REMOTE"'

