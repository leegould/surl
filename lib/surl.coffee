class SUrl
  BASE = 62
  ALPHABET = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'

  constructor: () ->

  decode: (str) ->
    darr = str.split('')
    darr[0] = ALPHABET.indexOf(darr[0])

    return darr.reduce (id, current) ->
                  (id * BASE) + ALPHABET.indexOf(current)

module.exports = SUrl