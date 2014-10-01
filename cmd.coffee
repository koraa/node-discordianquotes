Q = require "./lib"

Q (quote, meta)->
  console.log "#{quote}\n\n#{meta.url}"
  process.exit 0
