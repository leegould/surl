class SUrl
  BASE = 62
  ALPHABET = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'

  constructor: () ->

  decode: (str) ->

    console.log("decoding: #{str}")

    console.log(str.split(''))

    decodearray = str.split('')
    decodearray[0] = ALPHABET.indexOf(decodearray[0])

    result = decodearray.reduce (id, current) ->
                  console.log('id: ' + id + ' , current: ' + current)
                  console.log(ALPHABET.indexOf(current))
                  console.log(2 * BASE)
                  val = (id * BASE) + ALPHABET.indexOf(current)
                  console.log(val)
                  val

    console.log(result)

    return 23

module.exports = SUrl