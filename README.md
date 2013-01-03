image2fusebeads
===============

Convert your image to a fuse beads pattern

<img alt="original image" src="https://raw.github.com/arnehilmann/image2fusebeads/master/examples/donald.jpg" height=150/> &gt; <img alt="fuse beads pattern" src="http://arnehilmann.github.com/image2fusebeads/out/donald.jpg-6.JPG" height=150/>

Requirements
------------

* bash
* imagemagick

For Ubuntu:
```bash
sudo apt-get install imagemagick
```


Usage
-----

```bash
bin/image2fusebeads [IMAGE1 [IMAGE2 ...]]
```
then open the index.html file in the project dir with your favorite web browser.


Examples
--------

Without any arguments, the example files get processed:

```bash
bin/image2fusebeads 
```
resulting in the [lightroom](http://arnehilmann.github.com/image2fusebeads/)
and for example such a [print view](http://arnehilmann.github.com/image2fusebeads/slides.html?files=out/donald.jpg-6.JPG,out/marilyn.jpg-4.JPG).

