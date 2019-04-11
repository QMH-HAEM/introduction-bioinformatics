# Compile a list of canonical transcripts for given genes
# Download from UCSC hg19 website at http://hgdownload.cse.ucsc.edu/goldenPath/hg19/database/
# - kgXref.txt.gz
# - knownCanonical.txt.gz
# - knownToEnsembl.txt.gz

history | grep sed
history | grep ssh
cat refGene.txt | cut -f13 | head
cat refGene.txt | cut -f2 | head
join --help
cat testlist.txt
cat refGene.txt | less -SN
cat testlist.txt | sort -k 2,2
cat testlist.txt | sort -k 2,2 > testlist.sort.txt
cat testlist.sort.txt
cat refGene.txt | sort -k 2,2 > refGene.sort.txt
cat refGene.sort.txt | less -SN
sort --help
join -1 2 -2 2 testlist.sort.txt refGene.sort.txt | less -SN
join -t $'\t' -1 2 -2 2 testlist.sort.txt refGene.sort.txt | less -SN
cat refGene.txt | grep TP53 | column -t -s $'\t' | less -SN
cat refGene.txt | grep TP53 | grep chr17 | column -t -s $'\t' | less -SN
wget http://hgdownload.soe.ucsc.edu/goldenPath/hg19/database/knownCanonical.txt.gz
gunzip  knownCanonical.txt.gz
cat knownCanonical.txt | less -SN
wget http://hgdownload.soe.ucsc.edu/goldenPath/hg19/database/kgXref.txt.gz
gunzip kgXref.txt.gz
ll -h
cat kgXref.txt | less -SN
cat kgXref.txt | head -1000 | column -t -s $'\t' | less -SN
cat kgXref.txt | less -SN
cat kgXref.txt | head -1000 | column -t -s $'\t' | less -SN
cat kgXref.txt | grep TP53 | less -SN
cat kgXref.txt | grep -P '\tTP53\t' | less -SN
wget http://hgdownload.soe.ucsc.edu/goldenPath/hg19/database/knownToEnsembl.txt.gz
gunzip knownToEnsembl.txt.gz
cat knownToEnsembl.txt | less -SN
cat knownCanonical.txt | less -SN
cat kgXref.txt | less -SN
cat kgXref.txt | head -1000 | column -t -s $'\t' | less -SN
cat kgXref.txt | grep -P '\tTP53\t' | less -SN
cat knownToEnsembl.txt | less -SN
