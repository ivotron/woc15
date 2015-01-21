docker run \
  --rm \
  -v `pwd`/pandoc-templates:/root/.pandoc/templates \
  -v `pwd`/latex-files:/root/texmf/tex/xelatex \
  -v `pwd`/bibtools/ieee.csl:/root/ieee.csl \
  -v `pwd`/bibfile/zotero.bib:/root/citations.bib \
  -v `pwd`/main.pdc:/root/main.pdc \
  -v `pwd`/figures:/root/figures \
  -v `pwd`/out:/root/out \
  ivotron/pandoc:1.13.2 \
    --standalone \
    --latex-engine=xelatex \
    --self-contained \
    --csl=/root/ieee.csl \
    --bibliography=/root/citations.bib \
    --reference-links \
    --metadata=ieeetran:'yes' \
    --output=/root/out/main.pdf /root/main.pdc 2> pandoc.log
