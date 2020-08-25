//model

import 'dart:io';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:http_server/http_server.dart';
import '../server.dart' as myServer;

import '../dart_mongo.dart' as dart_mongo;

class Responsavel {
  int id, id_crianca;
  String nome, email, celular;

  Responsavel(
      int idP, String nomeP, String emailP, String celularP, int id_criancaP) {
    id = idP;
    nome = nomeP;
    email = emailP;
    celular = celularP;
    id_crianca = id_criancaP;
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
