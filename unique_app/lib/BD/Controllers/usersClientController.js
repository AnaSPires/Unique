var User = require('../models/users_client');
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
};