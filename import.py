#!/usr/bin/python3

# This should only be used on the first install
# after that, updating the repo will automatically result in updates
# to the dotfiles since they're symlinked

import os

home = os.getenv('HOME')
cwd = os.getcwd()

imports = {
    'vimrc':        os.path.join(home, '.vimrc'),
    'zshrc':        os.path.join(home, '.zshrc'),
    'tmux.conf':    os.path.join(home, '.tmux.conf')
}

print('Importing')
for local, dest in imports.items():
    if os.path.islink(dest):
        print('{}: Skipped (Already linked @ {})'.format(local, dest))
        continue

    backup_location = '{}.bak'.format(dest)
    #if os.path.exists(dest):
        #os.rename(dest, backup_location)

    local_path = os.path.join(cwd, local)
    #os.symlink(local_path, dest)
    print('{}: Linked (backed up @ {})'.format(local, backup_location))
