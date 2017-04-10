---
title: "SCREW: tools and hardware for building reproducible single-cell epigenomics workflows"
author: 
  - name: Kieran O'Neill 
    affiliation: 1,2

  - name: B Decato
  - name: A Goncearenco
  - name: A Khandekar
  - name: B Busby
    affiliation: 3
  - name: A Karsan  
    affiliation: 1,2
address:
  - code: 1
    address: Pathology Department, University of British Columbia, Vancouver, Canada
  - code: 2 
    address: Michael Smith Genome Sciences Centre, BC Cancer Agency, Vancouver, Canada
  - code: 3 
    address: NCBI/NLM/NIH, Bethesda, MD USA 

---

DNA methylation is a heritable epigenetic mark that shows a strong correlation with transcriptional activity. The gold standard for detecting DNA methylation is whole genome bisulfite sequencing (WGBS). Recently, WGBS has been performed successfully on single cells (SC-WGBS) [@Schwartzman2015]. The resulting data represents a fundamental shift in the capacity to measure and interpret DNA methylation, especially in contexts where subtle cell-to-cell heterogeneity is crucial, such as in stem cells or cancer. However, SC-WGBS comes with unique technical challenges which require new analysis techniques to address. Furthermore, although some tools have been published, and several existing studies have tended to use similar methods, no standardized pipeline for the analysis of SC-WGBS yet exists.

Simultaneously, there has been a drive within bioinformatics towards improved reproducibility. Textual descriptions of bioinformatic analyses are deeply inadequate, and often require "forensic bioinformatics" to reproduce [@Gentleman2005]. Exact code, accompanied by exact software versions used, is needed to recreate the exact results of a study. Common Workflow Language (CWL) provides a framework for specifying complete workflows, while Docker allows for bundling of the exact software used in an analysis within a container that can be executed anywhere. Together, these have the potential, via repositories such as Dockstore [@OConnor2017], to enable complete reproducible bioinformatics research. 

Here we present SCREW (Single Cell Reproducible Epigenomics Workfow). SCREW is a collection of standard tools and workflows for analysing SC-WGBS data, implemented in CWL, and with an accompanying Docker image. SCREW is intended to provide the parts to build fully-reproducible SC-WGBS analyses. Tools provided include quality control visualization, clustering and visualisation of cells by pairwise dissimilarity measures, construction of recapitulated-bulk methylomes from single cells of the same lineage, generation of bigWig methylation tracks for downstream visualization, and wrappers around published tools such as DeepCpG [@Angermueller2016a] and LOLA [@Sheffield2015a]. Screw has the added benefit that CWL's compatibility with interactive GUI-based workflow tools such as Galaxy can lower the barriers to use for less-technical wet lab biologist users. 


CWL sources for SCREW are available under the MIT license at [https://github.com/Epigenomics-Screw/Screw](https://github.com/Epigenomics-Screw/Screw). Tools and workflows are available from Dockstore (to fill in)

