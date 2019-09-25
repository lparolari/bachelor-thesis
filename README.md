# My Bachelor Thesis

![GitHub](https://img.shields.io/github/license/lparolari/bachelor-thesis)

![Travis (.org)](https://img.shields.io/travis/lparolari/bachelor-thesis) ![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/lparolari/bachelor-thesis?sort=semver) ![GitHub All Releases](https://img.shields.io/github/downloads/lparolari/bachelor-thesis/total)

> Design and implementation in Picat of a set constraint solver 

This repository contains the latest version of my
[thesis](https://github.com/lparolari/bachelor-thesis/releases/latest). This
thesis is about the desing and the implementation of a set constraint
solver in Picat. Chapter 1 gives a background on logic programming and
constraint logic programming; then in the Chapter 2 it describes
Picat, the language on which *L_SET* was implemented. In the Chapter 3
and 4, it shows some design choices and implementation details. The
Chapter 5 is on how to use the solver, while the Chapter 6 discuss
about conclusions and future works. Please if you find it useful click
the :star: button, I'll really appreciate it!

This thesis project is highly related to the
[setlog-picat](https://github.com/lparolari/setlog-picat) project,
which contains the source code of the solver described in the
thesis. You can find the presentation for this thesis
[here](https://github.com/lparolari/bachelor-thesis-presentation).

## Download

Download the latest version of `thesis.pdf` from
[here](https://github.com/lparolari/bachelor-thesis/releases/latest),
or browse the releases
[here](https://github.com/lparolari/bachelor-thesis/releases).

## Usage

You can **download the source** code to your local machine with the
following commands.
```bash
# download it
git clone https://github.com/lparolari/bachelor-thesis
# and make it your!
cd backelor-thesis
rm -rf .git
```

In order to **compile the sources** you can use the `Makefile` with
the following commands.
```bash 
make pdf1    # compiles the sources with pdflatex and biber
make pdf2    # compiles the sources with docker
```
You can use a shortcut for pdf files:
```bash
make pdf     # equivalent to `make pdf1` (with pdflatex)
```
or, you can even use internal targets like `pdflatex`, `pdfdocker`,
`biber` to make custom builds.

Then you can read compiled sources with
```bash
make read
```

## Author
- Luca Parolari <<luca.parolari23@gmail.com>>

## Acknowledgments

- My tutor, for the support :heart:
- [unipr semantics repository](https://github.com/UNIPR-Semantica-2016-2017/Appunti),
  for some latex tips and document structure

