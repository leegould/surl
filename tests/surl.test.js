/**
 * Created by lgould12 on 03/06/2015.
 */
var assert = require("assert")
var SUrl = require("../lib/surl");

describe('SUrl', function(){
    var surl = null

    describe('#decode()', function(){

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

    describe('#encode()', function(){

        it('should return the encoded id.', function(){
            surl = new SUrl();
            assert.equal(surl.encode('1'), 'b');
        })

        it('should return the a for a zero id.', function(){
            surl = new SUrl();
            assert.equal(surl.encode('a'), '');
        })

        it('should return the encoded large id.', function(){
            surl = new SUrl();
            assert.equal(surl.encode('125'), 'bc');
        })
    })

    // http://www.eguneys.com/blog/2014/09/17/building-a-voting-app-rest-api-slash-w-sequelize

    describe('#create()', function(){
        it('should accept a string and return an encoded string of the id.', function(){
            surl = new SUrl();
            assert.equal(surl.create("blah"), "a");
        })
    })
})



