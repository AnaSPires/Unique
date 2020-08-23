import 'dart:io';
import 'dart:convert';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:http_server/http_server.dart';

class UserController {
  //construtor
  UserController(this._reqBody, Db db)
      : _req = _reqBody.request,
        _store = db.collection("Crianca") {
    handle();
  }

  HttpRequestBody _reqBody;
  final HttpRequest _req;
  final DbCollection _store;

  handle() async {
    switch (_req.method) {
      case 'GET':
        await handleGet();
        break;
      case 'POST':
        await handlePost();
        break;
      case 'PUT':
        await handlePut();
        break;
      case 'DELETE':
        await handleDelete();
        break;
      case 'PATCH':
        await handlePatch();
        break;
      default:
        _req.response.statusCode = 405;
    }

    _req.response.close();
  }

  handleGet() async {
    _req.response.write(await _store.find().toList());
  }

  handlePost() async {
    _req.response.write(await _store.save(_reqBody.body));
  }

  handlePut() async {
    var id = int.parse(_req.uri.queryParameters['id']);
    var itemToUpdate = await _store.findOne(where.eq('id', id));

    if (itemToUpdate == null)
      await _store.save(itemToUpdate);
    else
      _req.response.write(await _store.update(itemToUpdate, _reqBody.body));
  }

  handleDelete() async {
    var id = int.parse(_req.uri.queryParameters['id']);
    var itemToRemove = await _store.findOne(where.eq('id', id));

    if (itemToRemove != null) await _store.remove(itemToRemove);
  }

  handlePatch() async {
    var id = int.parse(_req.uri.queryParameters['id']);
    var itemToPacth = await _store.findOne(where.eq('id', id));

    _req.response
        .write(await _store.update(itemToPacth, {r'$set': _reqBody.body}));
  }
}

/*var Parents = require('../models/usersParents');
var get = function (req,res) {        
          Parents.find(function (err, parent) {
            if (err) {
                res.status(500);
                res.send("Erro interno do servidor");
            }
            else {
                res.status(200);
                res.send(parent);
                console.log("Responsáveis cadastrados:", parent)
            }
        });
     };
     var add = function (req, res) {
         
        var parent = new Parents(req.body);
        parent.save(function (err) {
            if (err) {
                res.status(500);
                res.send('Erro : falha ao incluir responsável...');
            }
            else {
                res.status(201);
                res.send(parent);
                console.log("Responsável cadastrado com sucesso!")
            }
        })
    };
module.exports =  {
  add: add,
  get: get
};    */

/*var User = require('../models/users_client');
   var get = function (req,res) {
            User.find(function (err, clients) {
                if (err) {
                    res.status(500);
                    res.send("Erro interno do servidor");
                }
                else {
                    res.status(200);
                    const qtd = User.count()
                    res.send(products);
                }
            });       
    };

    var getById = function (req, res) {        
        User.findById(req.params.id, function (err, clients) {
            if (err) {
                res.status(404);
                res.send("Usuário não encontrado!");
            }
            else {
                res.status(200);
                const {id, image, age} = clients
                //res.send(image);
                //console.log("Imagem: ", image)
                //res.send(products);
            }
        })
    };


    var add = function (req, res) {
        var user = new User(req.body);
        user.save(function (err) {
            if (err) {
                res.status(500);
                res.send('Erro : falha ao incluir usuário...');
            }
            else {
                res.status(201);
                res.send(user);
            }
        })
    };
module.exports =  {
  add: add,
  get: get,
  getById: getById
};*/
