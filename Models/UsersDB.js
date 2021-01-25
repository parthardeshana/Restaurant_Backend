"use strict"

var db = require('../db-connection');
const Users = require('../Models/Users');

class UsersDB{

    getAllUsers(request, respond){
        var sql = "SELECT * FROM restaurantdb.user";
        db.query(sql, function(error, result){
            if(error){
                throw error;
            }
            else{
				//console.log("Username already exist");
				//respond.json("Username already exist")
                respond.json(result);
            }
        });
    }
    
    addUsers(request, respond){
        var usersObject = new Users(
             request.body.FirstName,
             request.body.LastName, 
             request.body.Password,
             request.body.Gender, 
             request.body.Address, 
             request.body.Email, 
             request.body.mobileNumber);
        var sql = "INSERT INTO restaurantdb.user ( FirstName, LastName, Password, Gender, Address, Email, mobileNumber) VALUES(?,?,?,?,?,?,?)";
        var values = [usersObject.getUser_id(), 
            usersObject.getFirstName(), 
            usersObject.getLastName(),  
            usersObject.getPassword(), 
            usersObject.getGender(),
            usersObject.getAddress(),
            usersObject.getEmail(),
            usersObject.getMobileNumber()];
        db.query(sql, values, function (error, result) {
            if(error){
                throw error;
            }
            else{
				respond.json(result);
				//console.log("ABC");
				//respond.json(prepareMessage("ABC"))
            }
          });
    }

    updateUsers(request, respond){
        var usersObject = new Users(request.params.id,
            request.body.user_id,
             request.body.FirstName,
             request.body.Password,
             request.body.Gender, 
             request.body.Address, 
             request.body.Email, 
             request.body.mobileNumber);
        var sql = "UPDATE restaurantdb.user SET password = ? WHERE user_id = ?";
        var values = [usersObject.getPassword(),usersObject.getUser_id() ];
        db.query(sql, values, function (error, result) {
            if(error){
                throw error;
            }
            else{
                respond.json(result);
            }
          });
    }
    
    deleteUsers(request, respond){
        var commentID = request.params.id;
        var sql = "DELETE FROM restaurantdb.user WHERE user_id  = ?";
        db.query(sql, commentID, function (error, result) {
            if(error){
                throw error;
            }
            else{
                respond.json(result);
            }
          });
    }


    
}
function prepareMessage(msg){
    var obj = {"message": msg};
    return obj;
}
module.exports = UsersDB;

