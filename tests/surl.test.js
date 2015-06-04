/**
 * Created by lgould12 on 03/06/2015.
 */
var assert = require("assert")
var SUrl = require("../lib/surl");

describe('SUrl', function(){
    describe('#decode()', function(){
        var surl = null
        it('should return the decoded string.', function(){
            surl = new SUrl();
            assert.equal(surl.decode('b'), 1);
        })

        it('should return -1 for an empty string.', function(){
            surl = new SUrl();
            assert.equal(surl.decode(''), -1);
        })

        it('should return 63 for bb.', function(){
            surl = new SUrl();
            assert.equal(surl.decode('bb'), 63);
        })
    })
})
