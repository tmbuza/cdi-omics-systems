#!/bin/env bash

mkdir -p builds assets/css assets/img figures docs

cat > _quarto.yml <<'EOF'
project:
  type: website
  output-dir: docs

website:
  title: "CDI Omics Systems"
  site-url: "https://omics.complexdatainsights.com"
  navbar:
    left:
      - href: index.qmd
        text: Home
      - text: Builds
        menu:
          - href: builds/01-rnaseq.qmd
            text: "Build 01 · RNA-seq"
          - href: builds/02-microbiome.qmd
            text: "Build 02 · Microbiome"
          - href: builds/03-gwas.qmd
            text: "Build 03 · GWAS"
          - href: builds/04-single-cell.qmd
            text: "Build 04 · Single-cell"
          - href: builds/05-multiomics.qmd
            text: "Build 05 · Multi-omics"
  page-footer:
    center: "Systems over outputs. Reproducible workflows for interpretable biological insight."

format:
  html:
    theme: cosmo
    css: assets/css/cdi.css
    toc: true
    number-sections: false
EOF

cat > index.qmd <<'EOF'
---
title: "CDI Omics Systems"
subtitle: "Structured omics system architectures for reproducible biological data analysis, interpretation, and reporting."
---

# CDI Omics Systems

**Systems over outputs.**

CDI Omics Systems is a growing ecosystem of end-to-end omics workflows designed around reproducibility, interpretation-first analysis, workflow transparency, and defensible biological insight.

## System Builds

- [Build 01 · RNA-seq](builds/01-rnaseq.qmd)
- [Build 02 · Microbiome](builds/02-microbiome.qmd)
- [Build 03 · GWAS](builds/03-gwas.qmd)
- [Build 04 · Single-cell RNA-seq](builds/04-single-cell.qmd)
- [Build 05 · Multi-omics Integration](builds/05-multiomics.qmd)

## CDI Omics Philosophy

Raw data → Processing → Exploration → Statistical analysis → Interpretation → Reporting

Each build connects data integrity, analytical reasoning, biological interpretation, and reproducible reporting.
EOF

cat > builds/01-rnaseq.qmd <<'EOF'
---
title: "Build 01 · RNA-seq System"
---

# Build 01 · RNA-seq System

End-to-end RNA-seq workflow for reproducible transcriptomics analysis and interpretation.

## System Path

FASTQ files  
→ FastQC  
→ Trimming, if needed  
→ Quantification or alignment  
→ MultiQC aggregation  
→ Count matrix  
→ DESeq2  
→ Exploration  
→ Differential expression  
→ Interpretation  
→ Quarto reporting  

## Core Tools

- FastQC
- MultiQC
- Salmon
- STAR
- featureCounts
- DESeq2
- Quarto

## Status

Active flagship build.

## Live Build

[rnaseq.complexdatainsights.com](https://rnaseq.complexdatainsights.com)
EOF

cat > builds/02-microbiome.qmd <<'EOF'
---
title: "Build 02 · Microbiome System"
---

# Build 02 · Microbiome System

A structured microbiome workflow for reproducible ecological analysis and interpretation.

## System Path

FASTQ files  
→ Quality control  
→ Denoising / ASV inference  
→ Taxonomy assignment  
→ Diversity analysis  
→ Community structure  
→ Differential abundance  
→ Ecological interpretation  
→ Quarto reporting  

## Planned Tools

- QIIME 2
- DADA2
- phyloseq
- vegan
- ggplot2
- Quarto

## Status

In development.
EOF

cat > builds/03-gwas.qmd <<'EOF'
---
title: "Build 03 · GWAS System"
---

# Build 03 · GWAS System

A structured genome-wide association workflow for reproducible variant association analysis and interpretation.

## System Path

Genotype data  
→ Sample QC  
→ Variant QC  
→ Population structure  
→ Association testing  
→ Manhattan / QQ plots  
→ Variant prioritization  
→ Biological interpretation  
→ Reporting  

## Planned Tools

- PLINK
- R
- Python
- PCA / population structure tools
- Quarto

## Status

Planned.
EOF

cat > builds/04-single-cell.qmd <<'EOF'
---
title: "Build 04 · Single-cell RNA-seq System"
---

# Build 04 · Single-cell RNA-seq System

A structured single-cell workflow for cell-level transcriptomic analysis and interpretation.

## System Path

Raw counts  
→ Cell and gene QC  
→ Normalization  
→ Dimensional reduction  
→ Clustering  
→ Marker detection  
→ Cell annotation  
→ Biological interpretation  
→ Reporting  

## Planned Tools

- Seurat
- Scanpy
- SingleCellExperiment
- UMAP / PCA
- Quarto

## Status

Planned.
EOF

cat > builds/05-multiomics.qmd <<'EOF'
---
title: "Build 05 · Multi-omics Integration System"
---

# Build 05 · Multi-omics Integration System

A structured workflow for integrating multiple biological data layers into interpretable analytical systems.

## System Path

Transcriptomics  
+ Microbiome  
+ Clinical / metadata layers  
→ Harmonization  
→ Feature integration  
→ Modeling  
→ Interpretation  
→ Reporting  

## Planned Tools

- R
- Python
- Bioconductor
- scikit-learn
- visualization frameworks
- Quarto

## Status

Planned.
EOF

cat > assets/css/cdi.css <<'EOF'
:root {
  --accent: #036281;
  --ink: #0f172a;
  --muted: #475569;
  --bg: #f4f8ff;
}

body {
  color: var(--ink);
  background: var(--bg);
}

a {
  color: var(--accent);
}

h1, h2, h3 {
  color: var(--ink);
}

.navbar-title {
  font-weight: 700;
}
EOF

touch assets/img/.gitkeep figures/.gitkeep

echo "omics.complexdatainsights.com" > docs/CNAME

quarto render