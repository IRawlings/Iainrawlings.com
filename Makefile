PY?=
PELICAN?=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output

CONFFILE=$(BASEDIR)/pelicanconf.py
PUBLISHCONF=$(BASEDIR)/publishconf.py

S3_BUCKET=iainrawlings.com
# Added CLOUDFRONT DIST ID to allow cache invalidation
CLOUDFRONT_DIST_ID=E1KXVSFIKUXWDG
PEND="""

DEBUG ?= 0
ifeq ($(DEBUG), 1)
	PELICANOPTS += -D
endif

RELATIVE ?= 0
ifeq ($(RELATIVE), 1)
	PELICANOPTS += --relative-urls
endif

SERVER ?= "0.0.0.0"

PORT ?= 0
ifneq ($(PORT), 0)
	PELICANOPTS += -p $(PORT)
endif


help:
	@echo 'Makefile for a pelican Web site                                           '
	@echo '                                                                          '
	@echo 'Usage:                                                                    '
	@echo '   make html                           (re)generate the web site          '
	@echo '   make clean                          remove the generated files         '
	@echo '   make regenerate                     regenerate files upon modification '
	@echo '   make publish                        generate using production settings '
	@echo '   make serve [PORT=8000]              serve site at http://localhost:8000'
	@echo '   make serve-global [SERVER=0.0.0.0]  serve (as root) to $(SERVER):80    '
	@echo '   make devserver [PORT=8000]          serve and regenerate together      '
	@echo '   make devserver-global               regenerate and serve on 0.0.0.0    '
	@echo '   make s3_upload                      upload the web site via S3         '
	@echo '                                                                          '
	@echo 'Set the DEBUG variable to 1 to enable debugging, e.g. make DEBUG=1 html   '
	@echo 'Set the RELATIVE variable to 1 to enable relative urls                    '
	@echo '                                                                          '

html:
	"$(PELICAN)" "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" $(PELICANOPTS)

clean:
	[ ! -d "$(OUTPUTDIR)" ] || rm -rf "$(OUTPUTDIR)"

regenerate:
	"$(PELICAN)" -r "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" $(PELICANOPTS)

serve:
	"$(PELICAN)" -l "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" $(PELICANOPTS)

serve-global:
	"$(PELICAN)" -l "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" $(PELICANOPTS) -b $(SERVER)

devserver:
	"$(PELICAN)" -lr "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" $(PELICANOPTS)

devserver-global:
	$(PELICAN) -lr $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS) -b 0.0.0.0

publish:
	"$(PELICAN)" "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(PUBLISHCONF)" $(PELICANOPTS)

# This is a little all over the place as its a combination of make and bash. Confusing to follow
s3_upload: publish
	pelican content
# copy the output to the specified S3 bucket
	aws s3 cp "$(OUTPUTDIR)"/ s3://$(S3_BUCKET) --recursive
# {} signifies bash in makefile, also @ will suppress make from echoing the command to avoid confusion.
# Regarding the bash below lets remember it's $ for make and a $ for bash, resulting in $$ specifically for bash level vars
	@{ \
	echo "Please add a git commit comment: \n" ;\
	read gitcomment ;\
	git add . ;\
	git commit -m "$${gitcomment}" ;\
	git push ;\
	TEMP=$$(aws cloudfront create-invalidation --distribution-id "$(CLOUDFRONT_DIST_ID)" --paths "/" | jq -r  '.Invalidation.Id')  ;\
	echo "Invalidating Cloudfront cache..." ;\
	aws cloudfront wait invalidation-completed --id "$${TEMP}" --distribution-id "$(CLOUDFRONT_DIST_ID)" ;\
	echo "Invalidation request: $${TEMP} Completed. Upload Complete & Cache Reset" ;\
	}
# .PHONY stops files named as below interfering with commands such as make s3_upload (a file named s3_upload will break the make command without being listed as .PHONY)
.PHONY: html help clean regenerate serve serve-global devserver publish s3_upload


	