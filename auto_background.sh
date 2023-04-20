for name in W_MUVM Z_MUMU QCD
do
for detector in LHCb/ ATLAS/ CMS/
do 
 bkg="$name""_$detector"
 echo $bkg
 sed -i "1s%.*%launch $bkg %" /home/santi/Documents/TOOLS/MG5_aMC_v3_1_1/bin/background.txt
 ./mg5_aMC background.txt
done
done
