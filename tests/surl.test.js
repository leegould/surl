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
            assert.equal('23', surl.decode('ab'));
        })
    })
})