use banhang
go
INSERT INTO brand (name)
VALUES (N'Việt Nam');
INSERT INTO brand (name)
VALUES ('USA');
INSERT INTO brand (name)
VALUES ('China');
INSERT INTO role (name)
VALUES ('ROLE_ADMIN');
INSERT INTO role (name)
VALUES ('ROLE_USER');
INSERT INTO role (name)
VALUES ('ROLE_SHOP');
INSERT INTO category (name)
VALUES (N'Áo');
INSERT INTO category (name)
VALUES (N'Bộ');
INSERT INTO city (name)
VALUES (N'Hà Nội');
INSERT INTO city (name)
VALUES (N'Quảng Ninh');
INSERT INTO district (name, city_id)
VALUES (N'Hàm Nghi', 1);
INSERT INTO district (name, city_id)
VALUES (N'Hoàn Kiếm', 1);
INSERT INTO district (name, city_id)
VALUES (N'Móng Cái', 2);
INSERT INTO image (name)
VALUES ('https://aothethaothietke.com/wp-content/uploads/2022/07/Mau-quan-ao-bong-da-hoa-tiet-hinh-con-ong-may-vang-tu-thiet-ke-V3189.png.webp');
INSERT INTO image (name)
VALUES ('https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp');
INSERT INTO image (name)
VALUES ('https://aothethaothietke.com/wp-content/uploads/2022/07/Mau-quan-ao-bong-da-hoa-tiet-hinh-con-ca-xanh-duong-tu-thiet-ke-V3194.png.webp');
INSERT INTO image (name)
VALUES ('https://aothethaothietke.com/wp-content/uploads/2022/07/Mau-quan-ao-bong-da-hoa-tiet-hinh-con-cho-mau-do-tu-thiet-ke-V3199.png.webp');
INSERT INTO image (name)
VALUES ('https://aothethaothietke.com/wp-content/uploads/2022/07/Mau-quan-ao-bong-da-hoa-tiet-hinh-su-tu-mau-cam-tu-thiet-ke-V3205.png');
INSERT INTO image (name)
VALUES ('https://thethaodonga.com/wp-content/uploads/2023/05/anh-ao-da-bong-dep-4.jpg');
INSERT INTO image (name)
VALUES ('https://vinicisport.com/wp-content/uploads/2024/03/A-32-1.jpg');
INSERT INTO image (name)
VALUES ('https://banaobongda.com/wp-content/uploads/2022/11/Ao-Khong-Logo-Hacazi-Kato-Mau-Xam.jpg');
INSERT INTO image (name)
VALUES ('https://banaobongda.com/wp-content/uploads/2022/11/Ao-Khong-Logo-Hacazi-Kato-Mau-Den.jpg');
INSERT INTO image (name)
VALUES ('https://338sport.com.vn/wp-content/uploads/2023/05/338-Reup-01-Xanh-Bich-2-1.jpg');
INSERT INTO image (name)
VALUES ('https://338sport.com.vn/wp-content/uploads/2023/04/HAP000681-600x600.jpg');
INSERT INTO image (name)
VALUES ('https://aothethaothietke.com/wp-content/uploads/2022/03/Mau-ao-da-banh-Cong-ty-co-phan-Det-may-7-V6704-600x600.png.webp');
INSERT INTO image (name)
VALUES ('https://aothethaothietke.com/wp-content/uploads/2022/02/Mau-dong-phuc-bong-da-hoc-sinh-Truong-THPT-Lien-Ha-Ha-Noi-mau-do-V5839-600x600.png.webp');
INSERT INTO image (name)
VALUES ('https://aothethaothietke.com/wp-content/uploads/2022/07/Mau-quan-ao-da-bong-Cong-ty-Co-phan-Dich-vu-Xay-dung-Cong-trinh-Buu-dien-V7723.png.webp');
INSERT INTO image (name)
VALUES ('https://aothethaothietke.com/wp-content/uploads/2022/06/Mau-ao-da-bong-Cong-ty-co-phan-Thiet-bi-Y-te-Viet-Nhat-V7233-600x600.png.webp');
INSERT INTO option_product (name)
VALUES (N'Chính Hãng');
INSERT INTO option_product (name)
VALUES (N'Custom');

INSERT INTO wards (name, district_id)
VALUES ('MonCity', 1);

INSERT INTO account (email, password, username, status)
VALUES ('shop@gmail.com', '$2a$10$Hm8pUUoJX6HQUzsEKzNTQ.ejaWseyfOKwe1LBxle/2j0HiEfgLjmu', 'shop', 'active');
INSERT INTO account (email, password, username, status)
VALUES ('admin@gmail.com', '$2a$10$Hm8pUUoJX6HQUzsEKzNTQ.ejaWseyfOKwe1LBxle/2j0HiEfgLjmu', 'admin', 'active');
INSERT INTO account_roles (account_id, roles_id)
VALUES (1, 3);
INSERT INTO account_roles (account_id, roles_id)
VALUES (2, 1);

INSERT INTO discount (code, content, count, date) VALUES (40000, N'người mới', 50, N'2025-01-01');

INSERT INTO [user] (address, age, avatar, change_role, email, gender, name, phone, account_id, discount_id,
                    wards_id)
VALUES ('22', '2024-04-27',
        'https://thethaodonga.com/wp-content/uploads/2023/05/con-gai-mac-ao-da-bong-23.jpg',
        0, 'toannvph05233@gmail.com', null, N'Nguyễn Văn A', '0912345678', 1, 1, 1);
INSERT INTO [user] (address, age, avatar, change_role, email, gender, name, phone, account_id, discount_id,
                    wards_id)
VALUES ('22', '2024-04-27',
        'https://thethaodonga.com/wp-content/uploads/2023/05/con-gai-mac-ao-da-bong-23.jpg',
        0, 'admin@gmail.com', null, 'admin', '0912345678', 2, 1, 1);
INSERT INTO shop (address, avatar, name, phone, account_id, wards_id)
VALUES ('22',
        'https://thethaodonga.com/wp-content/uploads/2023/05/con-gai-mac-ao-da-bong-23.jpg',
        'Mèo con', '09123456789', 1, 1);

INSERT INTO product (count, name, description, price, promotion, quantity, status, account_id, brand_id,
                     category_id, option_id, shop_id)
VALUES (0, N'Giường',
        N'Bàn, ghế, giường, tủ… không chỉ là vật dụng mang những công năng khác nhau mà chúng còn là những vật dụng trang trí tô điểm cho ngôi nhà của bạn.',
        30000000, 5, 3, null, 1, 1, 1, 1, 1),
       (0, N'Bàn ghế',
        N'Bàn, ghế, giường, tủ… không chỉ là vật dụng mang những công năng khác nhau mà chúng còn là những vật dụng trang trí tô điểm cho ngôi nhà của bạn.',
        20000000, 4, 5, null, 1, 2, 1, 1, 1),
       (0, N'Kệ tivi',
        N'Bàn, ghế, giường, tủ… không chỉ là vật dụng mang những công năng khác nhau mà chúng còn là những vật dụng trang trí tô điểm cho ngôi nhà của bạn.',
        10000000, 3, 3, null, 1, 3, 1, 1, 1),
       (0, 'Máy ép hoa quả', 'Các thiết bị đồ gia dụng hiện nay có mặt và được sử dụng ở mỗi gia đình. ', 30000000,
        5, 3, null, 1, 1, 1, 1, 1),

       (0, 'Máy lọc nước', 'Các thiết bị đồ gia dụng hiện nay có mặt và được sử dụng ở mỗi gia đình.', 20000000, 4,
        5, null, 1, 2, 1, 1, 1),

       (0, 'Lò vi sóng', 'Các thiết bị đồ gia dụng hiện nay có mặt và được sử dụng ở mỗi gia đình.', 10000000, 3, 3,
        null, 1, 3, 1, 1, 1),


       (0, 'Tủ lạnh', 'Các thiết bị đồ gia dụng hiện nay có mặt và được sử dụng ở mỗi gia đình.', 30000000, 5, 3,
        null, 1, 1, 2, 1, 1),

       (0, 'Quạt', 'Các thiết bị đồ gia dụng hiện nay có mặt và được sử dụng ở mỗi gia đình. ', 20000000, 4, 5, null,
        1, 2, 2, 1, 1),

       (0, 'Bếp gha', 'Các thiết bị đồ gia dụng hiện nay có mặt và được sử dụng ở mỗi gia đình.', 10000000, 3, 3,
        null, 1, 3, 2, 1, 1),


       (0, 'Trang trí phòng khác',
        'Trong những năm gần đây, decor phòng khách, phòng ngủ đang trở thành một xu hướng mới. Decor hay trang trí là một cách để chúng ta có thể sở hữu không gian sống đẹp và tiện nghi hơn. ',
        30000000, 5, 3, null, 1, 1, 2, 1, 1),

       (0, 'Trang trí phòng ngủ',
        'Trong những năm gần đây, decor phòng khách, phòng ngủ đang trở thành một xu hướng mới. Decor hay trang trí là một cách để chúng ta có thể sở hữu không gian sống đẹp và tiện nghi hơn. ',
        20000000, 4, 5, null, 1, 2, 2, 1, 1),

       (0, 'Trang trí phòng bếp',
        'Trong những năm gần đây, decor phòng khách, phòng ngủ đang trở thành một xu hướng mới. Decor hay trang trí là một cách để chúng ta có thể sở hữu không gian sống đẹp và tiện nghi hơn. ',
        10000000, 3, 3, null, 1, 3, 2, 1, 1),
       (0, 'Trang trí phòng', 'Trang trí phòng', 30000000, 5, 3, null, 1, 1, 2, 1, 1),
       (0, 'Nhà bếp 2', 'Nhà bếp 1', 20000000, 4, 5, null, 1, 2, 1, 1, 1),
       (0, 'Nhà bếp 3', 'Nhà bếp 1', 10000000, 3, 3, null, 1, 3, 2, 1, 1);

INSERT INTO product_image (product_id, image_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 14),
       (15, 15);


INSERT INTO size (name)
VALUES (N'M');
INSERT INTO size (name)
VALUES (N'L');
INSERT INTO size (name)
VALUES (N'XL');
INSERT INTO size (name)
VALUES (N'XXL');

INSERT INTO color (name)
VALUES (N'black');
INSERT INTO color (name)
VALUES (N'white');
INSERT INTO color (name)
VALUES (N'red');


INSERT INTO product_detail (image, quantity, color_id, size_id, product_id)
VALUES (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 1, 1, 1),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 1, 1, 2),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 1, 1, 3),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 1, 1, 4),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 1, 1, 5),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 1, 1, 6),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 2, 2, 7),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 2, 2, 8),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 2, 2, 9),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 2, 2, 10),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 2, 3, 11),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 2, 3, 12),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 2, 3, 13),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 3, 4, 14),
       (N'https://aothethaothietke.com/wp-content/uploads/2023/03/Mau-quan-ao-the-thao-Cau-lac-bo-bong-da-Internazionale-Milan-2019-thiet-ke-V3440-600x600.png.webp',
        5, 3, 4, 15);


