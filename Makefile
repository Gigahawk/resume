SOURCEDIR = src
BUILDDIR = bin
RESDIR = res

all:
	./build_pdf.sh

clean:
	rm -rf $(BUILDDIR)