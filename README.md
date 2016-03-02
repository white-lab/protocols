# White Lab Protocols

This repository contains notes and protocols for mass spectrometry analysis of
proteomes. For an introduction to our overall lab workflow, check the
[workflow](mass_spec/workflow.md) document, and for individual protocols, check
the [protocols](protocols) folder.

## PDF Documents

We supply automatically-compiled PDFs of tagged commits on our
[releases](https://github.com/white-lab/protocols/releases) page.

All documents contained here are written using
[Markdown](https://daringfireball.net/projects/markdown/). To convert them to
PDF yourself, install `markdown-pdf` via the node package manager and run
`make`:

```
# On CentOS / Fedora / RHEL
$ sudo yum install npm

# On Debian / Ubuntu
$ sudo apt-get install npm

$ npm install markdown-pdf
$ make
```
