"use strict"

var db = require('../db-connection');
const Reviews = require('../Models/Reviews');

class ReviewsDB{

    getAllReviews(request, respond){
        var sql = "SELECT restaurantdb.review.*, FirstName FROM  restaurantdb.review LEFT JOIN restaurantdb.user ON review.user_id = user.user_id GROUP BY review.review_id";
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
    getRestaurantReviewsById(request, respond){
        var restaurant_id = request.params.restaurant_id;
        var sql = "SELECT AVG(Rating) FROM restaurantdb.review WHERE restaurant_id = ?";
        db.query(sql, restaurant_id, function(error, result){
            if(error){
                throw error;
            }
            else{
                respond.json(result);
            }
        });
    }

    addReviews(request, respond){
        console.log('backen dtesting');
        var reviewsObject = new Reviews(request.body.content, request.body.PostedTime, 
            request.body.Rating, request.body.user_id, request.body.restaurant_id);
            console.log(request.body.content, request.body.PostedTime, 
                request.body.Rating, request.body.user_id, request.body.restaurant_id);
        var sql = "INSERT INTO restaurantdb.review (content, PostedTime, Rating, user_id, restaurant_id) VALUES(?,?,?,?,?)";
        var values = [
            reviewsObject.getContent(), 
            reviewsObject.getPostedTime(),  
            reviewsObject.getRating(), 
            reviewsObject.getUser_id(),
            reviewsObject.getRestaurant_id()];

            // console.log("content", reviewsObject.getContent());
            // console.log("time",reviewsObject.getPostedTime());
            // console.log(reviewsObject.getRating());
            // console.log(reviewsObject.getUser_id());
            console.log("restro id ",reviewsObject.getRestaurant_id());

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

        let reviewContent  = request.body.content;
        let reviewRating  =  request.body.Rating;
        let reviewId  = request.body.review_id;

        var sql = "UPDATE restaurantdb.review SET content = ?, Rating = ? WHERE review_id = ?";
        var values = [reviewContent, reviewRating , reviewId ];
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

