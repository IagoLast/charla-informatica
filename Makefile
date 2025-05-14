INPUT = index.md
OUTPUT_HTML = charla.html
OUTPUT_PDF = charla.pdf

# Default target: build HTML and PDF
all: $(OUTPUT_HTML) $(OUTPUT_PDF)

# Build HTML
$(OUTPUT_HTML): $(INPUT)
	npx @marp-team/marp-cli@latest $(INPUT) -o $(OUTPUT_HTML)

# Build PDF
$(OUTPUT_PDF): $(INPUT)
	npx @marp-team/marp-cli@latest $(INPUT) --pdf -o $(OUTPUT_PDF)

# Serve the presentation for development (watches for changes)
serve: 
	npx @marp-team/marp-cli@latest -s -w .

# Clean generated files
clean:
	rm -f $(OUTPUT_HTML) $(OUTPUT_PDF)

.PHONY: all serve clean 