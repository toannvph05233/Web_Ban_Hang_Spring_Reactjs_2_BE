INSERT INTO tmdt.brand (id, name) VALUES (1, 'KFC');
INSERT INTO tmdt.brand (id, name) VALUES (2, 'Lotte');
INSERT INTO tmdt.brand (id, name) VALUES (3, 'Không');

INSERT INTO tmdt.role (id, name) VALUES (1, 'ROLE_ADMIN');
INSERT INTO tmdt.role (id, name) VALUES (2, 'ROLE_USER');
INSERT INTO tmdt.role (id, name) VALUES (3, 'ROLE_SHOP');

INSERT INTO tmdt.category (id, name) VALUES (1, 'Bún phở');
INSERT INTO tmdt.category (id, name) VALUES (2, 'Trà sữa');
INSERT INTO tmdt.category (id, name) VALUES (3, 'Cơm tấm');
INSERT INTO tmdt.category (id, name) VALUES (4, 'Gà rán');

INSERT INTO tmdt.city (id, name) VALUES (1, 'Hà Nội');
INSERT INTO tmdt.city (id, name) VALUES (2, 'Quảng Ninh');

INSERT INTO tmdt.district (id, name, city_id) VALUES (1, 'Hàm Nghi', 1);
INSERT INTO tmdt.district (id, name, city_id) VALUES (2, 'Hoàn Kiếm', 1);
INSERT INTO tmdt.district (id, name, city_id) VALUES (3, 'Móng Cái', 2);

# Bún phở
INSERT INTO tmdt.image (id, name) VALUES (1, 'https://s1.media.ngoisao.vn/news/2021/04/13/do-an-sang-ngon-2-ngoisaovn-w550-h366.jpg');
INSERT INTO tmdt.image (id, name) VALUES (2, 'https://media.baoquangninh.vn/upload/image/202208/medium/1994841_0d53e413af85a10d74ea3470e2d62f0b.jpeg');
INSERT INTO tmdt.image (id, name) VALUES (3, 'https://dalatreview.vn/wp-content/uploads/2021/03/Qu%C3%A1n-b%C3%BAn-ph%E1%BB%9F-t%E1%BA%A1i-%C4%90%C3%A0-L%E1%BA%A1t.jpg');
INSERT INTO tmdt.image (id, name) VALUES (4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcnSC3kc9iW8hLofY82tD3BfuGz0damBNUFkHLTIQKheMspKOzl4E6mbFFlZZuMs39GPA&usqp=CAU');
# Trà sửa
INSERT INTO tmdt.image (id, name) VALUES (5, 'https://cdn.tgdd.vn/Files/2021/08/10/1374160/hoc-cach-pha-tra-sua-o-long-dai-loan-thom-ngon-chuan-vi-ai-cung-me-202108100039248020.jpg');
INSERT INTO tmdt.image (id, name) VALUES (6, 'https://cdn.tgdd.vn/Files/2021/12/13/1404245/huong-dan-cach-lam-tra-sua-don-gian-tai-nha-202112132320474492.jpg');
INSERT INTO tmdt.image (id, name) VALUES (7, 'https://abcsport.com.vn/image/catalog/2023/T01/mot-ly-tra-sua-bao-nhieu-calo-1.jpg');
INSERT INTO tmdt.image (id, name) VALUES (8, 'https://cdn.nhathuoclongchau.com.vn/unsafe/800x0/https://cms-prod.s3-sgn09.fptcloud.com/uong_nhieu_tra_sua_co_gay_ung_thu_khong_1_f8f43641f7.png');
# Cơm tấm
INSERT INTO tmdt.image (id, name) VALUES (9, 'https://cdn.tgdd.vn/Files/2021/08/09/1373996/tu-lam-com-tam-suon-trung-don-gian-thom-ngon-nhu-ngoai-hang-202201071248422991.jpg');
INSERT INTO tmdt.image (id, name) VALUES (10, 'https://lamsonfood.com/wp-content/uploads/2022/02/com-tam-duoc-nhieu-nguoi-yeu-thich.jpg');
INSERT INTO tmdt.image (id, name) VALUES (11, 'https://cdn.tgdd.vn/Files/2021/12/23/1406329/tong-hop-3-cach-lam-com-tam-thom-ngon-nhu-ngoai-tiem-202112231559101350.jpg');
INSERT INTO tmdt.image (id, name) VALUES (12, 'https://bizweb.dktcdn.net/100/442/328/files/com-tam-co-gi-dac-biet-ma-tro-thanh-dac-san-cua-sai-gon-4.jpg?v=1638950116276');
# Gà rán
INSERT INTO tmdt.image (id, name) VALUES (13, 'https://decopro.vn/wp-content/uploads/2020/06/Tranh-thep-trang-tri-tuong-ttt024-viehttps://cdn.tgdd.vn/Files/2021/01/13/1320026/cach-lam-ga-ran-kfc-bang-noi-chien-khong-dau-gion-rum-an-khong-ngay-202202231031137197.jpg');
INSERT INTO tmdt.image (id, name) VALUES (14, 'https://cdn.tgdd.vn/Files/2020/08/23/1283139/tuong-ga-ran-kfc-la-ngon-nhat-cho-den-khi-toi-biet-cach-lam-ga-ran-kieu-a-rap-202008232324490656.jpg');
INSERT INTO tmdt.image (id, name) VALUES (15, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzIaFet8jaHc211JY5ybelmaiyvSzenW7HbnF6O-yL-jBOaI2eVzawbkmEu5HOpeNHTZQ&usqp=CAU');

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
# Bún phở
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (1, 0, 'Bún bò Huế', 'Phở là một món ăn truyền thống của Việt Nam có xuất xứ từ Nam Định. Phở được xem là một trong những món ăn tiêu biểu cho nền ẩm thực Việt Nam.

Thành phần chính của phở là bánh phở và nước dùng cùng với thịt bò hoặc thịt gà cắt lát mỏng. Thịt bò thích hợp nhất để nấu phở là thịt, xương từ các giống bò ta (bò nội, bò vàng). ', 35000, 5, 3, null, 1, 1, 1, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (2, 0, 'Bún bò Nam Định', 'Phở là một món ăn truyền thống của Việt Nam có xuất xứ từ Nam Định. Phở được xem là một trong những món ăn tiêu biểu cho nền ẩm thực Việt Nam.

Thành phần chính của phở là bánh phở và nước dùng cùng với thịt bò hoặc thịt gà cắt lát mỏng. Thịt bò thích hợp nhất để nấu phở là thịt, xương từ các giống bò ta (bò nội, bò vàng). ', 40000, 4, 5, null, 1, 2, 1, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (3, 0, 'Phở bò tái nạm', 'Phở là một món ăn truyền thống của Việt Nam có xuất xứ từ Nam Định. Phở được xem là một trong những món ăn tiêu biểu cho nền ẩm thực Việt Nam.

Thành phần chính của phở là bánh phở và nước dùng cùng với thịt bò hoặc thịt gà cắt lát mỏng. Thịt bò thích hợp nhất để nấu phở là thịt, xương từ các giống bò ta (bò nội, bò vàng). ', 35000, 3, 3, null, 1, 3, 1, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (4, 0, 'Phở bò Lý Quốc Sư', 'Phở là một món ăn truyền thống của Việt Nam có xuất xứ từ Nam Định. Phở được xem là một trong những món ăn tiêu biểu cho nền ẩm thực Việt Nam.

Thành phần chính của phở là bánh phở và nước dùng cùng với thịt bò hoặc thịt gà cắt lát mỏng. Thịt bò thích hợp nhất để nấu phở là thịt, xương từ các giống bò ta (bò nội, bò vàng). ', 50000, 5, 3, null, 1, 1, 1, 1, 1);

# Trà sữa
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (5, 0, 'Tocotoco', 'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng loạt được làm từ sữa bò, trâu, ngựa.', 20000, 4, 5, null, 1, 2, 2, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (6, 0, 'Trà sữa ABC', 'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng loạt được làm từ sữa bò, trâu, ngựa.', 15000, 3, 3, null, 1, 3, 2, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (7, 0, 'Trà sữa Mr good tea', 'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng loạt được làm từ sữa bò, trâu, ngựa.', 30000, 5, 3, null, 1, 1, 2, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (8, 0, 'Trà sữa Thái', 'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng loạt được làm từ sữa bò, trâu, ngựa.', 20000, 4, 5, null, 1, 2, 2, 1, 1);

# Cơm Tấm
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (9, 0, 'Cơm sườn', 'Cơm tấm, hay Cơm tấm Sài Gòn[1][2][3] là một món ăn Việt Nam có nguyên liệu chủ yếu từ gạo tấm.[4] Dù có nhiều tên gọi ở các vùng miền khác nhau, tuy nhiên nguyên liệu và cách thức chế biến của món ăn trên gần như là giống nhau.', 18000, 3, 3, null, 1, 3, 3, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (10, 0, 'Cơm tấm ngon', 'Cơm tấm, hay Cơm tấm Sài Gòn[1][2][3] là một món ăn Việt Nam có nguyên liệu chủ yếu từ gạo tấm.[4] Dù có nhiều tên gọi ở các vùng miền khác nhau, tuy nhiên nguyên liệu và cách thức chế biến của món ăn trên gần như là giống nhau.', 30000, 5, 3, null, 1, 1, 3, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (11, 0, 'Cơm sườn siêu cấp', 'Cơm tấm, hay Cơm tấm Sài Gòn[1][2][3] là một món ăn Việt Nam có nguyên liệu chủ yếu từ gạo tấm.[4] Dù có nhiều tên gọi ở các vùng miền khác nhau, tuy nhiên nguyên liệu và cách thức chế biến của món ăn trên gần như là giống nhau.', 40000, 4, 5, null, 1, 2, 3, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (12, 0, 'Cơm sườn vip', 'Cơm tấm, hay Cơm tấm Sài Gòn[1][2][3] là một món ăn Việt Nam có nguyên liệu chủ yếu từ gạo tấm.[4] Dù có nhiều tên gọi ở các vùng miền khác nhau, tuy nhiên nguyên liệu và cách thức chế biến của món ăn trên gần như là giống nhau.', 25000, 3, 3, null, 1, 3, 3, 1, 1);

INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (13, 0, 'Gà rán KFC', 'Các món chiên từ thịt gà thường thu hút người dùng bởi cảm giác giòn rụm bên ngoài cùng hương vị thơm ngon, mềm ngọt của thịt gà bên trong. Hôm nay, Điện máy XANH sẽ mách bạn 3 cách làm gà rán giòn đơn giản, hấp dẫn cho gia đình cùng thưởng thức. Cùng vào bếp thực hiện món ăn này nhé!', 21000, 5, 3, null, 1, 1, 4, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (14, 0, 'Gà rán Lotte', 'Các món chiên từ thịt gà thường thu hút người dùng bởi cảm giác giòn rụm bên ngoài cùng hương vị thơm ngon, mềm ngọt của thịt gà bên trong. Hôm nay, Điện máy XANH sẽ mách bạn 3 cách làm gà rán giòn đơn giản, hấp dẫn cho gia đình cùng thưởng thức. Cùng vào bếp thực hiện món ăn này nhé!', 22000, 4, 5, null, 1, 2, 4, 1, 1);
INSERT INTO tmdt.product (id, count, name, description, price, promotion, quantity, status, account_id, brand_id, category_id, option_id, shop_id) VALUES (15, 0, 'Ga rán vỉa vè', 'Các món chiên từ thịt gà thường thu hút người dùng bởi cảm giác giòn rụm bên ngoài cùng hương vị thơm ngon, mềm ngọt của thịt gà bên trong. Hôm nay, Điện máy XANH sẽ mách bạn 3 cách làm gà rán giòn đơn giản, hấp dẫn cho gia đình cùng thưởng thức. Cùng vào bếp thực hiện món ăn này nhé!', 15000, 3, 3, null, 1, 3, 4, 1, 1);

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
