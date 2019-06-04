# RT-qPCR

## Equipment & Reagents

* C1000 Thermal Cycler + CFX384 Real-Time System
    * Located in 76-391 (Koehler Lab)
    * Make sure to reserve a time slot before using.
* 384 qPCR Plate
* Plate Seal
* Sybr Green Master Mix
    * Located in -20°C, top shelf in "Common qPCR" box.
    * Keep stock on ice.
* Forward and Reverse Primers
    * Primers for genes may be found on [Harvard's PrimerBank](https://pga.mgh.harvard.edu/primerbank/)
      or generated using [Primer-BLAST](https://www.ncbi.nlm.nih.gov/tools/primer-blast/).
    * Validate primers beforehand by running regular PCR products on a gel and
      checking for a single product band at the correct size.
    * Use F and R primers for at least two loading controls (Such as β-Actin and
      GAPDH) as well as F and R for each gene.
* cDNA
    * Prepared using [cDNA Protocol](cdna_prep.md).
    * Incubate at room temperature to thaw, spin down in microcentrifuge.
* RNAase-free, Endotoxin-free Water ("Water" below)
* 70% Ethanol

## Steps

1. Spray down pipettors with 70% Ethanol to help avoid genomic DNA
   contamination.
2. Dilute cDNA 1:10 in water.
    * Dilution may vary based on primer efficiency.
3. Prepare master mixes for each row of wells (24 columns) with duplicates for each sample:
    * 70 μL 2X Sybr Green Master Mix
    * 41.3 μL Water
    * 0.7 μL F+R 50 μM Primer (Final Concentration: 250 nM)
    * 112 μL Total
4. Add 4 μL master mix wells of qPCR plate using a multichannel pipettor.
5. Add 1 μL diluted cDNA wells of qPCR plate using a multichannel pipettor.
6. Seal plate with qPCR cover and roller. Centrifuge to ensure transfers are mixed.
    * Plates can be stored at 4°C in fridge if needed.
7. Take plate over to qPCR thermal cycler.
8. Select cycler protocol (Test60.pcl). A standard one looks like:
    * 95°C for 10 minuets
    * Cycle 40 times:
        * 95°C for 20 seconds
        * 60°C for 20 seconds
        * Measure fluorescence
    * Measure melt curve from 65 - 95°C.
9. Select plate editor, label samples and targets in each well.
10. Run RT-qPCR cycle.
    * Wait for green light on instrument before leaving.

<div style="page-break-after: always;"></div>

## Notes

Generally speaking, you should run 2-3 replicates for each gene / sample /
control combination. In addition, you should have at least 1 -RT control and 1
-cDNA control to check that you do not have residual genomic DNA and that the
primers are not annealing to each other.

RNA levels are usually measured by the cycle number at which the fluorescence
signal passes a given threshold. This cycle number is usually 14-15 cycles for
high abundance targets, such as GAPDH and β-Actin. Regularly expressed genes
may appear between 22-25 cycles. Genes appearing only after 30 cycles should be
considered questionable and you should repeat the assay with more cDNA.
