# Magnetic Bead Luminex Protocol for 384-well Plate

## Equipment

* Luminex Machine

## Reagents

* White Optiplate 384-well plates
    * Stored on shelf under plate vacuum.

## Initial Notes

* Remember to add 3 replicates of blanks:
    * -sup blank = media with serum (to mimic proteins secreted by cells during
      drug add’n period)
    * -lysate blank = lysis buffer + 0.1% BSA
* Should have sterile stock of 1% BSA in PBS (made from BSA powder in cold room).
* Assay buffer = 0.1% BSA.
* Don’t put samples in row A.
* Serial 1:2 dilutions to create standard curve.
* Should routinely normalize according to microBCA protein assay (Pierce).
* Make sure Prime B is last used on Luminex machine, if not then run Prime B.
* For phosphor-measurements, more lysate is always better.

## Steps

Day 1:

1. Thaw cell lysate and supernatant samples on ice (may take ~1 hr for sup) or in incubator?
2. Pre-wet plate by washing 3x with 100 μL wash buffer (PBS + 0.1% Tween20 = buffer B)
    * Make sure buffer B was last used, if not run buffer B through
    * Use ‘Miles 384 Elisa’ wash protocol – already has 3 cycles and no wait programmed
3. Add 25 μL bead suspension to each well
    * Vortex bead mixture and make 1:160 total dilution for RTK beads, 1:50 for AXL beads, 1:20 For pERK in PBS/BSA
    * Can use multichannel pipette to move into wells, but make sure to mix well
    * Spin down for 15 seconds in centrifuge
4. Use magnetic separation block on plate washer to wash plate 3x with 100 μL wash buffer
    * Aaron 384 Wash protocol
5. Run BSA and dilute samples into assay buffer (0.1% BSA) if needed. The suggested working range of protein concentration for the assay is 1 to 25 μg total protein/well.
6. Add 15 μL of samples, 50 μL supernatant, or 15 μL standard and standards to each well. Incubate overnight at 4C on the shaker at 750-800 rpm. Protect from light.
    * Use RTK Supermix standard from Allison’s shelf in freezer right side (purple tubes)
 
Day 2:

7. Wash plate with Aaron 384 Wash Protocol
8. Add 15 μL/well biotinylated Detection Ab to capture analyte of interest
    * 1:40 dilution for RTK Ab; 1:180 dilution for Tyro/Axl/Met Ab, 1:50 for 4G10
    * Incubate on shaker by WB apparatus at room temperature for 1 hr
9. Wash plate with Aaron 384 Wash protocol
10. Add 15 μL/well Streptavidin-Phycoerythrin (SAPE) (-80 Stephanie shelf)
    * 1:100 dilution, Use 100x Biorad supply in nonTC 4°C fridge
    * Incubate on shaker for 15 minutes at room temperature
11. Wash plate Abby 384 Wash protocol
    * At this point, samples can sit maximum 1 day before analysis
12. Analyze plate using the Luminex system ~1.5 hrs
    * 1 laser classifies bead (which analyte detected)
    * Other laser determines PE signal (~amount of bound analyte)

## Notes on the Luminex Machine

* The machine needs 30 minutes to warm up lasers. The on switch is on the back
  right of the machine. The attached computer is always left on.
* Open Xponent software. There is no user name, click ‘Log In’.
* Calibration should be done every 2 to 3 weeks. If samples are not showing up
  in proper areas, calibrating the machine is the best first try to fix:
    * You can check latest calibration date using
      ‘Maintenance’->’System Status’.
    * Calibration and verification kits can be found in cold room in clear
      container labeled ‘Miles’.
    * Make sure lot # on disk in box matches that on screen while calibrating.
* Start up the machine:
    * Click ‘Maintenance’ ->’Cmds& Routines’ and select ‘Daily Instrument
      Startup (Luminex)’ to initialize machine.
    * A 2x2 box on the right describes what fluids to fill in the white plastic
      container that gets inserted into the machine. Typically it is as follows:
        * Water (for startup)
        * Alcohol (for startup)
        * Bleach (for shutdown)
    * If going to set automatic shutdown procedure, want to fill bleach now.
    * Hit ‘Eject’ and insert plastic container with fluids (a couple of mLs of
      each) into machine and click ‘Run’.

* Make a protocol for the experiment you want to run. You can make a general
  protocol (for a given kit) then change the batches when you run experiments
  on different days/with different conditions, cell lines, etc:
    * ‘Protocol’ -> ‘Create New Protocol’.
    * Volume: set to 50 μL. The final volume in the wells (re-suspension buffer
      in the case above) should be larger than this, although running the wells
      dry hasn’t seemed to pose problems before. This takes up all the beads in
      the wells if other criteria are not met (time, # max number so if want
      leftover sample will want to change this.
    * Set DD gating: 4335 to 25,000. These values are different for different
      kits but a wider range allows more data to pass. This is comparable to
      side scatter in FACS and accounts for aggregates, which typically don’t
      lie in same bead region even if they get through this wide criteria.
    * Reporter Gain: Enhanced PMT (high).
    * Bead Type: MagPlex for magnetic beads.
    * Plate name: 12.12.03 MagplateOptimax Miles works. If you are using a new
      plate you can calibrate the well depth for the needle using a kit.
    * Don’t set ‘Analysis Settings’.
    * Hit ‘Next’.
    * Select bead regions based on manufacturers protocol and name analytes.
      You can also set the minimum number of beads/well/analyte to stop the run
      for that well.
    * The protocol sets ‘Settings’ and ‘Analytes’. Plate layout is overwritten
      when running a new batch.

* Running a new batch
    * ‘Batches’ -> ‘Create a new batch from an existing protocol’.
    * Give Batch name and select the protocol to go to the ‘Plate layout’
      screen.
    * Select region of plate that you are analyzing. Be sure to use ‘Plate
      Navigation’ inset to scroll to wells 13-24 when analyzing a 384 well plate.
        * You can label your samples as ‘Unknowns’ or ‘Standards’ at this point
          or in post-processing.
    * Use ‘Commands and Routines’ inset to select ‘Post batch routine’
        * ‘Daily Instrument Shutdown’ takes 10 minutes to run after samples are
          finished then machine can be turned off. If you haven’t already, add
          bleach to the appropriate well in the plastic insert.
    * Click ‘Eject’ button to load plate.
    * Hit ‘Run Batch’.

* After protocol is complete, export as .csv file
    * Pay attention to “median” and “count”

* Analyzing Luminex data with old Bio-plex software.
    * You must first convert the file to a compatible format
* Open ‘Bio-PlexResuts Generator’ from desktop
* Select file to convert and name output folder
* Click ‘Generate’
    * Open ‘Bio-plex Manager 6.1’ Software
* Load the converted file
* Clicking on the plate image allows you to label your samples and standards,
  generate a standard curve, convert unknown samples based on your standard
  curve (five parameter logistic regression), and plot the outputs for a given
  analyte.
