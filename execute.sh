#! /bin/bash
# put direct git repopository symbolic links in /etc/repository.d/linkname.git
# or use containing folders like ~/.vim/bundle
for directory in `ls /etc/repository.d/*.git`
do
	(
		cd $directory
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
