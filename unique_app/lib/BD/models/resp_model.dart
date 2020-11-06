//model

//import 'dart:io';
//import 'package:mongo_dart/mongo_dart.dart';
//import 'package:http_server/http_server.dart';
//import '../server.dart' as myServer;

//import '../dart_mongo.dart' as dart_mongo;

class Responsavel {
  int id;
  int idCrianca;
  String nome, email, celular, senha;

  Responsavel(int idP, String nomeP, String emailP, String celularP,
      String senhaP, int idCriancaP) {
    this.id = idP;
    this.nome = nomeP;
    this.email = emailP;
    this.celular = celularP;
    this.idCrianca = idCriancaP;
    this.senha = senhaP;
  }
}
/*
seEffect(() => { 
           api.get('seller').then(response=>{                            
                  setSellers(response.data)   
            } )   
            console.log(sellers)
            } , [])

          function handleInputChange(event: ChangeEvent<HTMLInputElement>){
               // setImage(image)
                const {name, value} = event.target    
                 setFormData({...formData, [name]: value})
          }

          function handleSelectSeller
          (event: ChangeEvent<HTMLSelectElement>){
           const seller = event.target.value
           setSelectedSeller(seller)
         }

*/
