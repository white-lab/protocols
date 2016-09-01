# qRT-PCR

## Equipment

* C1000 Thermal Cycler + CFX96 Real-Time System
    * Located in 76-343 (Hynes Lab)
    * Make sure to reserve a time slot before using.

## Reagents

* qPCR Plate
    * Located in wet lab above Vibhuti's bench.

* qPCR Cover
    * Located in wet lab above Vibhuti's bench.

* Filtered pipette tips
    * Used to prevent genomic DNA contamination.

* Sybr Green
    * Master mix, also contains polymerase and buffer components.
    * Located in -20 °C, bottom shelf.
    * Keep stock on ice.

* Forward and Reverse Primers
    * Validate primers beforehand by running regular PCR products on a gel and
      checking for a single product band at the correct size.
    * Use F and R primers for at least two loading controls (Such as Actin and
      GAPDH) as well as F and R for each gene.

* cDNA
    * Prepared using [cDNA Protocol](cdna_prep.md).
    * Incubate at room temperature to thaw, spin down in microcentrifuge.

* RNAase-free, Endotoxin-free Water ("Water" below)

* 70% Ethanol

## Steps

1. Spray down pipetters with 70% Ethanol to help avoid genomic DNA
   contamination.
2. Dilute cDNA 1:10 in water.
    * Dilution may vary based on primer efficiency.
3. Prepare master mixes for each row of wells:
    * 12.5 μL Sybr Green
    * 9 μL Watedr
    * 0.75 μL F Primer
    * 0.75 μL R Primer
    * 23 μL Total / Well
4. Add 23 μL master mix wells of qPCR plate.
5. Add 2 μL diluted cDNA wells of qPCR plate.
6. Seal plate with qPCR cover and roller.
    * Plates can be stored at 4 °C in fridge if needed.
7. Take plate over to qPCR thermal cycler.
8. Select cycler protocol. A standard one looks like:
    * 95 °C for 10 minuets
    * Cycle 40 times:
        * 95 °C for 20 seconds
        * 60 °C for 20 seconds
        * Measure fluorescence
    * Measure melt curve from 65 - 95 °C.
9. Select plate editor, label samples and targets in each well.
10. Run qRT-PCR cycle.
    * Wait for green light on instrument before leaving.

## Notes

Generally speaking, you should run 2-3 replicates for each gene / sample /
control combination. In addition, you should have at least 1 -RT control and 1
-cDNA control to check that you do not have residual genomic DNA and that the
primers are not annealing to each other.

RNA levels are usually measured by the cycle number at which the fluorescence
signal passes a given threshold. This cycle number is usually 14-15 cycles for
high abundance targets, such as GAPDH and Actin. Regularly expressed genes
may appear between 22-25 cycles. Genes appearing only after 30 cycles should be
considered questionable and you should repeat the assay with more cDNA.
