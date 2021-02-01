"use strict"

class Review{
    constructor( content, PostedTime, rating, user_id, restaurant_id){
        this.content = content;
        this.PostedTime = PostedTime;
        this.rating = rating;
        this.user_id = user_id;
        this.restaurant_id = restaurant_id;
    }
    getContent(){
        return this.content;
    }
    getPostedTime(){
        return this.PostedTime;
    }
	getRating(){
        return this.rating;
    }
	getUser_id() {
            return this.user_id;
        }
    getRestaurant_id() {
            return this.restaurant_id;
        }

}
module.exports = Review;
