"use strict"
var db = require('../db-connection');

class CuisineDB{
    getAllCuisine(request, respond){
        var sql = "select * from restaurantdb.cuisine";
        db.query(sql, function(error, result){
            if(error){
                throw error;
            }
            else{
                console.log(result);
                respond.json(result);
            }
        });
    } 
}

module.exports = CuisineDB;