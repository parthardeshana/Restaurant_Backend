"use strict"

const usersdb = require('../Models/UsersDB');

var usersDBObject = new usersdb();


function routeUsers(app){
    app.route('/users')
        .get(usersDBObject.getAllUsers);
    app.route('/adduser')
        .post(usersDBObject.addUsers);
    app.route('/users/:id')
        .delete(usersDBObject.deleteUsers)
        .put(usersDBObject.updateUsers);
}


module.exports = {routeUsers};
