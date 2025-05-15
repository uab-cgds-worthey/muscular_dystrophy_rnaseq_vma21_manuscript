[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.15425697.svg)](https://doi.org/10.5281/zenodo.15425697)

# Muscular Dystrophy Bulk RNA-Seq Analysis

<!-- markdown-link-check-disable -->
[![Perform linting -
Markdown](https://github.com/uab-cgds-worthey/cgds_repo_template/actions/workflows/linting.yml/badge.svg)](https://github.com/uab-cgds-worthey/cgds_repo_template/actions/workflows/linting.yml)
<!-- markdown-link-check-enable -->

**Manuscript:** Multi-omics analysis identifies a novel *VMA21* gene variant that dysregulates RNA splicing causing rare
X-linked myopathy with excessive autophagy

X-linked myopathy with excessive autophagy (XMEA) is caused by loss-of-function (LoF) pathogenic variants in the *VMA21*
gene on the X-chromosome. XMEA patients develop a progressive muscle weakness caused by an impaired autophagy process
resulting in the accumulation of vacuoles within skeletal muscle, liver and neurons.

## Requirements

- [R](https://www.r-project.org/) version 4.2.3 (2023-03-15)
- [Rstudio](https://posit.co/download/rstudio-desktop/) version 2023.03.0+386
- [ggsashimi](https://github.com/guigolab/ggsashimi)
- [DESeq2 R package](https://bioconductor.org/packages/release/bioc/html/DESeq2.html)
- [ggplot2 R package](https://ggplot2.tidyverse.org/)
- [EnhancedVolcano R package](https://github.com/kevinblighe/EnhancedVolcano)

## Analysis code in the respective folders

The scripts written as the part of this study are listed below in their respective folders. Please refer to them for the
files (gene annotation, etc.) necessary to run them successfully.

- **Splicing visualization via sashimi plot**
  - [ggsashimi_analysis](./src/ggsashimi_analysis)
- **Differential gene expression analysis**
  - [dge_analysis](./src/dge_analysis)

## Manuscript preprint link

- medRxiv:
