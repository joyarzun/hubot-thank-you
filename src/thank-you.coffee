# Description:
#   Hubot responds any thank message politely. Phrases from:
#   http://www.macmillandictionary.com/thesaurus-category/british/Ways-of-accepting-someone-s-thanks
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot thank[s] [you] - Hubot accepts your thanks
#   hubot obridad[a|o] - Hubot accepts your "obrigada" or "obrigado"
#   hubot gracias - Hubot accepts your "gracias"
#   thanks hubot - Hubot accepts your thanks
#
# Author:
#   github.com/delucas
#

response_english = [
  "you're welcome",
  "no problem",
  "not a problem",
  "no problem at all",
  "don’t mention it",
  "it’s no bother",
  "it’s my pleasure",
  "my pleasure",
  "it’s nothing",
  "think nothing of it",
  "no, no. thank you!",
  "sure thing"
]

response_portuguese = [
  "de nada",
  "não foi nada",
  "disponha",
  "não precisa agradecer",
  "o prazer foi meu",
  "não por isso",
  "capaz",
  "não há de quê",
  "às ordens!"
]

response_spanish = [
  "de nada",
  "no hay problema",
  "fue sin querer queriendo",
  "se aprovechan de mi nobleza",
  "cuando quieras",
  "solo son unos bits",
  "si me pagaran por esto...",
  "gracias por apoyarme en mis decisiones, incluso cuando no estabas de acuerdo con ellas",
  "Nada de esto hubiera siso así de especial sin vuestro apoyo",
  "ni lo menciones",
  "solo sigo ordenes"
]

module.exports = (robot) ->
  robot.respond /thank(s| you)/i, (msg) ->
    msg.send msg.random response_english
  robot.respond /obrigad(a|o)/i, (msg) ->
    msg.send msg.random response_portuguese
  robot.respond /gracias/i, (msg) ->
    msg.send msg.random response_spanish
  thanks = new RegExp "thank(s| you) #{robot.name}", "i"
  robot.hear thanks, (msg) ->
    msg.send msg.random response
