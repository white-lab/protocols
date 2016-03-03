<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Mass Spectrometry Workflow](#mass-spectrometry-workflow)
- [Cell Lysis](#cell-lysis)
	- [Protein Immunoprecipitation / Staining](#protein-immunoprecipitation-staining)
	- [Proximity-Ligation Assay (PLA)](#proximity-ligation-assay-pla)
- [Sample Processing](#sample-processing)
	- [Total Protein Measurement](#total-protein-measurement)
	- [Chemical Modification and Digestion](#chemical-modification-and-digestion)
	- [De-salting / Clean-up](#de-salting-clean-up)
		- [Sep-Pak](#sep-pak)
		- [Filter Aided Sample Preparation (FASP)](#filter-aided-sample-preparation-fasp)
		- [Single‐Pot Solid‐Phase‐enhanced Sample Preparation (SP3)](#singlepot-solidphaseenhanced-sample-preparation-sp3)
	- [Labeling](#labeling)
		- [TMT / iTRAQ](#tmt-itraq)
		- [SILAC](#silac)
	- [Fractionation](#fractionation)
		- [Isoelectric Focusing (IEF)](#isoelectric-focusing-ief)
		- [Strong Cation Exchange (SCX)](#strong-cation-exchange-scx)
		- [High-pH Basic Reverse Phase Chromatrography (bRP)](#high-ph-basic-reverse-phase-chromatrography-brp)
	- [Enrichment](#enrichment)
		- [Immunoprecipitation (IP)](#immunoprecipitation-ip)
		- [Immobilized Metal Affinity Chromatography (IMAC)](#immobilized-metal-affinity-chromatography-imac)
		- [Nitrilotriacetate (NTA)](#nitrilotriacetate-nta)
	- [Note on Fractionation / Enrichment](#note-on-fractionation-enrichment)
- [LC-MS/MS](#lc-msms)
	- [Pre-columns / Analytical columns](#pre-columns-analytical-columns)
	- [HPLC Gradients](#hplc-gradients)
	- [Monitoring Modes](#monitoring-modes)
- [Data Processing](#data-processing)
	- [Peptide Identification](#peptide-identification)
	- [Spectra Validation](#spectra-validation)
	- [Normalization](#normalization)
- [Data analysis](#data-analysis)
	- [Clustering](#clustering)
	- [Gene Set Enrichment Analysis (GSEA)](#gene-set-enrichment-analysis-gsea)
	- [Motif Analysis](#motif-analysis)

# Mass Spectrometry Workflow

This document summarizes the workflow for proteomic analysis used within the
White lab. It outlines the steps from lysis of cells to analysis of peptides
identified and quantified by a mass spectrometer.

All protocols referenced here can be found within the protocols folder, located
in the parent directory.

- - -

# Cell Lysis

Proteins are collected from cell lysed in 8 M urea. This process can also be
performed via other lysis protocols, such as sonication or freeze-thawing, but
those procedures should be done in the presence of kinase and phosphatase
inhibitors, as the signaling networks of cells can change very quickly in
response to perturbation.

Though this step also generates DNA, lipids, and other metabolites, those
components are separated during an initial spin-down step and left out while
transferring the peptides across tubes during de-salting.

For western blots and protein IPs, you should lyse cells in a non-denaturing
buffer, such as RIPA.

**Protocols**: [Cell Lysis](../protocols/lysis.md),
[Tissue Homogenization](../protocols/homogenization.md),
[Sodium Orthovanadate Activation](../protocols/sodium_orthovanadata_activation.md)

## Protein Immunoprecipitation / Staining

...

**Protocols**: [RIPA Lysis](../protocols/ripa_lysis.md),
[Protein Immunoprecipitation](../protocols/protein_ip.md)

## Proximity-Ligation Assay (PLA)

...

**Protocols**: [PLA Probe Conjugation](../protocols/pla_conjugation.md),
[in situ PLA](../protocols/pla_in_situ.md)

- - -

# Sample Processing

The sample processing for mass spectrometry consists of turning the solution of
whole cell lysate into peptides that are optionally labeled and enriched for
certain sub-populations.

## Total Protein Measurement

The first step that should be performed with cell lysate is quantification of
total protein. This information is necessary for later peptide labeling steps
and also allows us to adjust the quantity of peptides in each labeled channel to
prevent one channel from dominating the signal.

We commonly calculate this via a bicinchoninic acid assay (BCA) assay, which
quantifies reduction of copper ions by peptide bonds. The BCA assay is generally
accurate from 0.5 μg/mL to 1.5 mg/mL of total protein.

**Protocol**: [BCA Assay](../protocols/bca.md)

## Chemical Modification and Digestion

After quantifying our peptides, we will reduce all protein disulfide bonds using
dithiothreitol (DTT) and then alkylate freed sulfide groups with iodoacetamide
(IAA).

These modifications cause the proteins to stay unfolded when we dilute the urea.
We can then add trypsin to the solution to digest the proteins into peptides.
This enzyme cuts peptides after lysine and arginine residues, converting our
large, unfolded proteins into shorter peptides. This allows us to "sequence" the
shorter peptides via mass spectrometry (see below).

**Protocol**: [Chemical Modification and Digestion](../protocols/chem_mod.md)

## De-salting / Clean-up

After digestion, our peptides still exist in the presence of non-trivial amounts
of urea. Urea also reacts with the peptide-labeling reagents and would require
prohibitively expensive amounts of reagents to complete the labeling process.

De-salting may be used in other cases to remove interfering compounds (and also
occurs as a side effect in some fractionation protocols). However this only
time it is required in the standard phosphoproteome protocols. It should be
avoided whenever it is not entirely necessary, as this step contributes most to
the loss of peptides during sample preparation.

Optionally, before drying out a sample, we may make 400 μg aliquots (based on
the starting protein concentrations) of a sample. This ensure complete labeling
during the following steps and puts peptides from different samples on similar
scales of abundance.

### Sep-Pak

In order to de-salt and remove this urea, we filter our solution through a C18
column, known as Sep-Pak columns. These columns bind peptides, allowing us to
wash out the urea and elute in a new solution.

After washing, we elute our peptides in acetonitrile and acetic acid. These
solutions are both volatile and can be removed via speed-vac and lyophilization.
Dried peptides can then be resuspended in a new buffer of choice.

**Protocols**: [Sep-Pak](../protocols/seppak.md),
[Speed-Vac](../protocols/speedvac.md),
[Lyophilization](../protocols/lyophilization.md)

### Filter Aided Sample Preparation (FASP)

...

### Single‐Pot Solid‐Phase‐enhanced Sample Preparation (SP3)

Another method of peptide purification is SP3, which uses paramagnetic,
carboxylate-coated beads to pull proteins and peptides out of solution. This
interaction occurs in a pH-dependent manner, allowing us to bind peptides to the
beads in low pH, highly hydrophobic solutions and elute them at high pH.

Unfortunately, the original publication of this method relied on only 10 μL of
cell lysate, and Nader in the lab has had difficulty scaling the process up to
volumes and protein concentrations traditionally used for proteomic analysis.

**Protocol**: [SP3](../protocols/sp3.md)

## Labeling

In order to quantify the relative levels of peptides across different samples,
we use chemical tags that covalently attach to the N-terminus of the peptides.
These tags are isobaric and fall off during the fragmentation step of LC-MS/MS.
After tagging, peptides are combined together into a single mixture that can be
analyzed in one run.

### TMT / iTRAQ

These labels allow peptides from different samples to co-elute off of the
column. However, the isotopically-distinct tags show up with different m/z
values, allowing us to calculate the relative abundance of each tag for a given
peptide.

The two main tagging methods we use in the lab are iTRAQ (Isobaric tag for
relative and absolute quantitation) and TMT (Tandem Mass Tags). iTRAQ allows for
4- and 8-plex labeling, while TMT is used for 2-, 6-, and 10-plex run. When
possible, experiments should be designed to take advantage of TMT as
<reasons...>.

**Protocol**: [Mass Tag Labeling](../protocols/mass_tag_labeling.md),
[TMT Aliquoting](../protocols/tmt_aliquot.md)

### SILAC

One other method for quantitation of peptides is SILAC (Stable isotope labeling
by amino acids in cell culture), wherein cells are grown in media containing
amino acids labeled with heavy isotopes. This method allows for comparison of
two conditions and does not require that peptides be re-labeled after digestion.

## Fractionation

Unfortunately, the mixture of peptides within cell lysate is normally too
complex to analyze in a single mass-spec run. For phosphotyrosine analysis, this
is not an issue, but for measurement of other modifications, it is necessary to
simplify our peptide mixture.

To reduce the complexity of a mixture, we can run the sample over separate
chromatography conditions from those used to elute peptides during LC-MS/MS
analysis. Fractions are then concatenated in a way that produces mixtures of
chemically distinct peptides (i.e. fractions 1, 5, 9, ... -> mix 1; fractions 2,
6, 10, ... -> mix 2; etc).

### Isoelectric Focusing (IEF)

Isoelectric focusing is a process by which peptides are fractionated based on
their isoelectronic point (pI). Peptides are placed in a pH gradient, across
which an electric field is applied. The peptides migrate toward either the
cathode or anode of the system until they reach a section of the pH at which
they are neutral.

This process can be used to separate histone from non-histone peptides, based on
their relative charged amino acid content. Peptides from histones will tend to
the pI chambers of 7 - 10, while the non-histone fraction will segregate to the
pH range of 3 - 7.

**Protocol**: [IEF](../protocols/ief.md)

### Strong Cation Exchange (SCX)

...

### High-pH Basic Reverse Phase Chromatrography (bRP)

In high-pH basic reverse phase chromatography, peptides are loaded onto a C18
column and eluted at increasing concentrations of organic solvent. This process
is quite similar to the gradient applied later during the LC-MS/MS steps,
however it occurs in the presence of high-pH solvents, rather than the low-pH of
acetic acid.

The change in pH is expected to change the hydrophobicity of the peptides,
causing them to elute in a different manner and adding another degree of
separability.

**Protocol**: [Fractionation](../protocols/fractionation.md)

## Enrichment

In addition to fractionating a sample to reduce complexity, we can also select
out certain populations of peptides using antibodies against certain motifs as
well as columns that only bind certain kinds of peptides.

### Immunoprecipitation (IP)

A more targeted method of enrichment is to use antibodies against certain
peptide motifs in order to enrich for an interesting modification or sequence.
We use this protocol to enrich for phosphotyrosine, MAPK / CDK substrates, and
acetylated lysines, but in principle, any antibody that is specific enough can
be used to enrich for a motif.

**Protocol**: [Immunoprecipitation](../protocols/py_immunoprecipitation.md)

### Immobilized Metal Affinity Chromatography (IMAC)

IMAC is a method that take advantage of the metal-binding affinity of
phosphorylated peptides in order to enrich for that sub-population. It can
be combined with an IP in order to enrich for the less-abundant phosphotyrosine
peptides or another kinase motif (i.e. -P-X-pS-P-X-R/K- for MAPK
substrates). On simple β-casein samples, this can give 100-1000 fold enrichment
for phosphorylated peptides over their non-phosphorylated counterparts.

**Protocol**: [IMAC](../protocols/imac.md), [Making an IMAC
column](../protocols/making_imac.md)

### Nitrilotriacetate (NTA)

NTA is similar to IMAC, but occurs in a single eppendorf / falcon tube, rather
than loading the sample onto a column. This helps with higher-throughput
analyses, such as pS/T, where one may need to analyze many fractions in a
single day. Though IMAC tends to give better enrichment than NTA and require
fewer steps, NTA is less prone to errors such as leaks at column junctions or
poor flow through a column.

**Protocol**: [NTA-IP](../protocols/nta_ip.md)
**Protocol**: [NTA-Global](../protocols/nta_global.md)

## Note on Fractionation / Enrichment

For phosphotyrosine (pY) analysis, we will set up a pY IP, followed by an IMAC
to further enrich for phosphorylated peptides.

For phosphoserine/threonine (pS/T) analysis, we will first fractionate our
sample into 80 fractions using <fractionation method name...>, concatenate down
to 20, and then perform NTA enrichment on each fraction.

For acetyl-lysis (Ac-K) analysis, we can either fractionate the sample using
high-pH bRP or first fractionate using IEF, and then fractionate each of those
fractions using high-pH bRP. Following this step, we will set up a Ac-K IP using
the [PTMScan Acetyl-Lysine antibody mix sold by
CST](http://www.cellsignal.com/products/proteomic-analysis-products/ptmscan-acetyl-lysine-motif-ac-k-kit/13416).

For the unmodified proteome analysis, we can either directly load the
supernatant of a sample onto a pre-column at various dilutions (1:1000, 1:100,
...), or run the supernatant from each NTA generated during the pS/T
analysis. The unmodified proteome tends to be more complex than any of modified
peptides, so one can perform even more "deep" profiling using multiple
fractionation steps (reference...). This method tends to use up weeks to months
of instrument time (And is arguably less informative than profiling the
phospho/acetyl-proteome), so we don't do this in the White lab.

- - -

# LC-MS/MS

In order to identify peptides in a solution, we first load those peptides onto a
pre-column and then elute them off of the column, through an analytical column,
and into a mass spectrometer. The mass spectrometer is configured to generate a
m/z spectrum at each time point, pick most abundant ions it sees, fragment those
ions, and then generate new MS/MS spectra for each selected ion. These spectra
often allow us to uniquely identify a peptide and quantify its relative amounts
across different samples.

[This video is good resource on how the Q Exactive mass spectrometer in the lab
works](https://www.youtube.com/watch?v=fqfyyravJkAof).

## Pre-columns / Analytical columns

...

**Protocols**: [Making a pre-column](../protocols/making_precolumn.md), [Making
an analytical column](../protocols/making_analytical.md)

## HPLC Gradients

...

## Monitoring Modes

...

- - -

# Data Processing

...

## Peptide Identification

...

## Spectra Validation

...

## Normalization

...

- - -

# Data analysis

...

## Clustering

...

## Gene Set Enrichment Analysis (GSEA)

...

## Motif Analysis

...
