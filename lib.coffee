JSDom   = require 'jsdom'
JQuery  = require 'jquery'
Html2Text = require 'html-to-text'
http = require 'http'

# TODO: Use futures rather than callbacks?

JQuery.fromURL = (url, cb) ->
  JSDom.env url: url, done: (error, window) ->
    $ = JQuery window
    cb $, window, error

mod = randQuote = (cb) ->
  mod.randURL (url, res, err) ->
    mod.quoteFrom url, cb

mod.randQuote = randQuote

mod.randURL = (cb) ->
  opt =
    host: 'discordianquotes.com'
    path: '/random'
    method: 'HEAD'
  con = http.request opt, (res) ->
    cb res.headers.location, res
  con.end()


mod.quoteFrom = (url, cb) ->
  JQuery.fromURL url, ($, win, err) ->
    txt = Html2Text.fromString $(".quote").html()
    cb txt, url: url

module.exports = mod
