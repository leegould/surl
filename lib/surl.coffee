class SUrl
  BASE = 62
  ALPHABET = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'

  constructor: () ->

  create: (str) ->

#    surl = sequelize.define('surl', {
#      id: { type: Sequelize.INTEGER },
#      url: { type: Sequelize.STRING }
#    });
#
#    surl.sync({force: true}).then(function() {
#      return surl.create({
#        url: str
#      });
#    });

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