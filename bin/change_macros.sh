for m in {30..50..5}
do
  for V in {1..5}
  do
    name_tag_1="Ve$V"
    name_tag_2="$name_tag_1""_mass_$m"
    full_name_C="$name_tag_2"".C"
    full_name_h="$name_tag_2"".h"
    sed -i "83s/.*/      N_invMass-> Fill(InvMass_N*pow(40,-1)*$m);/g" inside_loop.txt
    sed -i "/if (Cut(ientry) < 0) continue;/r inside_loop.txt" ./ATLAS/$full_name_C
    sed -i "/Int_t           fCurrent;/r define_histo.txt" ./ATLAS/$full_name_h
  done
done






