# get file creation date
wavdate=$(date +%Y-%m-%d)
# start counter zero
n=0;
# find all wav files in folder and rename all wav files with following snytax
# audiofile_YYYY-MM-DD_000.wav
for file in *.wav ; do mv  "${file}" audiofile_"$wavdate"_"$(printf "%03i" "$n")".wav; n=$((n+1));  done
