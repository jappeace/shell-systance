#! /bin/bash
# put direct git repopository symbolic links in /etc/repository.d/linkname.git
# or use containing folders like ~/.vim/bundle
path="/etc/update/git/"
for directory in `ls $path`
do
	cd $path$directory
	(
		sudo git pull
	)
	for d in `ls`
	do
		(
			cd $d
			sudo git pull
		)
	done
done
