#!/bin/bash

echo "A simple script to enable/disble ssh"


read -p  "To enable press e to disable press d: " confi

if [ $confi == "e" ];
then
	sudo ufw allow ssh
	echo "SSH has been allowed :)"
	echo "to connect run 'ssh $(whoami)@$(hostname)"

else
	sudo ufw deny ssh
	echo "ssh has been denied"
fi
