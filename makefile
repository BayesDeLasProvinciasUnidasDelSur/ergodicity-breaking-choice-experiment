all: osf.zip download figures

figures: figs/

figs/:
	mkdir figs/

download: samples_stats/readme.txt matjags/readme.txt

samples_stats/readme.txt/:
	touch readme.txt
	mv osf/Auxillary_folder_for_Github_repository\ 2/samples&stats/* samples_stats/

matjags/readme.txt:
	mv osf/Auxillary_folder_for_Github_repository\ 2/matjags/* matjags/ 	

osf.zip:
	wget -O https://osf.io/fhqnz/download osf.zip
	unzip osf.zip -d osf
