help:
	@echo "make cv (same as make word-cv)" 
	@echo "make word-cv (same as make word-en)" 
	@echo "make word-cv-en" 

cv: word-cv

word-cv: word-cv-en

word-cv-en :
	mkdir -p _outputs
	pandoc ./cv-en.md -o ./_outputs/cv-en.docx --reference-doc=./template.docx
	echo "Generated ./_outputs/cv-en.docx !"
