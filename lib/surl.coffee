
class SUrl
  BASE = 62
  ALPHABET = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
#  models = require '../models'
  models = require '../models/index'
  ShortUrl = models.ShortUrl

  constructor: () ->

  create: (str) ->

    newsurl = ShortUrl
      .build
        url: str

    newsurl.save()

    console.log('newsurl.id ' + newsurl.id)

    item = ShortUrl
    .findOrCreate
      where: { url: str }

    console.log(item)
    console.log('ITEMID: ' + item.id)

#    .success (shorturl, created) ->
#      console.log shorturl.values
#      console.log created

#    .spread( (item, created) ->
#      console.log(item.get({plain: true}))
#      console.log(created)
#    )

#    item = ShortUrl.build({
#        url: str
#      }).save()
#    .error((row) ->
#      console.log('could not save the row ' + JSON.stringify(row))
#    )

# http://stackoverflow.com/questions/28003772/how-can-i-set-up-a-sequelize-singleton-with-coffeescript
#    surl = sequelize.define('surl', {
#      id: { type: Sequelize.INTEGER },
#      url: { type: Sequelize.STRING }
#    });
#
    return "a"

  decode: (str) ->
    darr = str.split('')
    darr[0] = ALPHABET.indexOf(darr[0])

    return darr.reduce (id, current) ->
                  (id * BASE) + ALPHABET.indexOf(current)

  encode: (id) ->
    console.log(id)
    encoded = ''
    while id > 0
      console.log(id)
      encoded += ALPHABET[id % BASE]
      id = parseInt(id / BASE)

    console.log('Return: ' + encoded)
    return encoded

module.exports = SUrl