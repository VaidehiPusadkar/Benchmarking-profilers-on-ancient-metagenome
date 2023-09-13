#Step1: Adaptor removal for single-end reads

for file in *_s.fq; do AdapterRemoval --file1 ${file} --basename files_after_adaptor_removal/final_${file} --trimns --trimqualities; done

#Step2: Databases of all the tools were build for all the profilers
#Step3: Commands used Running the profilers on each simulated metagenome sample
#Kraken2 

for input_file in *.fasta;do echo "kraken2 --db kraken_db ${input_file} --report kraken2_${input_file}_report.out --output kraken2_${input_file}.out"; done

#KrakenUniq

for input_file in *.fasta;do echo "krakenuniq --db krakenuniq_db ${input_file} --output krakenuniq_${input_file}.out --report-file krakenuniq_${input_file}_report.out"; done

#Kaiju

for input_file in *.fasta;do echo "kaiju -t kaiju_db/nodes.dmp -f kaiju_db/kaiju_db_refseq.fmi -i ${input_file} -o ${input_file}.out"; done

#Bracken
# Kraken output report files is used as the input in bracken

for input_file in *report.out; do bracken -d kraken_db -i ${input_file} -o bracken_genus_${input_file} -l 'G'; done
for input_file in *report.out; do bracken -d kraken_db -i ${input_file} -o bracken_species_${input_file} -l 'S'; done

#Metaphlan4 
conda install -c bioconda python=3.7 metaphlan

for input_file in *.fasta; do echo "metaphlan ${input_file} --input_type fasta --nproc 4 --bowtie2db MetaPhIan_database_v2 > metaphlan_${input_file}"; done

#mOTUs
conda create -n motu-env motus
conda activate motu-env
for file in *.fq.truncated; do echo "motus profile -s ${input_file} -k genus > genus_motus_${input_file}.out"; done 
for file in *.fq.truncated; do echo "motus profile -s ${input_file} > genus_motus_${input_file}.out"; done
