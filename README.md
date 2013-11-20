#shell-systance

A high level shell library that goes trough all package manager and git repos, then it preforms updates and pull commands.
This project was created partly by lazyness and the other side that you somtimes forget some package managers or you have custom
repositories. putting all the commands together makes sure you do a torough job.

updating becomes a breeze

##configuration

symlink the scripts you want from /etc/update/exec (or put your own shells in there). then sysmlink source-folder to /usr/local/bin/"commandname"
source-folder defaults to /etc/update/exec

##source-folder

executes all files trough sourcing from the default /etc/update. I symlink this shell in /usr/local/bin to update so that
I can update my system with:

	sudo update


##update/git.sh

pulls al git repositories configured in /etc/update/git (again trough symlinking)

##update/env.sh

reloads your envoirement after update

##update/gentoo.sh

gentoo bash updater, executes all required update command and directly resolves configuration merging.
Uses eix.

##update/ubuntu.sh

executes commands for updating ubuntu

##update/npm.sh

updates node packages.

##update/pip.sh

updates pip (python) packages.
