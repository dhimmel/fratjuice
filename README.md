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
