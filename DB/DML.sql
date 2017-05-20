#Insert Categories#
INSERT INTO hoteldb.categories (type, number_of_beds, price) VALUES ('simple', 1, 1000);
INSERT INTO hoteldb.categories (type, number_of_beds, price) VALUES ('simple', 2, 2000);
INSERT INTO hoteldb.categories (type, number_of_beds, price) VALUES ('simple', 3, 3000);
INSERT INTO hoteldb.categories (type, number_of_beds, price) VALUES ('simple', 4, 4000);
INSERT INTO hoteldb.categories (type, number_of_beds, price) VALUES ('lux', 1, 5000);
INSERT INTO hoteldb.categories (type, number_of_beds, price) VALUES ('lux', 2, 6000);
INSERT INTO hoteldb.categories (type, number_of_beds, price) VALUES ('lux', 3, 7000);
INSERT INTO hoteldb.categories (type, number_of_beds, price) VALUES ('lux', 4, 8000);

#Insert Apartments#
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (101, 1);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (102, 1);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (103, 1);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (201, 2);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (202, 2);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (203, 2);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (301, 3);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (302, 3);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (303, 3);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (401, 4);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (402, 4);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (403, 4);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (501, 5);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (502, 5);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (503, 5);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (601, 6);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (602, 6);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (603, 6);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (701, 7);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (702, 7);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (703, 7);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (801, 8);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (802, 8);
INSERT INTO hoteldb.apartments (apartment_id, category_id) VALUES (803, 8);

#Insert Guests#
INSERT INTO hoteldb.guests (name, last_name, phone_number, email, login, password) VALUES ('Name', 'Surname', '+380123456789', 'user@mail.com', 'user1', '24c9e15e52afc47c225b757e7bee1f9d');
INSERT INTO hoteldb.guests (name, last_name, phone_number, email, login, password) VALUES ('Ім''я', 'Прізвище', '+380123456789', 'mail@mail.com', 'логін', '599bec444e3bf1f19b0261feb4d44252');
INSERT INTO hoteldb.guests (name, last_name, phone_number, email, login, password) VALUES ('New', 'New', '+380123456785', 'new@new.com', 'New', '22af645d1859cb5ca6da0c484f1f37ea');

#Insert Reservations#
INSERT INTO hoteldb.reservations (guest_id, apartment_id, arrival, departure, total_price) VALUES (55, 501, '2016-11-17', '2016-11-26', 45000);
INSERT INTO hoteldb.reservations (guest_id, apartment_id, arrival, departure, total_price) VALUES (55, 502, '2016-11-17', '2016-11-26', 45000);
INSERT INTO hoteldb.reservations (guest_id, apartment_id, arrival, departure, total_price) VALUES (57, 601, '2017-05-20', '2017-05-31', 66000);