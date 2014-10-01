#!/usr/bin/env node;

require("./lib")(function(quote, meta) {
  console.log(quote + "\n\n" + meta.url);
  process.exit(0);
});
