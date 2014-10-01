# Node Discordianquotes

This library implements a simple interface for
http://discordianquotes.com .
The command line app should allow you to display a random
quote; the node module should expose a bit more.

# Usage

```
$ npm install -g discordianquotes
$ disco
Take me or leave me; or, as is the usual order of things,
both.

http://discordianquotes.com/quote/leave-usual-order-things
```

See the files on how to use the lib. It's really short.

# Developmemt

This was coded with coffescript.
The package file was creates with yaml.

To generate the corresponding js/json files, you need to run
`make`.

# TODO

* Console output should be colorful
* Fetch the following properties and add them to meta data:
  * Upvotes/Downvotes
  * Attribution
  * Age
* Display the properties on CLI and add flags to turn stuff
  on/off
* We should be able to code this without external libs

# License

"THE BEER-WARE LICENSE" (Revision 42):
<karo@cupdev.net> wrote this lib. As long as you retain this
notice you can do whatever you want with this stuff.
If we meet some day, and you think this stuff is worth it,
you can buy me a beer in return.
I happen to dislike beer so you can buy me a jasmine tee or
a Tschunk.

Karolin Varner

# Hail Eris! Hail Discordia!
