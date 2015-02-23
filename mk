#docker run \
  #--rm \
  #--workdir="/root" \
  #-v `pwd`/pandoc-templates:/root/.pandoc/templates \
  #-v `pwd`/latex-files:/root/texmf/tex/latex \
  #-v `pwd`/bibtools/ieee.csl:/root/ieee.csl \
  #-v `pwd`/bibfile/zotero.bib:/root/citations.bib \
  #-v `pwd`/main.pdc:/root/main.pdc \
  #-v `pwd`/figures:/root/figures \
  #-v `pwd`/out:/root/out \
  #ivotron/pandoc:1.13.2 \
  #  --self-contained \
  #  --csl=/root/ieee.csl \
  #  --bibliography=/root/citations.bib \
  #  --reference-links \
  #  --metadata=ieeetran:'yes' \
  #  --output=/root/out/main.pdf /root/main.pdc 2> pandoc.log

docker run \
  --rm \
  --workdir="/root" \
  -v `pwd`/pandoc-templates:/root/.pandoc/templates \
  -v `pwd`/slides.pdc:/root/slides.pdc \
  -v `pwd`/figures:/root/figures \
  -v `pwd`/out:/root/out \
  ivotron/pandoc:1.13.2 \
    --self-contained \
    -t beamer \
    --template=extended \
    --output=/root/out/slides.pdf /root/slides.pdc 2> pandoc.log
