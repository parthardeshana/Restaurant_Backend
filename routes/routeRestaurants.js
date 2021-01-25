"use strict"

const restaurantdb = require('../Models/RestaurantDB');

var restaurantDBObject = new restaurantdb();

function routeRestaurants(app){
    app.route('/restaurants')
        .get(restaurantDBObject.getAllRestaurants);
    app.route('/restaurants/:restaurantName')
        .get(restaurantDBObject.getRestaurantsbyName);
    app.route('/cuisine/:cuisineName')
        .get(restaurantDBObject.getRestaurantsbyCousine);
    app.route('/region/:regionName')
        .get(restaurantDBObject.getRestaurantsbyRegion);
}
module.exports = {routeRestaurants};


