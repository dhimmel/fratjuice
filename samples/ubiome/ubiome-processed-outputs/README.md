# Processed sequencing data from uBiome

This directory contains processed sequencing data done by [Elisabeth Bik](https://github.com/eliesbik) from uBiome.

[`results.xlsx`](results.xlsx) contains the following tabs:

- Tab `Mapping` contains the metadata associated with all the samples.
It links each sample (e.g., FJ5 - gut) with sample type (concentrated or not), SeqID (unique sequencing dataset number), tube ID etc.
`count` lists the number of reads assigned to Bacteria, and `count_norm` also lists the reads assigned to Bacteria, but normalized for a total of 1 million reads. 
- Tab `AllTaxa` lists each SeqID, and the `count` and `count_norm` assigned to each taxon, on all taxonomic levels.
This is listed in the long format (useful in R).
- Tab `GenusOnly` is a subset of `AllTaxa`, just listing the genus level data. 
- Tab `SpeciesOnly` is a subset of `AllTaxa`, just listing the species level data.

[`species.xlsx`](species.xlsx) contains the following tabs:

- Tab `SpeciesCountsTable` lists the same data as in tab `SpeciesOnly` from spreadsheet `results.xlsx`, but now in the wide format, comparable to an OTU table.
The microbial species are listed in rows, and the samples are shown in columns.
The absolute counts are shown. 
- Tab `SpeciesNormTable` lists the same data as in tab `SpeciesOnly` from spreadsheet `results.xlsx`, but now in the wide format, comparable to an OTU table.
The microbial species are listed in rows, and the samples are shown in columns.
The normalized counts are shown (normalized to 1 million reads assigned to Bacteria). 
- Tab `Top 20` shows the 20 most abundant species, as based on the normalized counts, averaged over all the samples, and also includes a bar graph.
