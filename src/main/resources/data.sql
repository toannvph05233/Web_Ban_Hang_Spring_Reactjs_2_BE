INSERT INTO tmdt.brand (id, name) VALUES (1, 'Apple');
INSERT INTO tmdt.brand (id, name) VALUES (2, 'Asus');
INSERT INTO tmdt.brand (id, name) VALUES (3, 'Dell');
INSERT INTO tmdt.brand (id, name) VALUES (4, 'Lenovo');
INSERT INTO tmdt.brand (id, name) VALUES (5, 'MSI');
INSERT INTO tmdt.brand (id, name) VALUES (6, 'Acer');

INSERT INTO tmdt.role (id, name) VALUES (1, 'ROLE_ADMIN');
INSERT INTO tmdt.role (id, name) VALUES (2, 'ROLE_USER');
INSERT INTO tmdt.role (id, name) VALUES (3, 'ROLE_SHOP');

INSERT INTO tmdt.category (id, name) VALUES (1, 'Laptop Gaming');
INSERT INTO tmdt.category (id, name) VALUES (2, 'Laptop Văn Phòng');
INSERT INTO tmdt.category (id, name) VALUES (3, 'Máy PC');
INSERT INTO tmdt.category (id, name) VALUES (4, 'Phụ Kiện Laptop');
INSERT INTO tmdt.category (id, name) VALUES (5, 'Phụ Kiện PC');

INSERT INTO tmdt.city (id, name) VALUES (1, 'Hà Nội');
INSERT INTO tmdt.city (id, name) VALUES (2, 'Quảng Ninh');
INSERT INTO tmdt.city (id, name) VALUES (3, 'Hải Phòng');
INSERT INTO tmdt.city (id, name) VALUES (4, 'Hải Dương');
INSERT INTO tmdt.city (id, name) VALUES (5, 'Bắc Ninh');

INSERT INTO tmdt.district (id, name, city_id) VALUES (1, 'Hàm Nghi', 1);
INSERT INTO tmdt.district (id, name, city_id) VALUES (2, 'Hoàn Kiếm', 1);
INSERT INTO tmdt.district (id, name, city_id) VALUES (3, 'Móng Cái', 2);
INSERT INTO tmdt.district (id, name, city_id) VALUES (4, 'Hạ Long', 2);
INSERT INTO tmdt.district (id, name, city_id) VALUES (5, 'Hà Đông', 1);

INSERT INTO tmdt.image (id, name) VALUES (1, 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTSbVUBxrJ0LGCQup7oJ8W1NyrQCF4r5Zlbl-dWvpnN-kWOD4KjVOs8QVUC64vz7hmmzMcioELi4IyN8Asib0AJdYM1WpxX8Q&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (2, 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTvrJS4GWB5AH_iDZDVLxCYkj6RjzMvKHEtxCIrGcdexuYssMWsrtaXLK3m1PdPupQNEbdGv6Z3tidQ9HpMagxMA-PDBqkln6Veh7CflJU&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (3, 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRzqd_hn54uqPVHm2fp_dmvZxLw5pj7I5_0dOWTGL9obN-sojLGAgUDdQYKlwYolt9wffOJpQQO88Onc3MdZbqvmPh_K6NUZM28yXdae_0N4JACfCos7KpV&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (4, 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTIkDN9xv-8vQCOVrBw526my3rJmKIRwWVe4EStTVf_FrL78SXiHVzHdXIicxHhe_OM0e5wRb6jW2LC_NAjFvs5E4virEqv-NYAlpMNRka0&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (5, 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTy6DxRpz_Xhjxcof0EnGVSpNRO5UGfYDdMJkgVBca2cqRL7D2IVQYK7NY9lJ3vQ_uw4MTb29BUAxjMcCmYUWptv-y7lC6DHRDW0s9ccwol&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (6, 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT_KzOxhh63lpsHBsUSYcDAUTuk3vGER8auZsMDjzWNpIP75JPTJavlIKdPBzSdqE2DuteWEgFIKxfvC2NZGW3Slm8qw7JfCMdrXmmRMi27pl8fWA1bkxHm7g&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (7, 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTreAsjAEIj7QR_yG3djQIFrmJ_TydHHCWvJqAUIL7JKPpnrJuZtiJM6G9dtDyZAAhcVceXvoLLNgBP7cPRtzWMRhgQouahblwahsrbfYkz_f6LB1zBiCZhemQ&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (8, 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRYoPCuzshC12ZPD_9Hhi1o6ojcRHX_XQyLhhuSG4e_Gd-S3GD5k3KA0x1C1tV1tY_iEL6phP06UqiqzhQ0xYvrr-vCe9U8wx25pOurq1GE64zSUMx6-o4U3A&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (9, 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRme8ztsbrJlObjsuHVENCLuzc3rg_eQ7Nwt_iTU932c2_LAoOVSHqv4W8Ynp6JBtSA7lMBrDzX5B6a89reLs521RZ4fgVwhj8ayb93gXPAk-dEq5ioLGScvA&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (10, 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSWdLeZmyT3UYPqfla_22J-iZODpvkd9TwQyTY0FuHBCIgIV2HDOVIHsjnAsJNpSM-kb-xtcmi4tP1JaXZFlCqVgSxn-RZrb395FriT_AhS&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (11, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRjPPRTBCs3Xj359VGRJtmL0wU7AT50YMBaK0-M_cIw26RbapehpGbTn3o18l2P8iDDbTsDhjIBMkp_GXY3_gkfpsIzDM4hR_zXzca3Htk&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (12, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSRbs79_p4TxFe9otudXoESq8U97dTiuDMue-_F9OVxeuyi24GxHdKCx4qxgYVQ1WiEQrNyB6DvyNRNHrwo8KmI0pDCaPZeq2Sm5zzf_Yma-qoJL-XvX8Mg&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (13, 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQNSc83LdVyrVYcVUH1hZ0u0-3xgK3Zr2xwM1XXp5t9CVdsk0fFDCCzyZ3qWDKSKHg_hPm2zVKui0h26-H2CciLHgbfXXoDrslid40ycRqry5-OEOQuAJHrEw&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (14, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRQ4XX4FxuScyJ7aIM7NBXCM7RK7gjais89UQAFMyUmeDGDlKv6kBZDfozj6aeBSwbQ5mvQocPiK0o2neVMKZGS2GQi1SViFwD6hnwOV9jqgwofWkRrLW6DyvEh&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (15, 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ6M4p9o_EY7I1clBYLXydLhmeopE8cFaGsDwAuZxYq9fk4g9r-xOclpN-b7DzrxWS_KtVF4I4SnKVR91WbTvP9ZNYrBG0mGmsRh3StCSKhPvK3Em_4cGxhsg&usqp=CAE');
INSERT INTO tmdt.image (id, name) VALUES (16, 'https://dienmaythiennamhoa.vn/static/images/4.%20hinh%20sp/3.%20Hinh%20SP%202/laptop-hp-pavilion-15-eg1037tu-5z9v0pa-1.jpg');
INSERT INTO tmdt.image (id, name) VALUES (17, 'https://cdn.tgdd.vn/Products/Images/44/312871/hp-245-g10-r5-8f155pa-glr-thumb-600x600.jpg');

INSERT INTO tmdt.option_product (id, name) VALUES (1, 'new');
INSERT INTO tmdt.option_product (id, name) VALUES (2, 'like new');

INSERT INTO tmdt.wards (id, name, district_id) VALUES (1, 'MonCity', 1);

INSERT INTO tmdt.account (id, email, password, username, status) VALUES (1, 'toannvph@gmail.com', '$2a$10$Hm8pUUoJX6HQUzsEKzNTQ.ejaWseyfOKwe1LBxle/2j0HiEfgLjmu', 'johntoan', 'active');
INSERT INTO tmdt.account (id, email, password, username, status) VALUES (2, 'admin@gmail.com', '$2a$10$Hm8pUUoJX6HQUzsEKzNTQ.ejaWseyfOKwe1LBxle/2j0HiEfgLjmu', 'admin', 'active');
INSERT INTO tmdt.account_roles (account_id, roles_id) VALUES (1, 3);
INSERT INTO tmdt.account_roles (account_id, roles_id) VALUES (2, 1);

INSERT INTO tmdt.discount (id, code) VALUES (1, 2024);

INSERT INTO tmdt.user (id, address, age, avatar, change_role, email, gender, name, phone, account_id, discount_id, wards_id) VALUES (1, '22', '2024-04-27', 'https://firebasestorage.googleapis.com/v0/b/student-152fa.appspot.com/o/image%2Fchup-anh-di-bien.jpg2e3c407e-90bf-449e-8768-84aa6afaa0fa?alt=media&token=afd0a133-89f4-44d3-9b8b-59007e631f82', 0, 'toannvph05233@gmail.com', null, 'Nguyễn Văn Toàn', '0912345678', 1, 1, 1);
INSERT INTO tmdt.user (id, address, age, avatar, change_role, email, gender, name, phone, account_id, discount_id, wards_id) VALUES (2, '22', '2024-04-27', 'https://firebasestorage.googleapis.com/v0/b/student-152fa.appspot.com/o/image%2Fchup-anh-di-bien.jpg2e3c407e-90bf-449e-8768-84aa6afaa0fa?alt=media&token=afd0a133-89f4-44d3-9b8b-59007e631f82', 0, 'admin@gmail.com', null, 'admin', '0912345678', 2, 1, 1);
INSERT INTO tmdt.shop (id, address, avatar, name, phone, account_id, wards_id) VALUES (1, '22', 'https://bloganchoi.com/wp-content/uploads/2023/11/ung-dung-dat-do-an-tot-nhat-5-696x466.jpg', 'Mèo con', '09123456789', 1, 1);

INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (1, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Máy tính chơi game PCAP Rookie ', 35000, 5, 3, null, 1, 1, 1, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (2, 1, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Laptop MSI Modern 14 B5M 203VN ', 40000, 4, 3, null, 1, 2, 1, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (3, 1, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Laptop MSI Thin A15 B7UC 026VN ', 35000, 3, 2, null, 1, 3, 1, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (4, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'CUK ROG Zephyrus 16 ', 50000, 5, 3, null, 1, 1, 1, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (16, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'CUK ROG Zephyrus 16 ', 50000, 5, 3, null, 1, 1, 1, 1, 1);

INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (5, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Core I5 12400F | GTX 1660 Super ', 20000, 4, 5, null, 1, 2, 2, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (6, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Máy Tính Xách Tay Giá Rẻ ', 15000, 3, 3, null, 1, 3, 2, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (7, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Máy Tính Văn Phòng Cũ i3/8GB/500GB ', 30000, 5, 3, null, 1, 1, 2, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (8, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Bộ máy tính văn phòng Dell ', 20000, 4, 5, null, 1, 2, 2, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (17, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Bộ máy tính văn phòng Dell ', 20000, 4, 5, null, 1, 2, 2, 1, 1);

INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (9, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Surface Laptop Go 3 Core i5/Ram ', 18000, 3, 3, null, 1, 3, 3, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (10, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Máy tính bảng, bộ nhớ lớn 12G + ', 30000, 5, 3, null, 1, 1, 3, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (11, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Máy tính bảng, bộ nhớ lớn 13G + ', 40000, 4, 5, null, 1, 2, 3, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (12, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Máy tính bảng, bộ nhớ lớn 14G + ', 25000, 3, 3, null, 1, 3, 3, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (13, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Máy tính bảng, bộ nhớ lớn 15G + ', 21000, 5, 3, null, 1, 1, 4, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (14, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Máy tính bảng, bộ nhớ lớn 16G + ', 22000, 4, 5, null, 1, 2, 4, 1, 1);
INSERT INTO tmdt.product (id, count, description, name, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (15, 0, 'Bộ xử lý MediaTek Helio G91 Ultra 8 nhân mạnh mẽ', 'Máy tính bảng, bộ nhớ lớn 17G + ', 15000, 3, 3, null, 1, 3, 4, 1, 1);

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
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (16, 16);
INSERT INTO tmdt.product_image (product_id, image_id) VALUES (17, 17);
