# Modelling Polyketide Synthases and Related Macromolecular Complexes

LaTeX files for my PhD Biosciences thesis submitted to the University of Birmingham, UK, 2015. [Download Link](https://etheses.bham.ac.uk/id/eprint/5909/)

**Abstract**  
Polyketide synthases (PKS) are enzyme complexes that synthesise many natural products of medicinal interest, notably a large number of antibiotics. The present work investigated the mupirocin biosynthesis system, comparing it with similar pathways such as thiomarinol and kalimantacin. The focus was on the structural modelling of the protein complexes involved in antibiotic synthesis, via molecular simulation and the analysis of structural and sequence data.

Structural docking of acyl carrier proteins (ACP) cognate for an HMG-CoA synthase orthologue responsible for β-methylation (MupH) identified key residues involved in the recognitions specificity of the interacting partners, further supported by mutagenesis experiments, which thus allows prediction of β-methylation sites in PKS. Moreover, complementation and mutagenesis experiments performed on MupH homologs from kalimantacin and thiomarinol systems suggests specificity between the ACP:HCS proteins in the β-branching suggesting the possibility of engineering multiple specific β-branching modifications into the same pathway.

Molecular dynamics simulations of ACPs from the mupirocin cluster revealed that the PKS ACPs form a cavity upon the attachment of the phosphopantetheine and acyl chains similar to what is seen in the fatty acid synthase ACPs and provide a better understanding of the structure function relationship in these small proteins. Molecular docking of the putative cognate substrate with the ketosynthase (KS) homo dimer of module 5 of the MmpA in the mupirocin pathway revealed a loop that may control specificity for the α-hydroxylated substrate and mutagenesis experiments support this proposition.

## Compile LaTex Files

### Required Packages

**For Debian based systems.**  
```
sudo apt-get install texlive
sudo apt-get install texlive-latex-extra
sudo apt-get install texlive-bibtex-extra 
```

### Compile Command

```
cd thesis_tex_src
pdflatex -synctex=1 -interaction=nonstopmode "main".tex
```

*Note: Tex Studio can also be used to compile the files. Load main.tex and click on the build/run button.*   

