
sfsdfName         Sex        Weight    
Leo          M          55.67
Jack         F          65.67
Mack         F          0.00
#!/bin/bash

printf "%-12s %-10s %-10s\n" Name  Sex Weight
printf "%-12s %-10c %-4.2f\n" Leo  M   55.6655
printf "%-12s %-10c %-4.2f\n" Jack F   65.6655
printf "%-12s %-10c %-4.2f\n" Mack F 
name=5
readonly name
unset name