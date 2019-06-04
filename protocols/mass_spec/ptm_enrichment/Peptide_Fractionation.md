# Peptide Fractionation

## Reagents

* C18 column, 4.6mm ID, 150mm column (column volume = 1.5mL)
    * Located on chemical shelf in wet lab or attached to HPLC in mass spec lab.
* Buffer A : 10 mM TEAB pH 8
    * 10 mL 1 M TEAB, 990 mL HPLC-grade Water
* Buffer B : 10 mM TEAB pH 8, 99% Acetonitrile
    * 10 mL 1 M TEAB, 990 mL HPLC-grade Acetonitrile

## Steps

1. Prepare the C18 column.
    1. Flush the column with 70% Buffer B for 10 minutes at 1 mL / min.
    2. Flush the column with 100% Buffer A for 10 minutes at 1 mL / min.
2. Load the sample onto the column.
    1. Place the sample you would like to load into a pressure bomb.
    2. Attach the C18 column, using a long 200 μm inner diameter capillary from
       the bomb. Ensure the column is oriented in the correct direction.
    3. Attach a second 200 μm capillary from the other end of the column
       to an eppendorf tube to collect the flow-through and measure loading
       progress.
    4. Load your sample onto the column at < 1000 psi.
3. Attach the column to the HPLC, again ensuring correct orientation. Attach
   the other end to the fraction collector.
4. Wash the column with Buffer A for 10 minutes at 1 mL / min.
5. Fill the fraction collector rack with 15 mL falcon tubes for each fraction
   you are collecting.
    * Tubes should be placed starting in the top-left corner closest to the
      waste line. Divide tubes evenly between the first tube columns of the
      rack (i.e. For 12 fractions, place 6 tubes in the first row, and 6 tubes
      in the second row, both on the side of the rack closest to the waste
      line).
    * The collector will follow a snake-like path, moving from the top of the
      rack down, over a row, and then back up.
    * If you are collecting more than 22 fractions, place tubes in the rack
      according to the standard layout (Accessible by running a mock
      collection and hitting "ADV" to advance over each position).
6. Run [FC-Cycle](https://github.com/white-lab/fc-cycle/releases), located on
   the desktop of the adjacent computer to start the fraction collection. After
   entering the "Time per Tube", start your gradient on the neighboring HPLC.
