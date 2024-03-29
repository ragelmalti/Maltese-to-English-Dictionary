# Maltese to English Dictionary
Maltese to English Dictionary, written in the '.dsl' format

I have written an [article on my website](https://maltese-archipelago-info.neocities.org/categories/languages/maltese-to-english-dictionary.html), detailing the layout of the dictionary, how to install it, and the resources I used to create it.

I have used the book: ['Learn Maltese, why not?'](https://www.worldcat.org/title/learn-maltese-why-not/oclc/786118717&referer=brief_results) and the website [Ġabra](https://mlrs.research.um.edu.mt/resources/gabra/), to create this dictionary.

A raw '.dsl' file, MUST be converted to the UTF-16 character encoding format, to be read by dictonary software, such as [GoldenDict](http://goldendict.org/). Github cannot read UTF-16 encoded files, and therefore, the 'malti-english.dsl' file in this repo, is in the UTF-8 format only.

You can also automatically convert the raw '.dsl' file in this repo, to a compressed format that can be read by dictionary software.

To do this, run the rezip_dsl.rb script, in the scripts folder, using the terminal command:

`ruby rezip_dsl.rb ../malti-english.dsl`

The 'rezip_dsl.rb' script, is taken from the [dsl-tools](https://github.com/dohliam/dsl-tools) github repo. **THE CREATOR OF THIS REPO, RAĠELMALTI, DID NOT CREATE THIS SCRIPT.**
