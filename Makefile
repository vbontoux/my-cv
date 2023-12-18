help:
	@echo "make word-cv" 

word-cv:
	mkdir -p _outputs
	pandoc ./cv-en.md -o ./_outputs/cv-en.docx --reference-doc=./template.docx
	echo "Generated ./_outputs/cv-en.docx !"
