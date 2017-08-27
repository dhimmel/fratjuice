# The #fratjuice microbiome

For study background, see the [inaugural tweet](https://twitter.com/dhimmel/status/873566905944223744).

## Scripts

[`generate-details.py`](generate-details.py) creates markdown documents with details for each sample.

## Environment

This repository uses [conda](http://conda.pydata.org/docs/) to manage its environment as specified in [`environment.yml`](environment.yml).
Install the environment with:

```sh
conda env create --file=environment.yml
```

Then use `source activate fratjuice` and `source deactivate` to activate or deactivate the environment.
On windows, use `activate fratjuice` and `deactivate` instead.

Also install the `qiime2-2017.7` environment with Qiime 2:

```sh
# https://docs.qiime2.org/2017.7/install/native/
conda create \
  --name=qiime2-2017.7 \
  --file=https://data.qiime2.org/distro/core/qiime2-2017.7-conda-linux-64.txt
```

And install the Qiime 1 environment using:

```sh
# http://qiime.org/install/install.html
conda create \
  --channel=bioconda \
  --name=qiime1 \
  python=2.7 qiime matplotlib=1.4.3 mock nose fastq-join
```
