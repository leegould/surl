var models  = require('../models');
var express = require('express');
var router = express.Router();


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

//router.get('/surl/all', function(req, res, next) {
//  models.SUrl.findAll({
//    include: [ models.SUrl ]
//  }).then(function(Surl) {
//    res.render('index', {
//      title: 'Express',
//      surls: surls
//    });
//  });
//});

module.exports = router;
