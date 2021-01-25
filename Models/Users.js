"use strict"

class User{
    constructor(user_id, FirstName, LastName, Password, Gender, Address, Email, mobileNumber){
        this.user_id = user_id;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Password = Password;
        this.Gender = Gender;
        this.Address = Address;
        this.Email = Email;
        this.mobileNumber = mobileNumber;
    }
    
    getUser_id(){
        return this.user_id;
    }
    getFirstName(){
        return this.FirstName;
    }
    getLastName(){
        return this.LastName;
    }
    getPassword(){
        return this.Password;
    }
	getGender(){
        return this.Gender;
    }
    getAddress(){
        return this.Address;
    }
	getEmail(){
        return this.Email;
    }
    getMobileNumber(){
        return this.mobileNumber;
    }


}
module.exports = User;
