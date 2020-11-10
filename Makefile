export http_proxy=http://proxy.dpf.gov.br:3128
export https_proxy=http://proxy.dpf.gov.br:3128
export no_proxy=192.168.2.191

doc.pdf:
	podman build . -t lautex
	podman run --rm -v .:/data -w /data -e http_proxy -e https_proxy -e no_proxy lautex pdflatex -shell-escape doc.tex

.PHONY: doc.pdf
