# pY Immunopreciptation

All steps for the pY immunoprecipitation should be performed in the cold room
until the final elution step.

## Equipment & Reagents

* Centrifuge
* Rotator
* Protein G Agarose Beads (Calbiochem IP08)
* pY Antibodies
    * 4G10 (Millipore) - 1 μg / μL
    * PT66 (Sigma) - 2 μg / μL
    * PY100 (CST) (Optional) - 1 μg / μL
* IP Buffer
    * 100 mM Tris-HCl, 0.3% NP-40, pH 7.4
* iTRAQ IP Buffer
    * 100 mM Tris-HCl, 1% NP-40, pH 7.4
* Rinse Buffer
    * 100 mM Tri-HCl, pH 7.4
* Elution Buffer
    * 0.2% TFA for High-Select Fe-NTA columns
    * 100 mM Glycine, pH 2-2.5 for IMAC
* Basic pH-ing Buffer
    * 500 mM Tris buffer pH 8.5
* High-Select Fe-NTA Phosphopeptide Enrichment Kit (A32992, Thermo)
* Tryptic digested-BSA

## Steps

1. Phosphotyrosine IP Setup
    1. Add 60 μL agarose beads to fresh tube using blunt-tip pipette.
    2. Add 300 μL IP buffer to tube.
    3. Spin down at 6500 rpm for 1 minute.
    4. Remove supernatant.
    5. Add 300 μL IP buffer.
    6. Add 12 μL 4G10 antibody.
    7. Add 9 μL PT66 antibody, 6 μL if using PY100.
    8. Add 6 μL PY100 antibody (optional).
    9. Incubate on rotator for 6-8 hours at 4°C.
    10. Spin down at 6500 rpm for 1 minute.
    11. Remove supernatant.
    12. Wash beads with 400 μL IP buffer.
    13. Incubate on rotator for 5 minutes at 4°C.
    14. Spin down at 6500 rpm for 1 minute.
    15. Remove supernatant.
2. Prepare the sample.
    1. For labeled samples, resuspend in 400 μL iTRAQ IP buffer.
    2. For unlabeled samples, resuspend in 400 μL IP buffer.
    3. Vortex until sample dissolves.
    4. Spin down sample to remove liquid from walls.
    5. Check the pH of the sample solution with a minimal volume (i.e. 1-2
       μL). Compare pH with that of tube with beads and antibodies. If they are
       dissimilar, add Basic pH-ing Buffer (starting with 1-2 μL).
3. Add sample to beads.
4. Incubate on rotator overnight at 4°C.
5. Spin down at 6500 rpm for 1 minute.
6. Remove and save supernatant, store in -80°C.
7. Wash beads with 400 μL iTRAQ IP buffer.
    1. Add buffer.
    2. Spin down at 6500 rpm for 1 minute.
    3. Discard supernatant.
8. Wash beads 3 times with 400 μL IP Rinse buffer.
    1. Add buffer.
    2. Spin down at 6500 rpm for 1 minute.
    3. Discard supernatant.
8. Add elution buffer and incubate on rotator at room temperature.
    * IMAC: Use 70 μL 100 mM Glycine pH 2-2.5, 30 minutes
    * High-Select Fe-NTA Enrichment: 25 μL 0.2% TFA, 10 minutes

## High-Select Fe-NTA Enrichment

1. While the peptides are eluting, prepare the FeNTA columns
   1. Remove the bottom closure of the spin columns and loosen the cap.
   2. Place in a 2 mL microcentrifuge tube. Centrifuge at 1000 g for 30s.
   3. Add 200 μL of Binding/Wash buffer. Centrifuge at 1000 g for 30s. Repeat once.
   4. Cap the bottom of the column with the white Luer plug. Place the column with the plug into new microcentrifuge tube. Label the microcentrifuge tube if you are planning to analyze the flow through (FT).
   5. Resuspend the beads in 25 μL Binding/wash buffer.
2. Centrifuge pY elution for 1 min at 6500 rpm on table-top centrifuge. Remove eluted peptides and add them to FeNTA beads. Just leave the FeNTA column at room temp.
3. Repeat the elution step: 25 μL 0.2% TFA for 10 min at room temperature on rotator.
4. Centrifuge for 1 min, remove eluted peptides and add them to FeNTA beads.
5. Mix the sample and FeNTA beads by holding the screw cap and very gently tapping the bottom plug for 10s until the beads are in suspension.
   Important! Avoid splashing the sample.
6. Incubate for 30 min at room temp. Mix the resin gently every 5 mins.
7. During the incubation step, condition the elution tube with BSA
   1. Add 1 μg tryptic digested-BSA in 40 μL 0.1% Acetic Acid to a 1.7 mL eppendorf tube.
   2. Vortex for 10 seconds.
   3. Speed-vac to dryness (25-30 minutes)
   4. Rinse tube 4x:
      1. Add 40 μL of:
         * 1x SpinColumn elution buffer
         * 2x with 10% Acetonitrile .1% Acetic Acid
         * 1x with .1% Acetic Acid
      2. Vortex for 5 seconds, spin down briefly.
      3. Remove liquid from tube by pipette.
8. Carefully remove the bottom plug and loosen the cap.
    Do not squeeze the bottom of the plug.
9. Place the column back into FT tube. Centrifuge at 1000 g for 30s.
10. Store the FT at -20 C (only if you need to analyze the FT).
11. Place the column in a new microcentrifuge tube.
12. Wash the column with 150 μL Binding/Wash buffer. Centrifuge at 1000 g for 30s.
    Repeat the wash twice for a total of 3 washes. Discard the wash flow-through.
13. Wash the columns with 200 μL LC-MS grade water. Centrifuge at 1000 g for 30s.
14. Place the column in a BSA-coated microcentrifuge tube. Cut the cap off such that the tube fits in bomb loader.
15. Elute phosphopeptides twice from the column:
      1. Add 20 μL of Elution buffer to the column.
      2. Centrifuge at 1000 g for 30s.
16. Speed-vac the sample until 1-5 μL remains (18-20 mins).
   * Important! Pay attention to sample volume. Do not dry the sample. Volumes > 5 μL may cause peptide chromatography issues.
   * If sample volume is > 5 μL, place back in speed-vac and check every 5 minutes.
17. Resuspend the sample in 10 μL 5% Acetonitrile in 0.1% Formic Acid. Do not vortex. Avoid splashing the sample.
18. Bomb load sample directly onto an analytical column. Loading can take 60-90 mins. Make sure the column does not run dry.
19. Run on the instrument.
