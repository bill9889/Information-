find not -path "*/.git/*" -type d -empty -exec touch {}/.gitignore \;
