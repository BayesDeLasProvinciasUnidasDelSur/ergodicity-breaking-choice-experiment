all: osf.zip download figures

figures: figs/ fig3 fig4a15 fig16a19

fig16a19:
	matlab -nodisplay -nosplash -nodesktop -r "run('run16a19_plotHLM.m');exit;"

fig4a15:
	matlab -nodisplay -nosplash -nodesktop -r "run('run4al15_plotHLM.m');exit;"	

fig3:
	matlab -nodisplay -nosplash -nodesktop -r "run('run3_plotHLM.m');exit;"

clear:
	- rm figs/*

## Pre-requisit
## Matlab. Used: R2018b (9.5.0.944444) 64-bit (glnxa64)

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
