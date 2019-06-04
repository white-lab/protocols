# Orbitrap Maintenance

## Venting, Cleaning, and Baking

1. Venting:
    1. Turn off the PC
    2. Remove source stage from the front of the instrument.
    3. Disconnect the high voltage connections.
    4. Turn off (in this order):
        1. LTQ Electronics (White switch)
        2. FT Electronics (Orange switch)
        3. Vacuum pumps (Green switch)
        4. White flip switch on the LTQ
        5. Disconnect a cable from one of the mechanical pumps to stop the
           electronics from tripping when the pumps are turned back on.
2. Cleaning:
    1. Screw out the heated metal capillary.
    2. Clean capillary with methanol (Check for occlusion), dry.
    3. Wait for 30 minutes for the pressure to increase.
    4. Pull out the source (Need to pull quite hard)
    5. Remove the skimmer and clean until the lint free tissue is still white
       after wiping.
        * If very dirty, you may need to sonicate in methanol a number of times.
    6. Ensure that the Flatterpole is clean.
        * If very dirty, it may require opening the instrument further back.
    7. Ensure that no particulate is left upon any surface inside the
       instrument.
    8. Replace everything in its rightful place (May sure to leave no screws
       behind!).
    9. Leave the metal capillary out until the instrument is down to pressure
       (not essential).
    10. To start the instrument pumping, turn on the green vacuum switch on the
        side of the Orbi.
    11. Ensure that one of the mechanical pump accessaries has been unplugged
        and then turn on the main power on the side of the LTQ.
        * Note: The pumps will come on at full speed and this can trip the
          electronics... if this happens, turn the red switch on the back of the
          mechanical pumps.
    12. Leave for 30 minutes (ideal if the ion gauge does not come on too early).
    13. Turn on the Oribtrap electronics and then immediately after, the electronics on the LTQ.
    14. Turn on the PC and observe the instrument manager.
3. Baking:
    * Without baking, the system would take four dyas to get down to a pressure
      of 8e-10 or lower after venting.
    1. A sixteen hour bake is sufficient to get to operational vacuum.
    2. Following the 16 hour bake, a 3.5 hour cool down is required for the
       central electrode PSU to become stable.
        * Note: 1°C = 5 ppm nominal mass drift.
    3. After communication is established, go to the tune page and observe the
       vacuums. The LTQ ion gauge should be less than 3e-5 Torr before baking
       (this indicates that there are no big leaks introduced into the system
       during the cleaning).
    4. Calibrate after cleaning.

## Calibration

1. Set the LTQ's state to off from the computer to disable ion scanning.
2. Remove the stage from the front of the instrument.
    * Make sure the instrument is off to prevent any high voltage shocks. Be
      careful not to touch the front end as it may still be hot.
3. Grab a calibration source, line, and syringe from the drawers underneath the
   QE+.
4. Wash the line and syringe with methanol followed by several syringe
   volume's worth of air.
5. Fill the syringe with 500 μL of LTQ calibration standard, located in the
   fridge underneath the MS lab's reagents.
6. Attach the calibration ion source to the LTQ, the line to the ion source,
   the syringe to the line, and place the syringe in the LTQ's syringe pump.
7. Push the syringe until to you can see a droplet form on the inside of the
   source.
8. Set the LTQ's state to on from the computer and up the ESI spray voltage to
   4 kV. Check for ions in the current scan as your apply pressure to the
   syringe.
9. Drop the ESI spray voltage to 2 kV.
10. Turn on syringe control, set syringe type to Hamilton, infusion rate to
    2 μL / min, and total volume to 500 μL. Check for ions in the current scan.
11. Go to the top menu and select: Control -> Calibrate -> Semi-Automatic.
12. Select All, then deselect negative ion and ultrazoom.
13. Check back on the results after 30 minutes. If any tests have failed,
    re-check just those tests and repeat.
