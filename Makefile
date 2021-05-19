
WORKROOT := $(shell pwd)
OUTDIR   := $(WORKROOT)/docs

all: build

# build content for website
build:
	mkdocs build -f mkdocs-en.yml -d $(OUTDIR)/en_us
# cp -R images $(OUTDIR)/en_us 
	mkdocs build -f mkdocs-ru.yml -d $(OUTDIR)/ru_rf
#	cp -R images $(OUTDIR)/zh_cn

clean:
	rm -rf $(OUTDIR)