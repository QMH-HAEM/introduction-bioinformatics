######################################################################################
# Introduction to simple regular expression, sed for row-operation, awk for column operation
######################################################################################

cd bioinfo_session/
ls
grep -w CEBPA refGene.txt
ll -h
mv refGene.txt ../
cd ../Ref
grep -w CEBPA refGene.txt
cat refGene.txt | grep -E 'NPM1\|CEBPA'
cat refGene.txt | grep -E 'NPM1|CEBPA'
cat refGene.txt | grep -P 'NPM1|CEBPA'
cat refGene.txt | grep -P '\tNPM1\t|\tCEBPA\t'
cat refGene.txt | grep -P '\tNPM1\t|\tCEBPA\t|\tFLT3\t|\tJAK2\t|\tCALR\t|\tMPL\t|\tCSF3R\t|\tSETBP1\t'
cat refGene.txt | grep -P '\tNPM1\t|\tCEBPA\t|\tFLT3\t|\tJAK2\t|\tCALR\t|\tMPL\t|\tCSF3R\t|\tSETBP1\t' | less -SN
cat refGene.txt | grep -P '\tNPM1\t|\tCEBPA\t|\tFLT3\t|\tJAK2\t|\tCALR\t|\tMPL\t|\tCSF3R\t|\tSETBP1\t' | sort -k 3,3V -k 5,5n | less -SN
cp /mnt/c/Users/howan/Dropbox/HW/Programming/Myeloid67_CanonicalFinal.txt ./
cat Myeloid67_CanonicalFinal.txt | cut -f13
cat Myeloid67_CanonicalFinal.txt | cut -f7
cat Myeloid67_CanonicalFinal.txt | cut -f6
cat Myeloid67_CanonicalFinal.txt | cut -f6 | sort | uniq > Myeloid67_GeneList.txt
cat Myeloid67_GeneList.txt | sed -e 's/^/\\t/g'
cat Myeloid67_GeneList.txt | sed -e 's/^/\\t/g' | sed -e 's/$/\\t/g'
cat Myeloid67_GeneList.txt | sed -e 's/^/\\t/g' | sed -e 's/$/\\t/g' | tr "\n" "|"
grep -P '\tABL1\t|\tANKRD26\t|\tASXL1\t|\tATM\t|\tATRX\t|\tBCOR\t|\tBCORL1\t|\tBRAF\t|\tCALR\t|\tCBL\t|\tCBLB\t|\tCBLC\t|\tCDKN2A\t|\tCEBPA\t|\tCREBBP\t|\tCSF3R\t|\tCUX1\t|\tCXCR4\t|\tDDX41\t|\tDNMT3A\t|\tETNK1\t|\tETV6\t|\tEZH2\t|\tFBXW7\t|\tFLT3\t|\tGATA1\t|\tGATA2\t|\tGNAS\t|\tGNB1\t|\tHRAS\t|\tIDH1\t|\tIDH2\t|\tIKZF1\t|\tJAK2\t|\tJAK3\t|\tKDM6A\t|\tKIT\t|\tKMT2A\t|\tKMT2B\t|\tKMT2D\t|\tKRAS\t|\tMPL\t|\tMYD88\t|\tNF1\t|\tNOTCH1\t|\tNPM1\t|\tNRAS\t|\tPDGFRA\t|\tPHF6\t|\tPPM1D\t|\tPTEN\t|\tPTPN11\t|\tRAD21\t|\tRUNX1\t|\tSETBP1\t|\tSETD2\t|\tSETDB1\t|\tSF3B1\t|\tSMC1A\t|\tSMC3\t|\tSRSF2\t|\tSTAG2\t|\tTET2\t|\tTP53\t|\tU2AF1\t|\tWT1\t|\tZRSR2\t' refGene.txt | cut -f13 | sort | uniq | wc -l
cat refGene.txt | less -SN
cat refGene.txt | sed -n '31,35p'
cat refGene.txt | less -SN
cat refGene.txt | cut -f3,5,6 | less -SN
cat refGene.txt | awk '{print $3"\t"$5"\t"$6}' | less -SN
cat refGene.txt | awk '{print $3$5$6}' | less -SN
cat refGene.txt | awk '{print $3" "$5" "$6}' | less -SN
cat refGene.txt | awk '{print $3","$5","$6}' | less -SN
cat refGene.txt | awk '{print $3"\t"$5-1"\t"$6}' | less -SN
cat refGene.txt | awk '{print $3"_"$5"_"$6}' | less -SN
