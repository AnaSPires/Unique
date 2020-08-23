import 'dart:io';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:http_server/http_server.dart';
import '../server.dart' as myServer;

import '../dart_mongo.dart' as dart_mongo;

class Responsavel {
  var myObj;
/*
  Responsavel(int id, String nome, String email, String celular, int id_crianca) {
    myObj = [id, nome, email, celular, id_crianca];
  }*/

  Responsavel(String nome) {
    myObj = [nome];
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
