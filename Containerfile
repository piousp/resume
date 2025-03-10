FROM texlive/texlive:latest

WORKDIR /latex

RUN apt update && apt install fonts-noto-cjk-extra -y

CMD ["sh", "-c", "xelatex cv_spanish.tex && xelatex cv_english.tex && xelatex cover-letter.tex"]