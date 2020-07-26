
var express = require('express');
var sellerRouter = express.Router();
var sellerController = require('../Controllers/sellerController');
sellerRouter.route('')
.get(sellerController.get)
.post(sellerController.add);
module.exports = sellerRouter; 