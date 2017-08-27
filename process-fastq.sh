# https://docs.qiime2.org/2017.7/
# https://github.com/qiime2/qiime2
# https://forum.qiime2.org/t/how-to-prepare-the-barcodes-fastq-gz-file/589
source activate qiime2-2017.7
qiime tools import \
  --type SingleEndFastqManifestPhred33 \
  --input-path samples/ubiome/ssr_178900 \
  --output-path samples/qiime/ssr_178900

# http://qiime.org/tutorials/processing_illumina_data.html
# https://www.biostars.org/p/245805/
# https://doi.org/10.1371/journal.pone.0176555
# http://metagenomics.anl.gov/
# https://forum.qiime2.org/t/join-and-demultiplex-paired-end-sequences/238
# https://github.com/richardsprague/uBiome/blob/master/docs/HackersGuide/hackersGuide-md/hackersGuide.md

# http://qiime.org/scripts/join_paired_ends.html
source activate qiime1

DIRECTORY=samples/ubiome/ssr_178900
join_paired_ends.py \
  --forward_reads_fp $DIRECTORY/ssr_178900__R1__L001.fastq.gz \
  --reverse_reads_fp $DIRECTORY/ssr_178900__R2__L001.fastq.gz \
  --output_dir $DIRECTORY/join_paired_ends
  