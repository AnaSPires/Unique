//const restful = require('node-restful')
//const mongoose = restful.mongoose

var mongoose = require('mongoose');
const itemSchema = new mongoose.Schema({
  id: { type: Number, required: true },
  name: { type: String, required: true },
  logo: { type: String, required: true }
  })
  
module.exports = mongoose.model("seller",itemSchema);

//module.exports = restful.model('Item', itemSchema)
