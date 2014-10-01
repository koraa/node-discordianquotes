#!/usr/bin/env node

require("discordianquotes")(function(quote, meta) {
  console.log(quote + "\n\n" + meta.url);
  process.exit(0);
});
