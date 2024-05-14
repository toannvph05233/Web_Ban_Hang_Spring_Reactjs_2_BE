INSERT INTO tmdt.brand (id, name) VALUES (1, 'Việt Nam');
INSERT INTO tmdt.brand (id, name) VALUES (2, 'USA');
INSERT INTO tmdt.brand (id, name) VALUES (3, 'China');
INSERT INTO tmdt.role (id, name) VALUES (1, 'ROLE_ADMIN');
INSERT INTO tmdt.role (id, name) VALUES (2, 'ROLE_USER');
INSERT INTO tmdt.role (id, name) VALUES (3, 'ROLE_SHOP');
INSERT INTO tmdt.category (id, name) VALUES (1, 'Điện Gia Dụng');
INSERT INTO tmdt.category (id, name) VALUES (2, 'Thiết Bị Nhà Bếp');
INSERT INTO tmdt.category (id, name) VALUES (3, 'Đồ Trang Chí');
INSERT INTO tmdt.category (id, name) VALUES (4, 'Nội Thất');
INSERT INTO tmdt.city (id, name) VALUES (1, 'Hà Nội');
INSERT INTO tmdt.city (id, name) VALUES (2, 'Quảng Ninh');
INSERT INTO tmdt.district (id, name, city_id) VALUES (1, 'Hàm Nghi', 1);
INSERT INTO tmdt.district (id, name, city_id) VALUES (2, 'Hoàn Kiếm', 1);
INSERT INTO tmdt.district (id, name, city_id) VALUES (3, 'Móng Cái', 2);
INSERT INTO tmdt.image (id, name) VALUES (1, 'https://media.kenhtuyensinh.vn/images/cms/2022/02/9-19.png');
INSERT INTO tmdt.image (id, name) VALUES (2, 'https://hocthietkenoithat.org/wp-content/uploads/2018/12/4855-1024x576.jpg');
INSERT INTO tmdt.image (id, name) VALUES (3, 'https://static1.cafeland.vn/cafelandnew/hinh-anh/2022/05/07/153/noingoaithat7.jpg');
INSERT INTO tmdt.image (id, name) VALUES (4, 'https://linhvucbanle.com/wp-content/uploads/2021/03/do-dien-trong-gia-dinh.jpg');
INSERT INTO tmdt.image (id, name) VALUES (5, 'https://mekoong.com/wp-content/uploads/2021/05/do-gia-dung-thong-minh_do-gia-dung-thong-thuong.jpg');
INSERT INTO tmdt.image (id, name) VALUES (6, 'https://mekoong.com/wp-content/uploads/2022/05/do-gia-dung-thong-minh-la-gi-mekoong.jpg');
INSERT INTO tmdt.image (id, name) VALUES (7, 'https://cdn.nguyenkimmall.com/images/detailed/681/meo-su-dung-cac-thiet-bi-dien-gia-dung-ben-lau-va-an-toan-thumbnail.jpg');
INSERT INTO tmdt.image (id, name) VALUES (8, 'https://chuyenhakienvang.com/wp-content/uploads/2020/09/Do-dien-gia-dung-phong-bep.jpg');
INSERT INTO tmdt.image (id, name) VALUES (9, 'https://linhvucbanle.com/wp-content/uploads/2021/03/do-dien-trong-gia-dinh.jpg');
INSERT INTO tmdt.image (id, name) VALUES (10, 'https://down-vn.img.susercontent.com/file/35c3657bd3037865e0bb5a329cea6161');
INSERT INTO tmdt.image (id, name) VALUES (11, 'https://decopro.vn/wp-content/uploads/2019/01/Cap-uyen-uong-View.jpg');
INSERT INTO tmdt.image (id, name) VALUES (12, 'https://www.ladora.com.vn/wp-content/uploads/2020/03/trang-tri-noi-that-phong-khach-18.jpg');
INSERT INTO tmdt.image (id, name) VALUES (13, 'https://decopro.vn/wp-content/uploads/2020/06/Tranh-thep-trang-tri-tuong-ttt024-view1.jpg');
INSERT INTO tmdt.image (id, name) VALUES (14, 'https://hawonkoo.vn/medias/thumbs/74/images-2024-01-gia-dung-la-gi-4-1200x0.jpg.webp');
INSERT INTO tmdt.image (id, name) VALUES (15, 'https://hawonkoo.vn/medias/hwk02/images/2023/10/uspwebpch5007-1.jpg');
INSERT INTO tmdt.option_product (id, name) VALUES (1, 'Mới');
INSERT INTO tmdt.option_product (id, name) VALUES (2, 'Cũ');
INSERT INTO tmdt.wards (id, name, district_id) VALUES (1, 'MonCity', 1);
INSERT INTO tmdt.account (id, email, password, username, status) VALUES (1, 'toannvph@gmail.com', '$2a$10$Hm8pUUoJX6HQUzsEKzNTQ.ejaWseyfOKwe1LBxle/2j0HiEfgLjmu', 'johntoan', 'active');
INSERT INTO tmdt.account (id, email, password, username, status) VALUES (2, 'admin@gmail.com', '$2a$10$Hm8pUUoJX6HQUzsEKzNTQ.ejaWseyfOKwe1LBxle/2j0HiEfgLjmu', 'admin', 'active');
INSERT INTO tmdt.account_roles (account_id, roles_id) VALUES (1, 3);
INSERT INTO tmdt.account_roles (account_id, roles_id) VALUES (2, 1);
INSERT INTO tmdt.discount (id, code) VALUES (1, 2024);
INSERT INTO tmdt.user (id, address, age, avatar, change_role, email, gender, name, phone, account_id, discount_id, wards_id) VALUES (1, '22', '2024-04-27', 'https://firebasestorage.googleapis.com/v0/b/student-152fa.appspot.com/o/image%2Fchup-anh-di-bien.jpg2e3c407e-90bf-449e-8768-84aa6afaa0fa?alt=media&token=afd0a133-89f4-44d3-9b8b-59007e631f82', 0, 'toannvph05233@gmail.com', null, 'Nguyễn Văn Toàn', '0912345678', 1, 1, 1);
INSERT INTO tmdt.user (id, address, age, avatar, change_role, email, gender, name, phone, account_id, discount_id, wards_id) VALUES (2, '22', '2024-04-27', 'https://firebasestorage.googleapis.com/v0/b/student-152fa.appspot.com/o/image%2Fchup-anh-di-bien.jpg2e3c407e-90bf-449e-8768-84aa6afaa0fa?alt=media&token=afd0a133-89f4-44d3-9b8b-59007e631f82', 0, 'admin@gmail.com', null, 'admin', '0912345678', 2, 1, 1);
INSERT INTO tmdt.shop (id, address, avatar, name, phone, account_id, wards_id) VALUES (1, '22', 'https://firebasestorage.googleapis.com/v0/b/student-152fa.appspot.com/o/image%2Fbacsi.webp21a99911-f729-44d1-b61b-ed8722d3c781?alt=media&token=2c37c441-a982-4bf8-9515-a67426119d31', 'Mèo con', '09123456789', 1, 1);
# loại 4
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (1, 0, 'Giường', 'Bàn, ghế, giường, tủ… không chỉ là vật dụng mang những công năng khác nhau mà chúng còn là những vật dụng trang trí tô điểm cho ngôi nhà của bạn.', 30000000, 5, 3, null, 1, 1, 4, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (2, 0, 'Bàn ghế', 'Bàn, ghế, giường, tủ… không chỉ là vật dụng mang những công năng khác nhau mà chúng còn là những vật dụng trang trí tô điểm cho ngôi nhà của bạn.', 20000000, 4, 5, null, 1, 2, 4, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (3, 0, 'Kệ tivi', 'Bàn, ghế, giường, tủ… không chỉ là vật dụng mang những công năng khác nhau mà chúng còn là những vật dụng trang trí tô điểm cho ngôi nhà của bạn.', 10000000, 3, 3, null, 1, 3, 4, 1, 1);

# Loại 1
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (4, 0, 'Máy ép hoa quả', 'Các thiết bị đồ gia dụng hiện nay có mặt và được sử dụng ở mỗi gia đình. ', 30000000, 5, 3, null, 1, 1, 1, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (5, 0, 'Máy lọc nước', 'Các thiết bị đồ gia dụng hiện nay có mặt và được sử dụng ở mỗi gia đình.', 20000000, 4, 5, null, 1, 2, 1, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (6, 0, 'Lò vi sóng', 'Các thiết bị đồ gia dụng hiện nay có mặt và được sử dụng ở mỗi gia đình.', 10000000, 3, 3, null, 1, 3, 1, 1, 1);
# Loại 2
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (7, 0, 'Tủ lạnh', 'Các thiết bị đồ gia dụng hiện nay có mặt và được sử dụng ở mỗi gia đình.', 30000000, 5, 3, null, 1, 1, 2, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (8, 0, 'Quạt', 'Các thiết bị đồ gia dụng hiện nay có mặt và được sử dụng ở mỗi gia đình. ', 20000000, 4, 5, null, 1, 2, 2, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (9, 0, 'Bếp gha', 'Các thiết bị đồ gia dụng hiện nay có mặt và được sử dụng ở mỗi gia đình.', 10000000, 3, 3, null, 1, 3, 2, 1, 1);

# Loại 3
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (10, 0, 'Trang trí phòng khác', 'Trong những năm gần đây, decor phòng khách, phòng ngủ đang trở thành một xu hướng mới. Decor hay trang trí là một cách để chúng ta có thể sở hữu không gian sống đẹp và tiện nghi hơn. ', 30000000, 5, 3, null, 1, 1, 3, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (11, 0, 'Trang trí phòng ngủ', 'Trong những năm gần đây, decor phòng khách, phòng ngủ đang trở thành một xu hướng mới. Decor hay trang trí là một cách để chúng ta có thể sở hữu không gian sống đẹp và tiện nghi hơn. ', 20000000, 4, 5, null, 1, 2, 3, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (12, 0, 'Trang trí phòng bếp', 'Trong những năm gần đây, decor phòng khách, phòng ngủ đang trở thành một xu hướng mới. Decor hay trang trí là một cách để chúng ta có thể sở hữu không gian sống đẹp và tiện nghi hơn. ', 10000000, 3, 3, null, 1, 3, 3, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (13, 0, 'Trang trí phòng', 'Trang trí phòng', 30000000, 5, 3, null, 1, 1, 3, 1, 1);

INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (14, 0, 'Nhà bếp 2', 'Nhà bếp 1', 20000000, 4, 5, null, 1, 2, 1, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (15, 0, 'Nhà bếp 3', 'Nhà bếp 1', 10000000, 3, 3, null, 1, 3, 2, 1, 1);

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
