"use strict"
var db = require('../db-connection');
const Restaurant = require('../Models/Restaurant');

class RestaurantDB {
    getAllRestaurants(request, respond) {
        var sql = "SELECT restaurant.*, AVG(review.Rating) as avgRating FROM restaurant LEFT JOIN restaurantdb.review ON restaurant.restaurant_id = review.restaurant_id GROUP BY restaurant.restaurant_id";
        db.query(sql, function (error, result) {
            if (error) {
                throw error;
            }
            else {
                respond.json(result);
            }
        });
    }

    getRestaurantsById(request, respond) {
        var restaurantId = request.params.restaurantId;
        var sql = "SELECT restaurant.*, AVG(review.Rating) as avgRating FROM restaurant JOIN review ON restaurant.restaurant_id = review.restaurant_id WHERE restaurant.restaurant_id = ?;";
        db.query(sql, restaurantId, function (error, result) {
            if (error) {
                throw error;
            }
            else {
                respond.json(result);
            }
        });
    }

    getRestaurantsReview(request, respond) {
        var restaurant_id = request.params.restaurant_id;
        // var sql ="SELECT restaurant.*, AVG(review.Rating) as rating FROM restaurant JOIN review ON restaurant.restaurant_id = review.restaurant_id WHERE restaurant.restaurant_id = ?;";
        db.query(sql, restaurant_id, function (error, result) {
            if (error) {
                throw error;
            }
            else {

                respond.json(result);
                // db.query()
            }
        });
    }


    getRestaurantsbyCousine(request, respond) {
        var cuisineName = request.params.cuisineName;
        var sql = "SELECT * FROM restaurantdb.restaurant Join restaurantdb.cuisine ON restaurant.cuisine_id = cuisine.cuisine_id Where cuisine.cuisineName Like ?";
        db.query(sql, cuisineName, function (error, result) {
            if (error) {
                throw error;
            }
            else {
                respond.json(result);
            }
        });
    }

    getRestaurantsbyRegion(request, respond) {
        var regionName = request.params.regionName;
        var sql = "SELECT * FROM restaurantdb.restaurant Join restaurantdb.region ON restaurant.region_id = region.region_id Where region.regionName Like ?";
        db.query(sql, regionName, function (error, result) {
            if (error) {
                throw error;
            }
            else {
                respond.json(result);
            }
        });
    }

    getRegions(request, respond) {
        var sql = "SELECT * FROM restaurantdb.region";
        db.query(sql, function (error, result) {
            if (error) {
                throw error;
            }
            else {
                respond.json(result);
            }
        });
    }
}

module.exports = RestaurantDB;


