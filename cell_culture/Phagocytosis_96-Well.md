# 96-well Phagocytosis Assay

## Equipment

* Centrifuge with cell plate adapter

* Multichannel P20 and P200 pipettors and aspirator

* Flow Cytometer
    * Should include 96-well adapter
    * Needs filters for FITC/Alexa-488, APC, APC-Cy7
    * Works well: Canto II, LSR Fortessa HTS (remember to get trained!)

## Reagents

* Cell media
    * 30 mL / plate
    * 800k cells / plate (64k / row)

* Wash Buffer
    * Ice Cold: PBS with calcium and magnesium.
    * 30 mL / plate

* Flow Cytometry Buffer (FCB)
    * Ice Cold: 10% FBS, 1 mM EDTA, PBS without calcium or magnesium.
    * 60 mL / plate

* Fluorescent Particles
    * Aβ-Alexa Fluor-488 (AnaSpec: AS-60479-01)
        * Dissolve in 100 μL PBS for 1 mg / mL, store aliquots at -20 °C
    * Dextran, Alexa Fluor® 488 (Thermo: D22910)
        * Dissolve in 5 mL PBS for 1 mg / mL, store aliquots at -20 °C
    * FluoSpheres® (Blue-Green) (Thermo: F13080)
        * Delivered as 2e10 beads / mL
    * 10 μL of small fluorophore / plate, 100 μL of bead solution / plate

* Primary fluorescent antibody
    * α-mSiglec-F-APC-Cy7 (Clone E50-2440; BD Biosciences \#565527)
    * α-hCD33-APC (Clone WM53; BD Biosciences \#551378)
    * α-hSiglec5/14-Alexa 647 (Clone 194128; BD Biosciences \#564371)
    * α-hSiglec8-APC (Clone 7C9; BioLegend \#347105)
    * 10 μL antibody / plate (1.25 μL / row)

## Steps

1. Day 1: Plate 8,000 cells / well in 200 μL of media.
    * Use 1:3 ratio of WT : Receptor (2000 : 6000 cells)
2. Day 2: Add inhibitors 1 hour before assay.
    * 5 μL / well of 10 mM Saracatinib (1:50 in DMSO) for 5 μM
    * 6 μL / well of 50 mM Dasatinib (1:1500 in DMSO) for 1 μM
    * 5 μL / well of 10 mM 3AC (1:50 in Ethanol) for 5 μM
    * 5 μL / well of 10 mM AS1938909 (1:50 in DMSO) for 5 μM
3. Add fluorophore to cells.
    * 7.5 μL / well of fluorophore (1:10 in PBS) for 250 ng / mL
    * 7.5 μL / well of beads (1:10 in PBS) for 50m beads / mL
    * Incubate cells with endocytosis fluorophores for 3 hours.
    * Incubate cells with phagocytosis beads for 24 hours.
5. Aspirate media, wash with 250 μL PBS + ions.
6. Spin down plate at 300g for 3 minutes at 4 °C.
7. Aspirate wells, resuspend in 100 μL FCB.
8. Add antibody.
    * 1 μL / well of antibody (1:10 in FCB)
9. Incubate in dark for 30 min at 4 °C.
10. Add 150 μL FCB.
10. Spin down plate at 300g for 3 minutes at 4 °C.
11. Aspirate wells, resuspend in 200 μL FCB (no need to do extra mixing).
12. Check cells under microscope to ensure no clumps.
    * If cells are clumping, filter into new 96-well plate.
13. FACS time!

## Considerations

* Bring controls for each Ab, fluorophore
    * 4x Siglec Ab
    * 3x fluorophore
    * 1x no dye

* Organize wells for easy pipetting (8x12)
    * 1 construct / row
    * 1 control column
    * 3 columns / set (Ctrl, Aβ, Dex, Beads)
    * 3 sets / plate (No drug, Dasat, Sara)
    * 1 cleanup column (4x 10% bleach, 4x water)

* Cytometer Settings
    * Sample volume: 50 μL
    * Mixing volume: 50 μL
    * \# mixes: 5
    * Speed: 3.0 μL / sec
    * ~60 seconds / well : ~1 hour / plate (+30 min setup / shutdown time)
