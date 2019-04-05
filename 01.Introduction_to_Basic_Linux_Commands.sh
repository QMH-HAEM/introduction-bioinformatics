####################################################################################################
# Introduction to basic Linux commands

# This session cover Linux file structure and basic commands including:
# - pwd
# - ls
# - cd
# - mkdir
# - rmdir
# - mv
# - cp
# - touch
# - cat
# - less

# Concepts of absolute and relative file paths are introduced
#####################################################################################################

cd /
ls
mkdir abc
cd ~
pwd
cd ..
pwd
cd ~
cd ../..
pwd
cd ~
ls
cd bin
pwd
cd ../Downloads/
pwd
ls ../program/
ls ../../../../bin/
ls /
ls /bin
cd /home/hwip/program/
cd ../Downloads/
cd ~/program/
cd ..
ls
cd Ref
ls
mv /mnt/c/Users/howan/Desktop/refGene.txt.gz ./Ref
cd Ref
ls
ls -l
ls -lh
gunzip refGene.txt.gz
ls -lh
head refGene.txt
less -S refGene.txt
less refGene.txt
less -S refGene.txt
cat refGene.txt | cut -f3
cat refGene.txt
history
history 20
history 20 > history.txt
cat history.txt
date
cal
cal 2019
cal 1990
cd /mnt/c/Users/howan/Data/MyeloidPanel/
ls
mkdir UKAnnoToDB
cp ./Batch*/*/results/*_INDEL_Haplo_FINAL.txt ./UKAnnoToDB/
ls UKAnnoToDB/
cp ./Batch*/*/results/*_SNP_Haplo_FINAL.txt ./UKAnnoToDB/
ls
ls UKAnnoToDB/
ls
