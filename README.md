# CDI Multiomics Ecosystem

Structured omics system architectures for reproducible biological data analysis, interpretation, and reporting.

This repository hosts the **CDI Omics Systems** guide: a summary implementation of the **Omics Systems Architecture (OSA)** across major biological data domains.

---

## Overview

CDI Multiomics Ecosystem is an evolving collection of structured omics systems designed to connect:

- biological questions
- data generation
- analytical processing
- quality control
- statistical reasoning
- biological interpretation
- reproducible reporting

The focus is not only on running tools, but on building complete analytical systems that support transparent and defensible biological insight.

---

## Omics Systems Architecture

CDI Omics Systems is designed as a modular and continuously expanding ecosystem of reproducible analytical systems.

Each build represents a connected workflow architecture focused on:

- reproducibility
- workflow transparency
- interpretation-first analysis
- systems-oriented biological reasoning
- defensible scientific reporting

The current implementation is represented by RNA-Seq, Microbiome, and Proteomics systems. GWAS, Single-cell RNA-Seq, and Multi-omics Integration are included as planned expansion systems.

---

## Systems Over Outputs

Many workflows stop at generating outputs.

CDI Omics Systems emphasizes:

```text
Biological Question
        ↓
Experimental Design
        ↓
Data Generation
        ↓
Omics Data Processing
        ↓
Quality Control
        ↓
Feature Generation
        ↓
Domain-Specific Analysis
        ↓
Statistical Inference
        ↓
Biological Interpretation
        ↓
Reproducible Reporting
```

Each build is designed to function as a connected analytical system rather than an isolated tutorial.

---

## Omics System Builds

### Build 01 · RNA-Seq System

End-to-end transcriptomics workflows integrating:

- quality assessment
- read processing
- quantification or alignment
- count matrix generation
- exploratory analysis
- differential expression
- functional interpretation
- Quarto reporting

**Status:** Active flagship build

**Live Build:**  
<https://rnaseq.complexdatainsights.com>

---

### Build 02 · Microbiome System

Structured microbiome analysis systems integrating:

- quality control
- denoising and ASV inference
- taxonomy assignment
- diversity analysis
- community structure analysis
- differential abundance
- ecological interpretation
- reproducible reporting

**Status:** Active build

**Live Build:**  
<https://microbiome.complexdatainsights.com>

---

### Build 03 · Proteomics System

Structured proteomics analysis systems integrating:

- proteomics result table inspection
- quality control
- protein identifier cleaning
- differential protein abundance
- protein ranking and filtering
- GO and pathway enrichment
- protein network interpretation
- reproducible reporting

**Status:** Current addition / active implementation

**Live Build:**  
<https://proteomics.complexdatainsights.com>

---

### Build 04 · GWAS System

Genome-wide association analysis architecture integrating:

- genotype and phenotype inputs
- sample quality control
- variant quality control
- population structure assessment
- association testing
- Manhattan and QQ plots
- variant prioritization
- biological interpretation

**Status:** Planned expansion

**Live Build:**  
<https://gwas.complexdatainsights.com>

---

### Build 05 · Single-cell RNA-Seq System

Single-cell transcriptomics architecture integrating:

- cell and gene quality control
- normalization
- dimensional reduction
- clustering
- marker detection
- cell annotation
- cellular interpretation
- reproducible reporting

**Status:** Planned expansion

**Live Build:**  
<https://singlecell.complexdatainsights.com>

---

### Build 06 · Multi-omics Integration System

Integrated systems connecting:

- transcriptomics
- microbiome
- proteomics
- GWAS
- single-cell analysis
- clinical and phenotype metadata
- cross-domain modeling
- systems-level interpretation

**Status:** Planned expansion / integrative architecture

**Live Build:**  
<https://multiomics.complexdatainsights.com>

---

## Technology Ecosystem

Depending on the build, workflows may integrate:

- R
- Python
- Bioconductor
- Quarto
- tidyverse
- DESeq2
- QIIME 2
- phyloseq
- vegan
- Scanpy
- Seurat
- PLINK
- STRING
- GitHub Pages
- reproducible computational environments

Technology choices are secondary to analytical reasoning. Tools may evolve, but the underlying system architecture remains consistent.

---

## Repository Structure

```text
.
├── _quarto.yml
├── index.qmd
├── 00-preface-and-overview.qmd
├── 01-rnaseq.qmd
├── 02-microbiome.qmd
├── 03-proteomics.qmd
├── 04-gwas.qmd
├── 05-single-cell.qmd
├── 06-multiomics-integration.qmd
├── 999-appendix.qmd
├── assets/
├── docs/
└── README.md
```

---

## Website

<https://multiomics.complexdatainsights.com>

---

## CDI

**Complex Data Insights (CDI)**

Systems over outputs.
