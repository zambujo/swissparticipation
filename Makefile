all: index

update:
	cd R;\
	Rscript run-elt.R;

seri:
	cd R;\
	Rscript render-seri.R;

index:
	cd R;\
	Rscript render-swiss-participation.R;
