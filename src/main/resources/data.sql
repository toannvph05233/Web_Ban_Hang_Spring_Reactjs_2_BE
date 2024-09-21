INSERT INTO tmdt.brand (id, name) VALUES (1, 'Apple');
INSERT INTO tmdt.brand (id, name) VALUES (2, 'SamSung');
INSERT INTO tmdt.brand (id, name) VALUES (3, 'Oppo');

INSERT INTO tmdt.role (id, name) VALUES (1, 'ROLE_ADMIN');
INSERT INTO tmdt.role (id, name) VALUES (2, 'ROLE_USER');
INSERT INTO tmdt.role (id, name) VALUES (3, 'ROLE_SHOP');

INSERT INTO tmdt.category (id, name) VALUES (1, 'Iphone');
INSERT INTO tmdt.category (id, name) VALUES (2, 'Ultra');
INSERT INTO tmdt.category (id, name) VALUES (3, '5G');
INSERT INTO tmdt.category (id, name) VALUES (4, '4G');

INSERT INTO tmdt.city (id, name) VALUES (1, 'Hà Nội');
INSERT INTO tmdt.city (id, name) VALUES (2, 'Quảng Ninh');

INSERT INTO tmdt.district (id, name, city_id) VALUES (1, 'Hàm Nghi', 1);
INSERT INTO tmdt.district (id, name, city_id) VALUES (2, 'Hoàn Kiếm', 1);
INSERT INTO tmdt.district (id, name, city_id) VALUES (3, 'Móng Cái', 2);

INSERT INTO tmdt.image (id, name) VALUES (1, 'https://cdn.tgdd.vn/Files/2022/06/24/1442230/cach-chon-mua-dien-thoai-chup-anh-dep-chuan-nhat.jpg');
INSERT INTO tmdt.image (id, name) VALUES (2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpTnjaqTTEHJF49TrQJpZv0Aq8EtQa197oGpiegX7nxXdOcWLNen0-GDud2Qab0LJv9jU&usqp=CAU');
INSERT INTO tmdt.image (id, name) VALUES (3, 'https://cdn.fastcare.vn/fastcare/2021/12/fix-loi-dien-thoai-samsung-bi-mat-hinh-anh.jpg');
INSERT INTO tmdt.image (id, name) VALUES (4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvq71uy_HQmj-wMM51Kvp1bGjBRtgXIkAq00HgjrQZWog3_7W3puWv3lHdsbptPu449us&usqp=CAU');
INSERT INTO tmdt.image (id, name) VALUES (5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbVgibm777jRvrdk_A2UT1dNbnyAIJaqjXmbOy0GczXEAQeWjgYpZd0gm4K4x3_nIrxHw&usqp=CAU');
INSERT INTO tmdt.image (id, name) VALUES (6, 'https://cdn.tgdd.vn/Files/2022/06/24/1442230/cach-chon-mua-dien-thoai-chup-anh-dep-chuan-nhat.jpg');
INSERT INTO tmdt.image (id, name) VALUES (7, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpTnjaqTTEHJF49TrQJpZv0Aq8EtQa197oGpiegX7nxXdOcWLNen0-GDud2Qab0LJv9jU&usqp=CAU');
INSERT INTO tmdt.image (id, name) VALUES (8, 'https://cdn.fastcare.vn/fastcare/2021/12/fix-loi-dien-thoai-samsung-bi-mat-hinh-anh.jpg');
INSERT INTO tmdt.image (id, name) VALUES (9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvq71uy_HQmj-wMM51Kvp1bGjBRtgXIkAq00HgjrQZWog3_7W3puWv3lHdsbptPu449us&usqp=CAU');
INSERT INTO tmdt.image (id, name) VALUES (10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbVgibm777jRvrdk_A2UT1dNbnyAIJaqjXmbOy0GczXEAQeWjgYpZd0gm4K4x3_nIrxHw&usqp=CAU');
INSERT INTO tmdt.image (id, name) VALUES (11, 'https://cdn.tgdd.vn/Files/2022/06/24/1442230/cach-chon-mua-dien-thoai-chup-anh-dep-chuan-nhat.jpg');
INSERT INTO tmdt.image (id, name) VALUES (12, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpTnjaqTTEHJF49TrQJpZv0Aq8EtQa197oGpiegX7nxXdOcWLNen0-GDud2Qab0LJv9jU&usqp=CAU');
INSERT INTO tmdt.image (id, name) VALUES (13, 'https://cdn.fastcare.vn/fastcare/2021/12/fix-loi-dien-thoai-samsung-bi-mat-hinh-anh.jpg');
INSERT INTO tmdt.image (id, name) VALUES (14, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvq71uy_HQmj-wMM51Kvp1bGjBRtgXIkAq00HgjrQZWog3_7W3puWv3lHdsbptPu449us&usqp=CAU');
INSERT INTO tmdt.image (id, name) VALUES (15, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbVgibm777jRvrdk_A2UT1dNbnyAIJaqjXmbOy0GczXEAQeWjgYpZd0gm4K4x3_nIrxHw&usqp=CAU');

INSERT INTO tmdt.option_product (id, name) VALUES (1, 'Làm mới');
INSERT INTO tmdt.option_product (id, name) VALUES (2, 'Sẵn');

INSERT INTO tmdt.wards (id, name, district_id) VALUES (1, 'MonCity', 1);

INSERT INTO tmdt.account (id, email, password, username, status) VALUES (1, 'toannvph@gmail.com', '$2a$10$Hm8pUUoJX6HQUzsEKzNTQ.ejaWseyfOKwe1LBxle/2j0HiEfgLjmu', 'johntoan', 'active');
INSERT INTO tmdt.account (id, email, password, username, status) VALUES (2, 'admin@gmail.com', '$2a$10$Hm8pUUoJX6HQUzsEKzNTQ.ejaWseyfOKwe1LBxle/2j0HiEfgLjmu', 'admin', 'active');
INSERT INTO tmdt.account_roles (account_id, roles_id) VALUES (1, 3);
INSERT INTO tmdt.account_roles (account_id, roles_id) VALUES (2, 1);

INSERT INTO tmdt.discount (id, code) VALUES (1, 2024);

INSERT INTO tmdt.user (id, address, age, avatar, change_role, email, gender, name, phone, account_id, discount_id, wards_id) VALUES (1, '22', '2024-04-27', 'https://firebasestorage.googleapis.com/v0/b/student-152fa.appspot.com/o/image%2Fchup-anh-di-bien.jpg2e3c407e-90bf-449e-8768-84aa6afaa0fa?alt=media&token=afd0a133-89f4-44d3-9b8b-59007e631f82', 0, 'toannvph05233@gmail.com', null, 'Nguyễn Văn Toàn', '0912345678', 1, 1, 1);
INSERT INTO tmdt.user (id, address, age, avatar, change_role, email, gender, name, phone, account_id, discount_id, wards_id) VALUES (2, '22', '2024-04-27', 'https://firebasestorage.googleapis.com/v0/b/student-152fa.appspot.com/o/image%2Fchup-anh-di-bien.jpg2e3c407e-90bf-449e-8768-84aa6afaa0fa?alt=media&token=afd0a133-89f4-44d3-9b8b-59007e631f82', 0, 'admin@gmail.com', null, 'admin', '0912345678', 2, 1, 1);
INSERT INTO tmdt.shop (id, address, avatar, name, phone, account_id, wards_id) VALUES (1, '22', 'https://bloganchoi.com/wp-content/uploads/2023/11/ung-dung-dat-do-an-tot-nhat-5-696x466.jpg', 'Mèo con', '09123456789', 1, 1);

INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (1, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 35000, 5, 3, null, 1, 1, 1, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (2, 1, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 40000, 4, 3, null, 1, 2, 1, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (3, 1, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 35000, 3, 2, null, 1, 3, 1, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (4, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 50000, 5, 3, null, 1, 1, 1, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (5, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 20000, 4, 5, null, 1, 2, 2, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (6, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 15000, 3, 3, null, 1, 3, 2, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (7, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 30000, 5, 3, null, 1, 1, 2, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (8, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 20000, 4, 5, null, 1, 2, 2, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (9, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 18000, 3, 3, null, 1, 3, 3, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (10, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 30000, 5, 3, null, 1, 1, 3, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (11, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 40000, 4, 5, null, 1, 2, 3, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (12, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 25000, 3, 3, null, 1, 3, 3, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (13, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 21000, 5, 3, null, 1, 1, 4, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (14, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 22000, 4, 5, null, 1, 2, 4, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (15, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'iphone ', 15000, 3, 3, null, 1, 3, 4, 1, 1);

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
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (13, 13);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (14, 14);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (15, 15);
