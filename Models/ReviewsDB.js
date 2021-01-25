"use strict"

var db = require('../db-connection');
const Reviews = require('../Models/Reviews');

class ReviewsDB{

    getAllReviews(request, respond){
        var sql = "SELECT * FROM restaurantdb.review";
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

    addReviews(request, respond){
        var reviewsObject = new Reviews(request.body.content, request.body.PostedTime, 
            request.body.Rating, request.body.user_id, request.body.restaurant_id);
        var sql = "INSERT INTO restaurantdb.review (content, PostedTime, Rating, user_id, restaurant_id) VALUES(?,?,?,?,?)";
        var values = [reviewsObject.getReview_id(), 
            reviewsObject.getContent(), 
            reviewsObject.getPostedTime(),  
            reviewsObject.getRating(), 
            reviewsObject.getUser_id(),
            reviewsObject.getRestaurant_id()];
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
    
    updateReview(request, respond){
        const date = Date().slice(16,21);
        var reviewsObject = new Reviews(request.params.id, request.body.content, request.body.PostedTime, 
            request.body.Rating, request.body.user_id, request.body.restaurant_id, 
            );
        var sql = "UPDATE restaurantdb.review SET content = ?, PostedTime = ?, Rating = ? WHERE review_id = ?";
        var values = [reviewsObject.getContent(),reviewsObject.getPostedTime(), reviewsObject.getRating(), reviewsObject.getReview_id()];
        db.query(sql, values, function (error, result) {
            if(error){
                throw error;
            }
            else{
                respond.json(result);
            }
          });
    }
    
    deleteReview(request, respond){
        var commentID = request.params.id;
        var sql = "DELETE FROM restaurantdb.review WHERE review_id = ?";
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
module.exports = ReviewsDB;

