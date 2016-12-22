#!/usr/bin/python3

# This should only be used on the first install
# after that, updating the repo will automatically result in updates
# to the dotfiles since they're symlinked

import os

home = os.getenv('HOME')
cwd = os.getcwd()

imports = {
    'vimrc': os.path.join(home, '.vimrc'),
    'zshrc': os.path.join(home, '.zshrc')
}

for local, dest in imports.items():
    print('Importing {} to {} via symlink'.format(local, dest))
    if os.path.exists(dest):
        os.rename(dest, '{}.bak'.format(dest))

    local_path = os.path.join(cwd, local)
    os.symlink(local_path(, dest)
