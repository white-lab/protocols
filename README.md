# White Lab Protocols

[![Build Status](https://img.shields.io/travis/white-lab/protocols.svg)](https://travis-ci.org/white-lab/protocols)


This repository contains notes and protocols for mass spectrometry analysis of
proteomes. For an introduction to our lab's proteomics workflow, check the
[mass_spec](mass_spec) folder, and for other protocols, check
the [protocols](protocols) and [cell_culture](cell_culture) folders.

## PDF Documents

We supply automatically-compiled PDFs of tagged commits on our
[releases](https://github.com/white-lab/protocols/releases/latest) page:

  * Proteomics Workflow : A series of protocols to prepare sample lysates for proteomics analysis.
  * Full Protocols : All protocols currently used in the lab.
  * Legacy Protocols : Old protocols that have been deprecated or combined into newer workflows.

## Lab Parts and Reagents

  We keep a catalog of our commonly ordered lab supplies in this repository's [parts](parts) folder:

    * [HPLC Parts](parts/HPLC.md)
    * [Wet Lab](parts/Wet_Lab.md)

## Development

All documents contained here are written using
[Markdown](https://daringfireball.net/projects/markdown/). To convert them to
PDF yourself, install `md-to-pdf` via the node package manager and run
`make`:

```
# On CentOS / Fedora / RHEL
sudo yum install npm

# On Debian / Ubuntu
sudo apt-get install npm

# Other environments: https://nodejs.org/en/download/

npm install -g md-to-pdf
make
```

See [.travis.yml](.travis.yml) for an example build environment.
