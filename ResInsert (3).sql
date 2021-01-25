-- Cuisine Table
INSERT INTO `restaurantdb`.`cuisine` (`cuisine_id`, `cuisineName`) VALUES ('1', 'Japenese');
INSERT INTO `restaurantdb`.`cuisine` (`cuisine_id`, `cuisineName`) VALUES ('2', 'Western');
INSERT INTO `restaurantdb`.`cuisine` (`cuisine_id`, `cuisineName`) VALUES ('3', 'Indian');
INSERT INTO `restaurantdb`.`cuisine` (`cuisine_id`, `cuisineName`) VALUES ('4', 'Chinese');
INSERT INTO `restaurantdb`.`cuisine` (`cuisine_id`, `cuisineName`) VALUES ('5', 'Others');

-- Region Table
INSERT INTO `restaurantdb`.`region` (`region_id`, `regionName`) VALUES ('1', 'Central');
INSERT INTO `restaurantdb`.`region` (`region_id`, `regionName`) VALUES ('2', 'East');
INSERT INTO `restaurantdb`.`region` (`region_id`, `regionName`) VALUES ('3', 'North-East');
INSERT INTO `restaurantdb`.`region` (`region_id`, `regionName`) VALUES ('4', 'North');
INSERT INTO `restaurantdb`.`region` (`region_id`, `regionName`) VALUES ('5', 'West');

-- Restaurant Table
INSERT INTO `restaurantdb`.`restaurant` ( `restaurantName`, `Address`, `openingHours`, `description`, `Photo`, `telephoneNumber`, `Photo1`, `Photo2`, `region_id`, `cuisine_id`) VALUES ( 'Alaturka Mediterranean & Turkish Restaurant', '15 Bussorah St, Singapore 199436', '11:30am–10:30pm', 'alaturka mediterranean & turkish restaurant', 'D:\\Restauarants\\Alaturka Mediterranean & Turkish Restaurant\\Main Pic.jpg', '6294 0304', 'D:\\Restauarants\\Alaturka Mediterranean & Turkish Restaurant\\pic 1.jpg', 'D:\\Restauarants\\Alaturka Mediterranean & Turkish Restaurant\\pic 2.jpg', '1', '5');
INSERT INTO `restaurantdb`.`restaurant` ( `restaurantName`, `Address`, `openingHours`, `description`, `Photo`, `telephoneNumber`, `Photo1`, `Photo2`, `region_id`, `cuisine_id`) VALUES ( 'Buddy Hoagies Steak & Grill Restaurant (East Point)', '3 Simei Street 6, #02-06 East Point, Singapore 528833', '11:30am–10pm', 'Buddy Hoagies Cafe & Grill was established in 2004 as a cafe in Nee Soon South Community Centre.. The name Buddy Hoagies is derived from word Hoagies (the Philadelphia slang for the subway sandwich) and the American Rock & Roll icon Buddy Holly. Initially focusing on its Hoagie sandwiches, Buddy Hoagies came to be known for its great steaks & western cuisine, in a comfortable venue for friends and family to gather over a casual dinner or special occasions. Within its walls, you will always be able to find old records and memorabilia of the great music legends of old, a quiet tribute to its namesake.', 'C:\\Users\\muham\\Desktop\\Restauarants\\Buddy Hoagies Steak & Grill Restaurant (East Point)\\Main Pic.jpg','6957 4810', 'C:\\Users\\muham\\Desktop\\Restauarants\\Buddy Hoagies Steak & Grill Restaurant (East Point)\\Pic 1', 'C:\\Users\\muham\\Desktop\\Restauarants\\Buddy Hoagies Steak & Grill Restaurant (East Point)\\pic 2', '2', '2');
INSERT INTO `restaurantdb`.`restaurant` (`restaurantName`, `Address`, `openingHours`, `description`, `Photo`, `telephoneNumber`, `Photo1`, `Photo2`, `region_id`, `cuisine_id`) VALUES ( 'Hanwoori korean Restaurant', '76 Serangoon Garden Way, Singapore 555972', '11:30 am - 2:30 pm', 'Hanwoori Korean Restaurant in Serangoon offers guests first-class service and the chance to sample their favourite Korean delicacies in a casual setting.','C:\\Users\\muham\\Desktop\\Restauarants\\Hanwoori korean Restaurant\\Main Pic', '6283 6339', 'C:\\Users\\muham\\Desktop\\Restauarants\\Hanwoori korean Restaurant\\pic 1', 'C:\\Users\\muham\\Desktop\\Restauarants\\Hanwoori korean Restaurant\\pic 1', '3', '5');
INSERT INTO `restaurantdb`.`restaurant` (`restaurantName`, `Address`, `openingHours`, `description`, `Photo`, `telephoneNumber`, `Photo1`, `Photo2`, `region_id`, `cuisine_id`) VALUES ( 'KNS restaurant ace', '120 Woodlands Ave 1, Singapore 739069', '24HRS', 'A 24HR restaurant located at a nearby community centre for convenience','C:\\Users\\muham\\Desktop\\Restauarants\\KNS restaurant ace\\Main Pic.jpg', '6974 8267','C:\\Users\\muham\\Desktop\\Restauarants\\KNS restaurant ace\\pic 1', 'C:\\Users\\muham\\Desktop\\Restauarants\\KNS restaurant ace\\pic 2', '4', '3');
INSERT INTO `restaurantdb`.`restaurant` (`restaurantName`, `Address`, `openingHours`, `description`, `Photo`, `telephoneNumber`, `Photo1`, `Photo2`, `region_id`, `cuisine_id`) VALUES ( 'Long Beach Restaurant', '220 Stadium Blvd, Singapore 397803', '11am-2.30pm', 'One of the oldest, most popular and creator of the Original and the best Black Pepper Crab seafood restaurants in Singapore.', 'C:\\Users\\muham\\Desktop\\Restauarants\\Long Beach Restaurant\\Main Pic.jpg', '6344 7722', 'C:\\Users\\muham\\Desktop\\Restauarants\\Long Beach Restaurant\\pic 1', 'C:\\Users\\muham\\Desktop\\Restauarants\\Long Beach Restaurant\\pic 2', '5', '4');
INSERT INTO `restaurantdb`.`restaurant` (`restaurantName`, `Address`, `openingHours`, `description`, `Photo`, `telephoneNumber`, `Photo1`, `Photo2`, `region_id`, `cuisine_id`) VALUES ('Menya Kokoro', '3 Temasek Blvd, #03-313, Singapore 038983', '11am–3pm', 'Japan’s most popular and largest restaurant Mazesoba chain,Menya Kokoro. Menya Kokoro began when a Japanese Chef named Takuma Ishikawa created Kokoro Maze-Soba in Tokyo, Japan. His maze-soba, unparalleled in taste and quality, has spread its popularity all over Japan. It even won the Best Maze-Soba Award in 2014.', 'C:\\Users\\muham\\Desktop\\Restauarants\\Menya Kokoro\\Main Pic.jpg', '6235 3386', 'C:\\Users\\muham\\Desktop\\Restauarants\\Menya Kokoro\\pic 1.jpg', 'C:\\Users\\muham\\Desktop\\Restauarants\\Menya Kokoro\\pic 2.jpg',  '1', '1');
INSERT INTO `restaurantdb`.`restaurant` (`restaurantName`, `Address`, `openingHours`, `description`, `Photo`, `telephoneNumber`, `Photo1`, `Photo2`, `region_id`, `cuisine_id`) VALUES ('Mizuya', '11, #01-04 Cavan Rd, Cavan Suites, 209848', '12.30pm-2.30pm', 'An affordable omakase along with whisky pairing located beside Jalan Besar stadium. Seasonal harvest air-flown from Japan every week', 'C:\\Users\\muham\\Desktop\\Restauarants\\Mizuya\\Main Pic.jpg', '6721 9399', 'C:\\Users\\muham\\Desktop\\Restauarants\\Mizuya\\pic 1.jpg','C:\\Users\\muham\\Desktop\\Restauarants\\Mizuya\\pic 2.jpg','1', '1');
INSERT INTO `restaurantdb`.`restaurant` ( `restaurantName`, `Address`, `openingHours`, `description`, `Photo`, `telephoneNumber`, `Photo1`, `Photo2`, `region_id`, `cuisine_id`) VALUES ( 'Pietro Ristorante Italiano', '12 Jln Kelulut, Singapore 809030', '11:30am–2:30pm', 'Pietro Ristorante Italiano serves up delectable Italian cuisine on Jalan Kelulut in Seletar, Singapore', 'C:\\Users\\muham\\Desktop\\Restauarants\\Pietro Ristorante Italiano\\Main Pic.jpg', '6484 5528', 'C:\\Users\\muham\\Desktop\\Restauarants\\Pietro Ristorante Italiano\\pic 1.jpg', 'C:\\Users\\muham\\Desktop\\Restauarants\\Pietro Ristorante Italiano\\pic 2.jpg', '2', '5');
INSERT INTO `restaurantdb`.`restaurant` (`restaurantName`, `Address`, `openingHours`, `description`, `Photo`, `telephoneNumber`, `Photo1`, `Photo2`, `region_id`, `cuisine_id`) VALUES ('Royal Taj @ Village Hotel', '2, block 16 Gunner Ln, 02-06 Singapore Mess Hall, 099567', '12–3pm', 'Royal Taj showcases modern Indian cuisine by complementing the flavours and traditions of India with global ingredients and techniques.', 'C:\\Users\\muham\\Desktop\\Restauarants\\Royal Taj @ Village Hotel\\Main Pic.jpg', '9118 5896', 'C:\\Users\\muham\\Desktop\\Restauarants\\Royal Taj @ Village Hotel\\pic 1.jpg', 'C:\\Users\\muham\\Desktop\\Restauarants\\Royal Taj @ Village Hotel\\pic 2.jpg','1', '3');
INSERT INTO `restaurantdb`.`restaurant` (`restaurantName`, `Address`, `openingHours`, `description`, `Photo`, `telephoneNumber`, `Photo1`, `Photo2`, `region_id`, `cuisine_id`) VALUES ( 'Soi 47 Thai Food', '47 Lor 6 Toa Payoh, Singapore 310047', '11.30am-2.30pm', 'Hidden Gem. Affordable, Authentic Thai Food At Toa Payoh, Dishes Starting From $3.00', 'C:\\Users\\muham\\Desktop\\Restauarants\\Soi 47 Thai Food\\Main Pic.jpg', '6266 4747', 'C:\\Users\\muham\\Desktop\\Restauarants\\Soi 47 Thai Food\\pic 1.jpg', 'C:\\Users\\muham\\Desktop\\Restauarants\\Soi 47 Thai Food\\pic 2.jpg', '1', '5');
INSERT INTO `restaurantdb`.`restaurant` (`restaurantName`, `Address`, `openingHours`, `description`, `Photo`, `telephoneNumber`, `Photo1`, `Photo2`, `region_id`, `cuisine_id`) VALUES ( 'Swatow Seafood', '22 Kensington Park Rd, Singapore 557271', '11am–2.30pm', 'Swatow is renowned for its unique food culture derived from centuries of Cantonese food influences. The founder Dr Jimi Tan, has put together well-known chefs from Singapore, Malaysia and Hong Kong to create a myriad of seafood, vegetarian dishes, appetizers and desserts.', 'C:\\Users\\muham\\Desktop\\Restauarants\\Swatow Seafood\\Main Pic.jpg', '6363 1717', 'C:\\Users\\muham\\Desktop\\Restauarants\\Swatow Seafood\\pic 1', 'C:\\Users\\muham\\Desktop\\Restauarants\\Swatow Seafood\\pic 2', '3', '4');
INSERT INTO `restaurantdb`.`restaurant` (`restaurantName`, `Address`, `openingHours`, `description`, `Photo`, `telephoneNumber`, `Photo1`, `Photo2`, `region_id`, `cuisine_id`) VALUES ( 'Wolfgangs steakhouse', '1 Nanson Road #02-01 InterContinental Singapore, Robertson Quay, 238909', '11am–11pm', 'Authentic style steak house from New York. Prime grade best steaks sticking to quality, aging, grilling. Located in InterContinental Singapore Robertson Quay.', 'C:\\Users\\muham\\Desktop\\Restauarants\\Wolfgangs steakhouse\\Main Pic.jpg', '6887 5885', 'C:\\Users\\muham\\Desktop\\Restauarants\\Wolfgangs steakhouse\\pic 1.jpg', 'C:\\Users\\muham\\Desktop\\Restauarants\\Wolfgangs steakhouse\\pic 2', '1', '2');

-- User Table 
INSERT INTO user (FirstName, LastName, Password, Gender, Address, Email, mobileNumber)
VALUES ('Sarah', 'Pond', 'sarahpond123' , 'Female', '90 River Ave Michigan 46000', 'sarah@gmail.com', 0017543010), 
( 'Shakil', 'Ahmed', 'sak11ahmed', 'Male', '213 Lake St. Washington 543010' ,'shakil@gmail.com', 0337543010),
('Shahzaib', 'Ayyub', 'shahzaibayyub322', 'Male', '414 Books Ave Lorton 17543','shah@gmail.com', 0317543010),
( 'Huda',' Abid', 'apexlegends23', 'Female',  '66 Kings St. Las Vegas 93010', 'huda@gmail.com', 0417543010),
('John', 'Doe', 'mandoejohn66', 'Male', '89 Potter Ave Torronto 77098' ,'john@gmail.com', 0257543010),
('Hamza', 'Zafar', 'janmotors123', 'Male', '9 Adam St. New York 06175', 'hamza@gmail.com',  0617543010),
( 'Jennifer',  'David', 'jennydad33', 'Female', '65 New Ave Lorton 77543', 'jenn@gmail.com', 0277543010),
( 'Shaquan', 'Peter', 'shaqqy12345', 'Male', '02 Bakers St. Washington 08175', 'shaq@gmail.com',  0817543010),
( 'Lily', 'Sasha', 'sasha12345','Female', '780 Amber Ave New Jersey011754','lily@gmail.com', 0117543010),
('Shafaq', 'Amir', 'shafamir12', 'Male', '342 Shah St. Stavanger 43010','shafaq@gmail.com', 0297543010);

-- Favorite Table 
INSERT INTO favourite (id, restaurant_id, user_id)
VALUES (1, 1, 2),
(2, 5, 4),
(3, 3, 3),
(4, 6, 7),
(5, 1, 9),
(6, 3, 2),
(7, 8, 8),
(8, 6, 5),
(9, 7, 6),
(10, 4, 1);

-- Review Table 
INSERT INTO review (content, PostedTime, Rating, user_id, restaurant_id)
VALUES ('Very good food', '12:45', 5, 2, 5), 
('Outstanding experience and food', '09:31', 4, 2, 3),
('Nice ambient and service would highly recomend', '22:35', 5, 4, 1),
( 'Good service', '15:00', 4, 2, 2),
( 'The staff was vey cooperative', '12:25', 5, 5, 1),
( 'Great experience', '22:40', 5, 9, 6),
( 'Very good food', '13:45', 4, 3, 8),
( 'Nice food', '19:05', 5, 7, 7),
( 'Loved the experience', '20:00', 4, 1, 9),
( 'Highly recommended, will visit again', '12:45', 5, 6, 10),
( 'Very nice food', '17:00', 5, 8, 12),
( 'Food was good but the management i very lazy', '22:45', 3, 4, 11),
( 'Not good food', '15:00', 2, 6, 1),
( 'Very good food', '14:45', 4, 9, 5),
( 'Highly recommended, will visit again', '18:00', 5, 2, 12);