swap:
	mv ~/.vimrc backup/vimrc
	cp vimrc ~/.vimrc

restore:
	mv backup/vimrc ~/.vimrc
