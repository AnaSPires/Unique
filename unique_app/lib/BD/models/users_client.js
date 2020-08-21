//const restful = require('node-restful')
//const mongoose = restful.mongoose

var mongoose = require('mongoose');
const itemSchema = new mongoose.Schema({
  id: { type: Number, required: true },
  image: { type: String, required: true },
  age: { type: Number, required: true }
  })
  
module.exports = mongoose.model("products",itemSchema);

//module.exports = restful.model('Item', itemSchema)
