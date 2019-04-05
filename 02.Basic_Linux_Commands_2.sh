############################################################################################################
# Introduce more basic Linux commands, including
# - echo
# - touch
# - cat
# - wc
# - jobs
# - fg
# - bg
# - | (piping)
# - grep
# - nano (for quick text editing)
# - sort
# - uniq
#
# Also introduce to the format and contents of refGene.txt, the general format of tab-delimited files
#############################################################################################################

mkdir bioinfo_session
cd bioinfo_session/
ls
echo "19H123"
echo "19H123" > samplelist.txt
ls
cat samplelist.txt
echo "19H456" >> samplelist.txt
cat samplelist.txt
touch samplelist2.txt
ls
ll -h
rm samplelist2.txt
ls
mv samplelist.txt samplelist3.txt
ls
cat samplelist3.txt
cp samplelist3.txt samplelist4.txt
ls
cat samplelist3.txt samplelist4.txt
cat samplelist3.txt samplelist4.txt > samplelist5.txt
cat samplelist5.txt
ls
wc -l samplelist3.txt
wc -l samplelist4.txt
wc -l samplelist5.txt
wc -l samplelist*.txt
wc -l samplelist*
wc -l samplelist*.
wc -l *
cd /mnt/c/Users/howan/Data/MyeloidPanel/
ls
mkdir copy_test
cd copy_test/
cp ../Batch3*/*/results/*_Haplo_FINAL.txt ./
ls
cd ..
rm -r copy_test/
mkdir copy_test
rm copy_test/
rm -r copy_test/
cd ~
ls
cd Ref
ls
cat refGene.txt
jobs
fg
jobs
kill %1
jobs
top
ls
cd ~
ls
ln -s ./Ref/refGene.txt ./
ls
ll -h
ls -lh
less -SN refGene.txt
more refGene.txt
less refGene.txt
less -S refGene.txt
find refGene.txt
locate refGene.txt
less -S refGene.txt
cat refGene.txt | grep NPM1
cat refGene.txt | grep NPM1 | less -S
cat refGene.txt | grep NPM1 | less -SN
cat refGene.txt | grep TP53 | less -SN
cat refGene.txt | grep "TP53" | less -SN
cat refGene.txt | grep "TP53 " | less -SN
cat refGene.txt | grep "TP53" | less -SN
cat refGene.txt | grep "TP53" | grep chr17 | less -SN
cd bioinfo_session/
touch abc.txt
nano abc.txt
cat abc.txt
nano abc.txt
cat abc.txt
cat abc.txt | grep HKU
cat abc.txt | grep HK
cat abc.txt | grep -P "^HK"
nano abc.txt
cat abc.txt | grep -P "^HK"
cat abc.txt | grep -P "HK$"
nano abc.txt
cat abc.txt
cat abc.txt | grep -P "HK$"
cd ~/Ref
cat refGene.txt | grep TP53 | grep chr17 | less -SN
cat refGene.txt | grep -P "\tTP53\t" | less -SN
cat refGene.txt | grep -P \tTP53\t | less -SN
cat refGene.txt | grep TP53 | grep chr17 | less -SN
cat refGene.txt | grep "\tTP53\t" | less -SN
cat refGene.txt | grep -w TP53 | less -SN
cat refGene.txt | grep TP53 | grep chr17 | less -SN
cat refGene.txt | grep "\tTP53\t" | less -SN
cat refGene.txt | grep -P "\tTP53\t" | less -SN
grep --help
cat refGene.txt | less -SN
cat refGene.txt | cut -f12
cat refGene.txt | cut -f11 | less -SN
cat refGene.txt | cut -f10 | less -SN
cat refGene.txt | cut -f13 | less -SN
cut --help
cat refGene.txt | cut -f13 | less -SN
cat refGene.txt | cut -f13 | sort | less -SN
cat refGene.txt | cut -f13 | sort | uniq | less -SN
cat refGene.txt | cut -f13 | sort | uniq | wc -l
cat refGene.txt | cut -f13 | uniq | wc -l
cat refGene.txt | cut -f13 | uniq | less -SN
cat refGene.txt | cut -f13 | uniq | sort | less -SN
cat refGene.txt | less -SN
cat refGene.txt | sort -k3,3 | less -SN
cat refGene.txt | sort -k3,3v | less -SN
cat refGene.txt | sort -k3,3V | less -SN
cat refGene.txt | sort -k3,3V -k 5,5n | less -SN
