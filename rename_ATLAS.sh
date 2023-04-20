#!bash for automatization of macros
i=11

for m in {40..50..5}
do
  for V in {1..5}
  do
    path_to_event="/home/santi/Documents/TOOLS/MG5_aMC_v3_1_1/bin/HNL_MU_JJ_LHCb/Events/run_$i/"
    name_tag_1="Ve$V"
    name_tag_2="$name_tag_1""_mass_$m"
    name_root="$name_tag_2""_delphes_events.root"
    new_path="$path_to_event""$name_root"
    old_tag="tag_1_delphes_events.root"
    old_path="$path_to_event""$old_tag"
    mv $old_path $new_path 
    let i=i+1
  done
done

