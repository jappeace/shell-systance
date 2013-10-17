#! /bin/bash
# I use this script to update my system by executing evry script in the update folder.
if ["$1" = ""];
then
	folder="/usr/local/update"
else
	folder=$1
fi
interpetFolder(){
	echo "changing working directory to script folder"
	cd $folder;

	echo "executing all scripts"
	for script in `ls *.sh`
	do
		(
			echo "updating: " + $script
			source $script
		)
	done
}
echo "checking for root priviliges"
# if you do not whish to be root remove replace the following line with doUpdate
mkdir /someDir && rm -r /someDir && echo "executing commands" && interpetFolder
