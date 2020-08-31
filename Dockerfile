FROM fedora:29

RUN dnf install -y \
          texlive \
          texlive-latex \
          texlive-minted \
          texlive-babel-portuges \
          texlive-hyperxmp \
          texlive-xwatermark \
    && dnf clean all
