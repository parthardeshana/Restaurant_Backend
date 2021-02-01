"use strict"

const cuisinedb = require('../Models/cuisineDB');

var cuisineDBObject = new cuisinedb();

function routeCuisines(app){
    app.route('/cuisines')
        .get(cuisineDBObject.getAllCuisine);
}
module.exports = {routeCuisines};

