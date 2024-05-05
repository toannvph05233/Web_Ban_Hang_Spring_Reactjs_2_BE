INSERT INTO tmdt.brand (id, name) VALUES (1, 'Apple');
INSERT INTO tmdt.brand (id, name) VALUES (2, 'Samsung');
INSERT INTO tmdt.brand (id, name) VALUES (3, 'Oppo');

INSERT INTO tmdt.role (id, name) VALUES (1, 'ROLE_ADMIN');
INSERT INTO tmdt.role (id, name) VALUES (2, 'ROLE_USER');
INSERT INTO tmdt.role (id, name) VALUES (3, 'ROLE_SHOP');


INSERT INTO tmdt.category (id, name) VALUES (1, 'Sinh Viên');
INSERT INTO tmdt.category (id, name) VALUES (2, 'Văn Phòng');
INSERT INTO tmdt.category (id, name) VALUES (3, 'Dân Chơi');

INSERT INTO tmdt.city (id, name) VALUES (1, 'Hà Nội');
INSERT INTO tmdt.city (id, name) VALUES (2, 'Quảng Ninh');

INSERT INTO tmdt.district (id, name, city_id) VALUES (1, 'Hàm Nghi', 1);
INSERT INTO tmdt.district (id, name, city_id) VALUES (2, 'Hoàn Kiếm', 1);
INSERT INTO tmdt.district (id, name, city_id) VALUES (3, 'Móng Cái', 2);

INSERT INTO tmdt.image (id, name) VALUES (1, 'https://cdn.tgdd.vn/Products/Images/42/305658/iphone-15-pro-max-blue-1-1.jpg');
INSERT INTO tmdt.image (id, name) VALUES (2, 'https://immagini.trovaprezzi.it/magazine/2023/11/iPhone-15-Pro-5.jpg');
INSERT INTO tmdt.image (id, name) VALUES (3, 'https://vcdn-sohoa.vnecdn.net/2023/02/27/iPhone-15-Pro-Burgandy-Feature-9729-9375-1677434034.jpg');
INSERT INTO tmdt.image (id, name) VALUES (4, 'https://media.vov.vn/sites/default/files/styles/large/public/2023-08/1_27.jpg');
INSERT INTO tmdt.image (id, name) VALUES (5, 'https://cdn.tgdd.vn/Files/2023/02/22/1512001/15pro-color-130923-154441-800-resize.jpg');
INSERT INTO tmdt.image (id, name) VALUES (6, 'https://static.kinhtedothi.vn/w960/images/upload/2023/09/01/gsmarena-006-9392-1693503241.jpeg');
INSERT INTO tmdt.image (id, name) VALUES (7, 'https://didongviet.vn/dchannel/wp-content/uploads/2023/09/1-tinh-nang-moi-tren-iphone-15-didongviet-3.jpg');
INSERT INTO tmdt.image (id, name) VALUES (8, 'https://www.smartcellular.co.uk/media/catalog/product/cache/cfaa1692031f009488d1cfea5ce7e1ee/7/1/71wcjsovoml._ac_sl1500_.jpg');
INSERT INTO tmdt.image (id, name) VALUES (9, 'https://image.bnews.vn/MediaUpload/Org/2021/09/20/samsunggalaxyzfold3-20210920214713.jpg');
INSERT INTO tmdt.image (id, name) VALUES (10, 'https://cdn11.dienmaycholon.vn/filewebdmclnew/DMCL21/Picture/Apro/Apro_product_34200/oppo-reno11-f-5_main_850.png');
INSERT INTO tmdt.image (id, name) VALUES (11, 'https://image.bnews.vn/MediaUpload/Org/2021/09/20/samsunggalaxyzfold3-20210920214713.jpg');
INSERT INTO tmdt.image (id, name) VALUES (12, 'https://cdn11.dienmaycholon.vn/filewebdmclnew/DMCL21/Picture/Apro/Apro_product_34200/oppo-reno11-f-5_main_850.png');

INSERT INTO tmdt.option_product (id, name) VALUES (1, 'Bóc Hộp');
INSERT INTO tmdt.option_product (id, name) VALUES (2, 'Bóc Sẵn');

INSERT INTO tmdt.wards (id, name, district_id) VALUES (1, 'MonCity', 1);

INSERT INTO tmdt.account (id, email, password, username, status) VALUES (1, 'toannvph05233@gmail.com', '$2a$10$Hm8pUUoJX6HQUzsEKzNTQ.ejaWseyfOKwe1LBxle/2j0HiEfgLjmu', 'johntoan', 'active');
INSERT INTO tmdt.account (id, email, password, username, status) VALUES (2, 'admin@gmail.com', '$2a$10$Hm8pUUoJX6HQUzsEKzNTQ.ejaWseyfOKwe1LBxle/2j0HiEfgLjmu', 'admin', 'active');

INSERT INTO tmdt.account_roles (account_id, roles_id) VALUES (1, 3);
INSERT INTO tmdt.account_roles (account_id, roles_id) VALUES (2, 1);

INSERT INTO tmdt.discount (id, code) VALUES (1, 2024);

INSERT INTO tmdt.user (id, address, age, avatar, change_role, email, gender, name, phone, account_id, discount_id, wards_id) VALUES (1, '22', '2024-04-27', 'https://firebasestorage.googleapis.com/v0/b/student-152fa.appspot.com/o/image%2Fchup-anh-di-bien.jpg2e3c407e-90bf-449e-8768-84aa6afaa0fa?alt=media&token=afd0a133-89f4-44d3-9b8b-59007e631f82', 0, 'toannvph05233@gmail.com', null, 'Nguyễn Văn Toàn', '0912345678', 1, 1, 1);
INSERT INTO tmdt.user (id, address, age, avatar, change_role, email, gender, name, phone, account_id, discount_id, wards_id) VALUES (2, '22', '2024-04-27', 'https://firebasestorage.googleapis.com/v0/b/student-152fa.appspot.com/o/image%2Fchup-anh-di-bien.jpg2e3c407e-90bf-449e-8768-84aa6afaa0fa?alt=media&token=afd0a133-89f4-44d3-9b8b-59007e631f82', 0, 'admin@gmail.com', null, 'admin', '0912345678', 2, 1, 1);

INSERT INTO tmdt.shop (id, address, avatar, name, phone, account_id, wards_id) VALUES (1, '22', 'https://firebasestorage.googleapis.com/v0/b/student-152fa.appspot.com/o/image%2Fbacsi.webp21a99911-f729-44d1-b61b-ed8722d3c781?alt=media&token=2c37c441-a982-4bf8-9515-a67426119d31', 'Mèo con', '09123456789', 1, 1);


INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (1, 0, 'Iphone', 'Iphone', 30000000, 5, 3, null, 1, 1, 1, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (2, 0, 'SamSung', 'SamSung', 20000000, 4, 5, null, 1, 2, 2, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (3, 0, 'Oppo', 'Oppo', 10000000, 3, 3, null, 1, 3, 3, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (4, 0, 'Iphone', 'Iphone', 30000000, 5, 3, null, 1, 1, 1, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (5, 0, 'SamSung', 'SamSung', 20000000, 4, 5, null, 1, 2, 2, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (6, 0, 'Oppo', 'Oppo', 10000000, 3, 3, null, 1, 3, 3, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (7, 0, 'Iphone', 'Iphone', 30000000, 5, 3, null, 1, 1, 1, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (8, 0, 'SamSung', 'SamSung', 20000000, 4, 5, null, 1, 2, 2, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (9, 0, 'Oppo', 'Oppo', 10000000, 3, 3, null, 1, 3, 3, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (10, 0, 'Iphone', 'Iphone', 30000000, 5, 3, null, 1, 1, 1, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (11, 0, 'SamSung', 'SamSung', 20000000, 4, 5, null, 1, 2, 2, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (12, 0, 'Oppo', 'Oppo', 10000000, 3, 3, null, 1, 3, 3, 1, 1);


INSERT INTO tmdt.product_image (product_id, image_id) VALUES (1, 1);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (2, 2);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (3, 3);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (4, 4);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (5, 5);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (6, 6);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (7, 7);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (8, 8);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (9, 9);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (10, 10);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (11, 11);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (12, 12);


