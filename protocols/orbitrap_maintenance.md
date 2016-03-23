# Venting, Cleaning, and Baking the Orbitrap

## Steps

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
        * Note: 1 °C = 5 ppm nominal mass drift.
    3. After communication is established, go to the tune page and observe the
       vacuums. The LTQ ion gauge should be less than 3e-5 Torr before baking
       (this indicates that there are no big leaks introduced into the system
       during the cleaning).
    4. Calibrate after cleaning.
