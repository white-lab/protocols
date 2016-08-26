# Retrovirus Production and Infection

## Reagents

* FuGene (Promega, E2311)

* Puromycin (Puro)

* Polybrene

* HEK293 Cells

* MSCV-IRES-Puro (MIP) Plasmid
    * Follow a standard ligation protocol to clone your gene of interest into
      the plasmid's multiple cloning site (MSC).
    * Before running this protocol, make sure to validate your ligation by
      running a DNA digest with enzymes that cut 5' and 3' to your insert.
      Check that the plasmid and insert appear at the correct sizes when run
      on a gel.

* 0.45 μm filter

* BD Syringe

## Puro Kill Curve

Before you can select for cells that were transfected, you will need to
determine what concentration of puro will kill all non-transfected cells within
2-3 days.

To do this, set up a 6- or 12-well plate at a medium level of cell confluency.
Add puro at concentrations ranging from 0 to 5000 ng/mL (i.e. 0, 250, 500, 1000,
2500, 5000 ng/mL). Check the cells after 2-3 days and select the minimum
concentration that kills all cells in that well.

For BV-2 cells, we found that 2 μg / mL was sufficient to kill cells within 2-3
days.

## Steps

1. Day 1
    1. Plate HEK293 cells in a 6-well at 50-75% confluency (~1 x 10^6 cells / well).
       Use one well for each gene of interest, including GFP, empty vector, and
       a negative control well.
2. Day 2
    1. Transfect HEK293 cells with vectors for the envelope, packaging (GAG-Pol),
       and MIP genes:
        1. Mix 1 μg MIP, 333 μg envelope, and 666 μg packaging plasmid in an
           eppendorf tube for each gene.
        2. Prepare a second tube with RPMI media (without serum). Use 200 μL of
           media for each gene (i.e. 1.2 mL for 6 genes).
        3. Add FuGene directly onto the media. Use 12 μL of FuGene for each gene
           (i.e. 72 μL for 6 genes).
        4. Wait 10 minutes for FuGene to mix with media.
        5. Add 200 μL of FuGene:Media mix to each tube of plasmids.
        6. Wait 15 minutes for FuGene to bind to DNA.
        7. Add all of FuGene:Media:Plasmid mix to each well of HEK293 cells.
3. Day 3
    1. Aspirate FuGene-Media-Plasmid mix off of the HEK293 cells.
    2. Add 2 mL of complete media onto the HEK293 cells.
        * If using a GFP control, check HEK cells for fluorescence.
    3. Plate your cells to be infected with retrovirus in a separate 6-well. Use
       a high cell number (i.e. 1 x 10^6 cells / well) as these cells will only
       grow in the well for 3 days and many will die during selection.
4. Day 4
    1. Collect media supernatant from HEK293 cells.
    2. Filter each supernatant through a 0.45 μm sterile filter into 2
       eppendorf tubes per gene.
        * Be very careful during this step. Bring a container of bleach, and
          filters, syringes, and eppendorfs to the hood before starting. Double
          glove whenever working with live virus and minimize movements out of
          the hood. Make sure to spray everything down with ethanol on
          completion.
    3. Allocate 1 mL of virus to one tube.
    4. Add 4-5 μg / mL of polybrene to tube.
    5. Wait 5-10 minutes for polybrene to mix with virus.
    6. Add polybrene-virus mix to your cells. Add 1-2 mL of regular media
       alongside the filtered supernatant if your cells need serum or other
       nutrients.
    7. Save other eppendorf of virus in the freezer. First freeze in the -20 and
       then move to -80 if doing long term storage.
    8. Change media on cells after 6-8 hours to avoid excess toxicity.
5. Day 5
    1. Check cells for minimal death. If you see excessive cell death from this
       day until adding puro, you may need to optimize your transfection
       conditions. (i.e. more cells, less virus, less polybrene, shorter time
       before changing media)
    2. Check GFP-transfected cells under a fluorescent microscope. You may see
       faint expression within 1-2 days.
6. Day 6
    1. Add puro at the previously determined concentration.
7. Day 7
    1. Re-plate cells in a 10 cm dish. Add puro again to media after replating.
8. Day 8+
    * You may need to wait 2-3 days from this point onwards to kill all
       non-transfected cells. Check wells regularly to ensure the negative
       control does not have cell growth and the positive cases do.
    * Once you see decent cell growth, split cells and immediately put several
      vials into cryo-storage.

## Transfection using Lipofectamine LTX

1. Day 2
    1. Aspirate media off of HEK293 cells.
    2. Add 2 mL media to HEK293 cells.
    3. Dilute 5-12.5 μL Lipofectamine LTX® Reagent in 500 μL serum free media.
    3. Mix 1 μg MIP, 333 μg envelope, and 666 μg packaging plasmid in an
       eppendorf tube for each gene.
    4. Add 500 μL Lipofec
    4. Dilute plasmids in 500 μL Opti-MEM® I Reduced Serum Media without serum.
    5. Add 5-12.5 μL Lipofectamine LTX® Reagent into each Opti-MEM®:DNA solution.
    6. Add 2.5 μL PLUS reagent.
    6. Mix Lipofectamine:Opti-MEM:DNA solution gently and let sit at room
       temperature for 30 minutes.
    7. Add 500 μL of Lipofectamine:Opti-MEM:DNA complexes to each well of HEK293
       cells.
    8. Let cells incubate for 18-24 hours.
