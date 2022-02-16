all: site

site:
	cd R;\
	Rscript render-site.R;
