
var express = require('express');
var productsRouter = express.Router();
var productsController = require('../Controllers/usersClientController');
productsRouter.route('')
   .get(usersClientController.get)
   .post(usersClientController.add);
clientsRouter.route('/:id')
   .get(usersClientController.getById)
module.exports = clientsRouter;