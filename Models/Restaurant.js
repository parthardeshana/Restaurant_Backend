"use strict"

class Restaurant{
    constructor(restaurant_id, restaurantName, Address, openingHours, description, restaurantURL, Photo, telephoneNumber, Photo1, Photo2, region_id, cuisine_id){
        this.restaurant_id = restaurant_id;
        this.restaurantName = restaurantName;
        this.Address = Address;
        this.openingHours = openingHours;
        this.description = description;
        this.restaurantURL = restaurantURL;
        this.Photo = Photo;
        this.telephoneNumber = telephoneNumber;
        this.Photo1 = Photo1;
        this.Photo2 = Photo2;
        this.region_id = region_id;
        this.cuisine_id = cuisine_id;
    }
    
    getRestaurant_id(){
        return this.restaurant_id;
    }
    getRestaurantName(){
        return this.restaurantName;
    }
    getAddress(){
        return this.Address;
    }
    getOpeningHours(){
        return this.openingHours;
    }
	getDescription(){
        return this.description;
    }
	getRestaurantURL(){
        return this.restaurantURL;
    }
    getPhoto(){
        return this.Photo;
    }
    getTelephoneNumber() {
        return this.telephoneNumber;
    }
    getPhoto1() {
            return this.Photo1;
        }
    getPhoto2() {
            return this.Photo2;
        }
    getRegion_id() {
            return this.region_id;
        }
    getCuisine_id() {
            return this.cuisine_id;
        }

}
module.exports = Restaurant;
