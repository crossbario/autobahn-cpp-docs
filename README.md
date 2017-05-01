# AutobahnC++ Documention

This repository contains the documentation built in HTML format from the [AutobahnC++](https://github.com/crossbario/autobahn-cpp) source code using Doxygen.

The built documentation from this repository is then hosted via GitHub (project) pages and the **documentation can be accessed live [here](https://crossbario.github.io/autobahn-cpp-docs).**

## Build the docs

You can view the live docs [here](https://crossbario.github.io/autobahn-cpp-docs), or build locally following this section.

### Requirements

To build the documentation, you need a working copy of the AutobahnC++ repository residing as a sibling to this repository in your filesystem hierarchy:

```console
oberstet@thinkpad-t430s:~/scm/crossbario$ ls -la | grep autobahn-cpp
drwxrwxr-x  7 oberstet oberstet  4096 Apr 28 19:11 autobahn-cpp
drwxrwxr-x  4 oberstet oberstet 12288 Apr 28 19:23 autobahn-cpp-docs
```

Further, you need Doxygen and a Boost installation for Doxygen to refer to:

```console
sudo apt-get install -y doxygen libboost-all-dev
```

### Building

First, edit [Doxyfile](Doxyfile) and adjust the AutobahnC++ library version for which the docs are built (yeah, we could improve that):

```
PROJECT_NUMBER         = 17.5.1
```

> This should be a properly tagged release number!

Then type

```console
make docs
```

The docs we be built in [docs](docs/index.html).

Then commit this repo and push. Done. The docs are now live.
