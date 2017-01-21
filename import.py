#!/usr/bin/python3

# This should only be used on the first install
# after that, updating the repo will automatically result in updates
# to the dotfiles since they're symlinked

import os

home = os.path.expanduser('~')
cwd = os.getcwd()
inhome = lambda loc: os.path.join(home, loc)

imports = {
    'vimrc':        inhome('.vimrc'),
    'zshrc':        inhome('.zshrc'),
    'tmux.conf':    inhome('.tmux.conf'),
    'gitconfig':    inhome('.gitconfig'),
    'xavier.zsh-theme':    inhome('.oh-my-zsh/themes/xavier.zsh-theme')
}

print('Importing')
for local, dest in imports.items():
    choice = input('import {} [Y/n]: '.format(local))
    if choice.lower() == 'n':
        continue

    if os.path.islink(dest):
        print('{}: Skipped (Already linked @ {})'.format(local, dest))
        continue

    backup_location = '{}.bak'.format(dest)
    if os.path.exists(dest):
        os.rename(dest, backup_location)

    local_path = os.path.join(cwd, local)
    os.symlink(local_path, dest)
    print('{}: Linked (backed up @ {})'.format(local, backup_location))
