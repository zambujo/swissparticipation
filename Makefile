all: render

render:
	cd R;\
	Rscript render-site.R;\
	# cp ../xaringan/summary.html ../docs/;
