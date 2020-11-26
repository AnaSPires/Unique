import 'dart:io';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:http_server/http_server.dart';

class RespController {
  //construtor
  RespController(this._reqBody, Db db)
      : _req = _reqBody.request,
        _store = db.collection("Responsaveis") {
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
