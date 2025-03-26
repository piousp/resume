FROM texlive/texlive:latest

WORKDIR /latex

RUN apt update &&  apt install fonts-noto -y && apt install fonts-noto-cjk-extra -y && fc-cache -fv

CMD ["sh", "-c", "xelatex cv.tex && xelatex cover-letter.tex"]