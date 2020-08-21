var Parents = require('../models/usersParents');
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
};    
 