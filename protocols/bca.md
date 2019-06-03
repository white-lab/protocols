# Bicinchoninic Acid (BCA) Assay

## Equipment

* Plate reader
    * Tecan Infinite 200
    * Any alternate model that can measure absorbance at 562 nm.

## Reagents

* Pierce™ BCA Protein Assay Kit
    * BCA Reagent A
    * BCA Reagent B
    * Bovine Serum Albumin (BSA) Standard Ampules, 2mg/mL

* Falcon 96-well, clear, flat bottom plate with lid

* VMR Reagent Reservoir
    * A large weigh boat may substitute here, though it is less convenient.

* 1X Phosphate-buffered saline (PBS)

## Steps

1. Break open BSA ampule and transfer liquid to 1.5 mL tube.
2. Make sequential 2-fold BSA dilutions from 1 mg / mL to 0.0625 mg / mL
    1. Label 5x 1.5 mL tubes.
    2. Add 60 μL PBS to each tube.
    3. Transfer 60 μL from 2 mg / mL BSA to 1 mg / mL tube.
    4. Dispense and aspirate 60 μL at least seven times to ensure proper mixing
       of liquids.
    5. Repeat for each subsequent dilution.
3. Make 1:4 and 1:8 dilutions of sample in PBS.
    1. 15 μL sample to 45 μL PBS.
    2. 7.5 μL sample to 52.5 μL PBS.
    3. Make an extra set of 50 μL undiluted lysate in case BCA assay needs to be
       repeated, keep at 4 °C.
    4. More concentrated sample may need larger (i.e. 1:10, 1:20) dilutions.
    5. For RIPA samples, dilute 1:10 in PBS.
4. Mix BCA Reagents A and B in reagent reservoir.
    1. 10 mL A : 200 μL B (Half plate)
    2. 20 mL A : 400 μL B (Whole plate)
5. Distribute 10 μL of standard, PBS, or sample to each well.
    2. Load first three columns with rows for 1 mg / mL - 0.0625 mg / mL,
       followed by two rows of pure PBS.
    3. Load the next 3 - 9 columns with sample, making note of which sample and
       dilution was assigned to each row.
6. Using a multi-channel pipette, add 200 μL A:B reagent to each well.
7. Cover with parafilm to reduce evaporation.
8. Incubate at 37 °C for 30 min (use oven in mass spec lab).
9. Check wells for presence of bubbles, 1 mg / mL standards be purple in color.
10. Measure the absorbance at 562 nm on a plate reader.
    1. Before reads, add a shaking parameter of 1 mm amplitude for 10 seconds.
    2. Set the number of flashes per well to 25.

## Data Processing

1. Open up the plate reader output in Excel or a comparable spreadsheet program.
2. Plot the standards concentrations vs. absorbance for each row of BSA
   (including 0 mg / mL for PBS alone).
3. Fit a linear regression model to this distribution.
    1. If the correlation (R^2) is less than X or the scatter plot appears to be
       non-linear, redo the assay.
4. Extract the slope (m) and y-intercept (b) for the fitted line.
5. Calculate the protein concentrations for each sample:
   concentration = (absorbance - b) / m
6. Multiple the protein concentrations by their dilution factor.
7. If the calculated concentrations for any sample vary by more than X, redo the
   assay for those samples.
   1. If the concentrations are outside the standards concentrations, redo the
      assay for those samples with a greater dilution.
8. Multiple the concentration by the total sample volume to find the total
   protein content.
