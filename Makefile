all: index

update:
	cd R;\
	Rscript render-data-gathering.R;

seri:
	cd R;\
	Rscript render-seri-figures.R;

index:
	cd R;\
	Rscript render-swiss-participation.R;
