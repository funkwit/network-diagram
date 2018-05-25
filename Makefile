
DOT=dot
GVPR=gvpr
FORMAT=png
SRC=graph.dot
FILTER=filter.gvpr
OUT=$(subst .dot,.$(FORMAT),$(SRC))

all: $(OUT)

$(OUT): $(SRC)
	$(GVPR) -c -f $(FILTER) $^ | $(DOT) -T$(FORMAT) -o $@

clean:
	rm -f $(OUT)
