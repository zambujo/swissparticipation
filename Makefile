all: site

site:
	cd R;\
	Rscript render-site.R;\
	cp ../xaringan/summary.html ../docs/;
