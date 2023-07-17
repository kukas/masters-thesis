NAME=thesis
ABSTRACT=abstract
LATEXMKOPTS=-pdf #force lualatex
LATEXMK=latexmk $(LATEXMKOPTS)

all:
	$(LATEXMK) $(NAME)
	$(LATEXMK) $(ABSTRACT)-cz
	$(LATEXMK) $(ABSTRACT)-en

clean:
	$(LATEXMK) -C
