all: knit

update:
	cd R;\
	Rscript run-elt.R;

knit:
	cd R;\
	Rscript render-swiss-participation.R;
