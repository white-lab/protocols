# Bottom-Up Proteomics using Mass spectrometry

## Overview

Bottom-up proteomics is a method to identify and quantify proteins that uses mass spectrometry to analyze proteolytic digests generated from tissue samples or cell lysates. This method can be used to study post-translational modifications (PTMs), allowing for signaling analysis of the phosphoproteome or other PTMs of interest.

In this method, samples are lysed in urea to denature all proteins and then chemically modified with dithiothreitol (DTT) and iodoacetamide (IAA) to prevent re-folding. Samples are then diluted and digested with trypsin to generate short peptides. Peptide mixtures are then desalted on a Sep-Pak C18 column to remove urea and other chemical background.

These peptides can then be directly injected into a mass spectrometer to identify their peptide sequence and quantified using label-free methods such as spectral counting or MS peak integration. Alternatively, samples can be combined using isobaric labeling, such as Tandem Mass Tags (TMT) or iTRAQ. This approach allows for multiplexed analysis of up to 10 samples and accurate quantification of relative peptide abundances across each sample.

These peptide mixtures may be directly injected into a mass spectrometer, however even small quantities of sample may saturate the detector with highly abundant peptides from housekeeping genes in the cell. To capture lower-abundance proteins connected to signaling networks, we first apply PTM enrichment steps to select for peptides with phosphorylated tyrosine and serine / threonine modifications. Certain subsets of the proteome may also pre- or post-enrichment fractionation, to divide peptides into separate samples that can be independently analyzed.

<div style="page-break-after: always;"></div>

## Sample Lysis

### Equipment & Reagents

* Ice tray.

* Fresh 8 M Urea
    * Weigh out urea first, then add water to fill tube up to desired volume,
      vortex and let sit in water bath to help dissolve the urea crystals.
    * Cool down urea on ice before adding it to cells.

* 1 mM Sodium Orthovanadate (Optional)
    * Tyrosine Kinase Inhibitor

* Protease / Phosphatase Inhibitor Cocktail (Optional)

* Homogenizer (Optional)
    * VWR® 200 Homogenizer
    * MilliQ Water
    * Methanol

### Cell Culture Lysis

1. Keep cells on ice for entire procedure.
2. If cell are in culture, pour off or aspirate the media.
3. Rinse the cells with ice cold PBS
4. Pour off or aspirate PBS.
5. Lyse cells in ice cold Urea + optional inhibitors
    * For 6 wells, add 200 μL Urea to each well.
    * For 10 cm dishes, add 500 μL Urea.
    * For 15 cm dishes, add 1 mL Urea.
6. Use a cell scraper to lift the cells off the plate into the solution.
    * Scrape in all four directions while holding the dish at a slant in order
      to remove all of the cell and collect them at one end.
7. Pipette the solution into labeled 15 mL conical tubes.
8. Take a 50 μL aliquot for BCA protein quantification.

### Tissue Homogenization

1. Prepare the homogenizer.
    1. Immerse the probe in first tube of water.
    2. Turn on the homogenizer for 5 minutes.
    3. Repeat for tube of methanol and second tube of water.
        * Do not use methanol wash until there are clearly no tissue pieces
          in the tip. Otherwise the methanol will fix them and make them harder
          to remove.
2. Add 3 mL lysis buffer to 15 mL tube on ice.
3. Grab a timer.
4. Get sample from -80 °C freezer, keep on dry ice.
5. Take tissue out of tube using tweezers and deposit on a weighing tray that
   has been tared.
6. Record weight, size, and shape of tissue sample.
7. Quickly transfer sample to tube with lysis buffer.
8. Start the homogenization procedure.
    1. 6 pulses of 10 seconds, separated by 10 second intervals to let probe
       cool down.
    2. Check tube for visible chunks of tissue, apply additional 10 second
       pulses as needed.
9. Centrifuge lysate aliquot down at 4000 rpm, 4°C for 20 minutes to remove debris.
10. Take a 50 μL aliquot for BCA protein quantification.

<div style="page-break-after: always;"></div>

## BCA Protein Measurement

### Equipment & Reagents

* Plate reader

* Pierce™ BCA Protein Assay Kit
    * BCA Reagent A
    * BCA Reagent B
    * Bovine Serum Albumin (BSA) Standard Ampules, 2mg/mL

* Falcon 96-well, clear, flat bottom plate with lid

* 1X Phosphate-buffered saline (PBS)

### Steps

1. Break open BSA ampule and transfer liquid to 1.5 mL tube.
2. Prepare BSA Standard dilutions:
    1. Label a PCR 8-tube strip and add 60 μL PBS to each tube.
    2. Transfer 60 μL from 2 mg / mL BSA to first tube.
    3. Dispense and aspirate 60 μL at least seven times to ensure proper mixing
       of liquids.
    4. Repeat for each subsequent dilution (1 - 0.0625 mg/mL, plus two PBS only tubes).
3. Dilute samples in PBS for a total of 60 μL in a PCR 8-tube strip.
    * For urea lysates, dilutions of 1:4 or 1:8 should be used. More concentrated sample may need larger (i.e. 1:10, 1:20) dilutions.
    * For RIPA lysates, dilute at least 1:10 in PBS.
    * Ensure dilutions are well mixed and free of lipid and debris to avoid interference.
    * Make an extra set of 50 μL undiluted lysate in case BCA assay needs to be repeated, keep at 4°C.
4. Mix BCA Reagents A and B in 50 mL reagent reservoir.
    * 10 mL A : 200 μL B (Half plate)
    * 20 mL A : 400 μL B (Whole plate)
5. Distribute 10 μL of standard, PBS, or sample to each well using a multichannel pipettor.
    1. Load first three columns with rows for 1 mg / mL - 0.0625 mg / mL,
       followed by two rows of pure PBS.
    2. Load the next 3 - 9 columns with sample, making note of which sample and
       dilution was assigned to each row.
6. Using a multi-channel pipettor, add 200 μL A:B reagent to each well.
7. Wrap plate parafilm to reduce evaporation.
8. Incubate at 37 °C for 30 min (use oven in mass spec lab).
9. Check wells for presence of bubbles, 1 mg / mL standards be purple in color.
10. Measure the absorbance at 562 nm on a plate reader.
    1. Before reads, add a shaking parameter of 1 mm amplitude for 10 seconds.
    2. Set the number of flashes per well to 25.

### Data Processing

1. Open up the plate reader output in Excel or a comparable spreadsheet program.
2. Plot the standards concentrations vs. absorbance for each row of BSA (including 0 mg / mL for PBS alone).
3. Fit a linear regression model to this distribution. Extract the slope (m) and y-intercept (b) for the fitted line.
4. Calculate the protein concentrations for each sample:
   * concentration = (absorbance - b) / m * dilution factor
   * If the calculated concentrations for any sample vary by more than 50% or are outside the standard concentration range, redo the assay for those samples.
   * If the correlation (R^2) is less than X or the scatter plot appears to be
      non-linear, redo the assay.
6. Multiple the concentration by the total sample volume to find the total
   protein content.

<div style="page-break-after: always;"></div>

## Proteolytic Digest and Cleanup

### Equipment & Reagents

* Fresh 1 M DTT (Sigma D0632) in Ammonium Acetate solution
    * Located in wet lab fridge
    * 0.00615 g in 40 μL for each 4 mL of lysate

* Fresh 800 mM Iodoacetamide (Sigma I1144) in Ammonium Acetate solution
    * Located in wet lab fridge within desiccant container
    * 0.044 g in 300 μL for each 4 mL of lysate

* 100 mM Ammonium Acetate pH 8.9

* Trypsin (Promega V5113)
    * Located in -80 °C, each tube is 20 μg / 50 μL

* Acetic Acid (99.99%)
    * Located in Acids cabinet underneath fume hood

### Chemical Modification and Digestion

1. Begin with 1 mg protein in 4 mL volume, adjust volumes accordingly if you
   are starting with more or less lysate.
2. Add 40 μL DTT solution to lysate.
    * Final concentration should be 10 mM DTT.
3. Vortex lysate.
4. Incubate in 56 °C water bath for 1 hour.
5. Add 300 μL IAA solution to lysate.
    * Final concentration should be 55 mM IAA,
6. Wrap tube to block UV light from degrading IAA.
7. Incubate on rotator for 1 hour.
8. Add 8-9 mL Ammonium Acetate pH 8.9 to quench reaction and dilute urea.
9. Add trypsin to lysate.
    * Add trypsin at 1:50 (1 μg trypsin : 50 μg lysate, 20 μg trypsin : 1 mg
      lysate)
10. Incubate on rotator overnight (18 - 24 hours).
11. Stop the reaction by adding 1 mL Acetic Acid.
12. Store samples in -80 °C or proceed directly to cleanup.

### Sep-Pak Cleanup

1. Centrifuge samples for 5 minutes at 3000 rpm to pellet particulate.
2. Attach a 10 or 20 mL syringe to a Sep-Pak Light (Up to 1 mg) or Sep-Pak Plus (Up to 4 mg) C18 Cartridge.
2. Label the syringes and corresponding 10 mL tubes for elution.
3. Attach syringes to Hamilton device and condition the C18 columns.
    1. Flow 10 mL of 0.1% Acetic Acid at 2 mL / min.
    2. Flow 10 mL of 90% Acetonitrile, 0.1% Acetic Acid at 2 mL / min.
    3. Flow 10 mL of 0.1% Acetic Acid at 2 mL / min.
4. Load the sample onto the column at 1 mL / min.
5. Rinse the column with 10 mL of 0.1% Acetic Acid at 2 mL / min.
6. Elute the peptides with 10 mL 40% Acetonitrile, 0.1% Acetic Acid at 1 mL / min.
7. Dry down samples in a speed-vac until they are concentrated enough into peptide aliquots.
    * Calculate volumes for 400 μg by Protein BCA or 150 μg by post-cleanup peptide BCA measurements as there will be significant sample loss during Sep-Pak cleanup.

<div style="page-break-after: always;"></div>

### Lyophilization

1. Immerse the tubes in liquid nitrogen for several minutes to snap freeze samples.
2. Loosen the caps on the tubes such that they are not on tight but cannot be pulled directly off.
3. Place tubes in lyophilizing chambers (round bottom glass cylinder).
4. Close valves on any other chambers before opening any new valves.
5. Attach the chamber to the the lyophilizer.
6. Ensure the pressure on the lyophilizer drops to below 400 millitorr.
7. Check back on the samples after 30 minutes to ensure they have not melted.
8. Let samples lyophilize overnight.
9. Store the samples at -80°C.

<div style="page-break-after: always;"></div>

## Mass Tag Labeling

To label peptides with TMT mass tags, begin with ~150 μg peptides per sample. We use a TMT : peptide ratio of 1.5 : 1. TMT aliquots are prepared to label 2 sets of 6- or 10-plex samples. Overloading samples or leaving TMT to degrade at room temperature will impact labeling efficiency and quantification accuracy. Do not refreeze aliquots.

### Equipment & Reagents

* TMT
    * Located in -80°C storage in bottom half of Thermo freezer.

* 50 mM HEPES (pH 8.5) in HPLC grade water

* 5% Hydroxylammine
    * Located on Jacqueline's shelve in wet lab as 50%, dilute 10x in HPLC water

* 25% Acetonitrile, 0.1% Acetic Acid

* Anhydrous MeCN (freshest one)
    * Located in flammables cabinet under wet lab hood.

### Steps

1. Spin down lyophilized samples.
2. Resuspend dry aliquots in 35 μL 50mM HEPES in HPLC water.
3. Vortex and spin down at 13,400 rpm for 1 minute.
4. Thaw TMT from -80°C and record usage on freezer log.
5. Resuspend TMT in 32 μL anhydrous MeCN (enough for 2 labeling reactions!).
6. Vortex and spin down at 13,400 rpm for 1 minute.
7. Add TMT reagent to peptides (15 ul per reaction!).
8. Vortex and spin down at 13,400 rpm for 1 minute.
9. Incubate for 1 hour at room temperature on shaker in wet lab at 400 rpm.
10. Add 3.2 ul 5% hydroxylamine in HPLC water per 50 ul reaction.
11. Incubate for 15 minutes at room temperature on shaker in wet lab at 400rpm.
12. Combine samples in 1.5 mL screw cap tube.
    * Use the same pipette tip for all transfers here to avoid losing peptides
      due to contact with new surfaces.
13. Wash tubes with 40 μL 25% Acetonitrile, 0.1% Acetic Acid to remove
    remaining sample and add to combined tubed.
    1. Add mixture.
    2. Vortex for 5-10 seconds.
    3. Spin down for 1 minute at 13,400 rpm.
    4. Transfer to combined tube using the same pipette tip as before
    5. Repeat 2 times.
14. Speed-vac sample to dryness for 6 - 8 hours or overnight.
    * Samples should be pale yellow and look fluffy.
15. Store combined sample in -80°C.

Note:
- For IP afterwards, samples resuspend very easily, and need hardly any pH adjustment. So measure before adding base.
