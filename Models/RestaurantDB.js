"use strict"
var db = require('../db-connection');
const Restaurant = require('../Models/Restaurant');

class RestaurantDB{
    getAllRestaurants(request, respond){
        var sql = "SELECT * FROM restaurantdb.restaurant";
        db.query(sql, function(error, result){
            if(error){
                throw error;
            }
            else{
                respond.json(result);
            }
        });
    }

    getRestaurantsbyName(request,respond) {
        var restaurantName = request.params.restaurantName;
        var sql ="SELECT * FROM restaurantdb.restaurant WHERE restaurantName LIKE ?";
        db.query(sql,restaurantName,function (error,result) {
        if(error) {
        throw error;
        }
        else {
        respond.json(result);
        }
        });
    }

    
    getRestaurantsbyCousine(request,respond) {
        var cuisineName = request.params.cuisineName;
        var sql ="SELECT * FROM restaurantdb.restaurant Join restaurantdb.cuisine ON restaurant.cuisine_id = cuisine.cuisine_id Where cuisine.cuisineName Like ?";
        db.query(sql,cuisineName,function (error,result) {
        if(error) {
        throw error;
        }
        else {
        respond.json(result);
        }
        });
    }
  
    getRestaurantsbyRegion(request,respond) {
        var regionName = request.params.regionName;
        var sql ="SELECT * FROM restaurantdb.restaurant Join restaurantdb.region ON restaurant.region_id = region.region_id Where region.regionName Like ?";
        db.query(sql,regionName,function (error,result) {
        if(error) {
        throw error;
        }
        else {
        respond.json(result);
        }
        });
    }
}

module.exports = RestaurantDB;


