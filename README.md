# epv-safe-harbor
Characterizing EPV loci as safe harbors

# Directories

/data/ - contains TPM and raw counts files from RNAseq experiments         

/meta/ 
/meta/rna-seq-meta.csv - contains the metadata for each sample

/rnaseq-outputs/ - contains the outputs from 206-deseq2.Rmd

genes-found-across-comparisions.csv - genes DE in the same way across six comparisons       
de-genes.jpeg - barplot of genes DE with those shared across comparisons indicated       

for each locus, files are:     
*-heatmap.pdf - heatmap of all DE genes     
*-heatmap-sub.pdf - subset of most DE genes figure      
*-results.csv - output from DEseq2 filter(padj<0.05, abs(log2FoldChange) >= 1)     
*-volcano.jpeg - volcano plot for the locus     




## Description of Files

100-generate-loci - Creates minimum ages and divergence times from humans       
       
206-deseq2.Rmd analyses 

Figure-1.Rmd - Circos-style plot of insertion sites relative to human genome, type (intronic/intergenic) and divergence time from humans        
     
Figure-2.Rmd - Dotplot, precision of homology          
