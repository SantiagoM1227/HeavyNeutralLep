for m in 45
do
  for V in {3..5}
  do
    name_tag_1="  Ve$V"
    name_tag_2="$name_tag_1""_mass_$m"
    name_tag="$name_tag_2"" = run_tag ! name of the run   "
    sed -i "36s/.*/  9900014 $m # mN2  /" /home/santi/Documents/TOOLS/MG5_aMC_v3_1_1/bin/HNL_MU_JJ_LHCb/Cards/param_card.dat
    sed -i "55s/.*/    2 1.000000e-0$V # VeN2 /" /home/santi/Documents/TOOLS/MG5_aMC_v3_1_1/bin/HNL_MU_JJ_LHCb/Cards/param_card.dat
    sed -i "58s/.*/    5 1.000000e-0$V # VmuN2 /" /home/santi/Documents/TOOLS/MG5_aMC_v3_1_1/bin/HNL_MU_JJ_LHCb/Cards/param_card.dat
    sed -i "61s/.*/    8 1.000000e-0$V # VtaN2 /" /home/santi/Documents/TOOLS/MG5_aMC_v3_1_1/bin/HNL_MU_JJ_LHCb/Cards/param_card.dat
  ./mg5_aMC decay_simulations_LHCb.txt
  done
done
for m in 50
do
  for V in {1..5}
  do
    name_tag_1="  Ve$V"
    name_tag_2="$name_tag_1""_mass_$m"
    name_tag="$name_tag_2"" = run_tag ! name of the run   "
    sed -i "36s/.*/  9900014 $m # mN2  /" /home/santi/Documents/TOOLS/MG5_aMC_v3_1_1/bin/HNL_MU_JJ_LHCb/Cards/param_card.dat
    sed -i "55s/.*/    2 1.000000e-0$V # VeN2 /" /home/santi/Documents/TOOLS/MG5_aMC_v3_1_1/bin/HNL_MU_JJ_LHCb/Cards/param_card.dat
    sed -i "58s/.*/    5 1.000000e-0$V # VmuN2 /" /home/santi/Documents/TOOLS/MG5_aMC_v3_1_1/bin/HNL_MU_JJ_LHCb/Cards/param_card.dat
    sed -i "61s/.*/    8 1.000000e-0$V # VtaN2 /" /home/santi/Documents/TOOLS/MG5_aMC_v3_1_1/bin/HNL_MU_JJ_LHCb/Cards/param_card.dat

  ./mg5_aMC decay_simulations_LHCb.txt
  done
done
