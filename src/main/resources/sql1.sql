-- Tạo cơ sở dữ liệu (nếu chưa tồn tại)
CREATE DATABASE tmdt1;

GO

USE tmdt1;
GO

-- Bảng city
CREATE SEQUENCE city_id_seq START WITH 3 INCREMENT BY 1 NO CACHE;
CREATE TABLE city
(
    id   BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR city_id_seq,
    name NVARCHAR(255)
);

-- Bảng district
CREATE SEQUENCE district_id_seq START WITH 4 INCREMENT BY 1 NO CACHE;
CREATE TABLE district
(
    id      BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR district_id_seq,
    name    NVARCHAR(255),
    city_id BIGINT,
    FOREIGN KEY (city_id) REFERENCES city (id)
);

-- Bảng wards
CREATE SEQUENCE wards_id_seq START WITH 1 INCREMENT BY 1 NO CACHE;
CREATE TABLE wards
(
    id          BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR wards_id_seq,
    name        NVARCHAR(255),
    district_id BIGINT,
    FOREIGN KEY (district_id) REFERENCES district (id)
);

-- Bảng account
CREATE SEQUENCE account_id_seq START WITH 3 INCREMENT BY 1 NO CACHE;
CREATE TABLE account
(
    id       BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR account_id_seq,
    email    NVARCHAR(255),
    password NVARCHAR(255),
    status   NVARCHAR(255),
    username NVARCHAR(255)
);

-- Bảng role
CREATE SEQUENCE role_id_seq START WITH 4 INCREMENT BY 1 NO CACHE;
CREATE TABLE role
(
    id   BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR role_id_seq,
    name NVARCHAR(255)
);

-- Bảng discount
CREATE SEQUENCE discount_id_seq START WITH 1 INCREMENT BY 1 NO CACHE;
CREATE TABLE discount
(
    id   BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR discount_id_seq,
    code FLOAT
);

-- Bảng user
CREATE SEQUENCE user_id_seq START WITH 3 INCREMENT BY 1 NO CACHE;
CREATE TABLE [user]
(
    id          BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR user_id_seq,
    address     NVARCHAR(255),
    age         DATE,
    avatar      NVARCHAR(255),
    change_role INT                DEFAULT 0,
    email       NVARCHAR(255),
    gender      NVARCHAR(255),
    name        NVARCHAR(255),
    phone       NVARCHAR(255),
    account_id  BIGINT,
    discount_id BIGINT,
    wards_id    BIGINT,
    FOREIGN KEY (account_id) REFERENCES account (id),
    FOREIGN KEY (discount_id) REFERENCES discount (id),
    FOREIGN KEY (wards_id) REFERENCES wards (id)
);

-- Bảng account_roles
CREATE TABLE account_roles
(
    account_id BIGINT NOT NULL,
    roles_id   BIGINT NOT NULL,
    PRIMARY KEY (account_id, roles_id),
    FOREIGN KEY (roles_id) REFERENCES role (id),
    FOREIGN KEY (account_id) REFERENCES account (id)
);


-- Bảng shop
CREATE SEQUENCE shop_id_seq START WITH 2 INCREMENT BY 1 NO CACHE;
CREATE TABLE shop
(
    id         BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR shop_id_seq,
    address    NVARCHAR(255),
    avatar     NVARCHAR(255),
    name       NVARCHAR(255),
    phone      NVARCHAR(255),
    account_id BIGINT,
    wards_id   BIGINT,
    FOREIGN KEY (account_id) REFERENCES account (id),
    FOREIGN KEY (wards_id) REFERENCES wards (id)
);

-- Bảng category
CREATE SEQUENCE category_id_seq START WITH 3 INCREMENT BY 1 NO CACHE;
CREATE TABLE category
(
    id   BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR category_id_seq,
    name NVARCHAR(255)
);

-- Bảng option_product
CREATE SEQUENCE option_product_id_seq START WITH 3 INCREMENT BY 1 NO CACHE;
CREATE TABLE option_product
(
    id   BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR option_product_id_seq,
    name NVARCHAR(255)
);

-- Bảng brand
CREATE SEQUENCE brand_id_seq START WITH 4 INCREMENT BY 1 NO CACHE;
CREATE TABLE brand
(
    id   BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR brand_id_seq,
    name NVARCHAR(255)
);

-- Bảng product
CREATE SEQUENCE product_id_seq START WITH 16 INCREMENT BY 1 NO CACHE;
CREATE TABLE product
(
    id          BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR product_id_seq,
    [count]     INT                DEFAULT 0,
    description TEXT,
    name        NVARCHAR(255) NOT NULL,
    price       FLOAT         NOT NULL,
    promotion   FLOAT,
    quantity    INT           NOT NULL,
    status      INT,
    account_id  BIGINT,
    brand_id    BIGINT,
    category_id BIGINT,
    option_id   BIGINT,
    shop_id     BIGINT,
    FOREIGN KEY (account_id) REFERENCES account (id),
    FOREIGN KEY (brand_id) REFERENCES brand (id),
    FOREIGN KEY (category_id) REFERENCES category (id),
    FOREIGN KEY (shop_id) REFERENCES shop (id),
    FOREIGN KEY (option_id) REFERENCES option_product (id)
);


-- Bảng image
CREATE SEQUENCE image_id_seq START WITH 16 INCREMENT BY 1 NO CACHE;
CREATE TABLE image
(
    id   BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR image_id_seq,
    name NVARCHAR(255)
);

-- Bảng product_image
CREATE TABLE product_image
(
    product_id BIGINT NOT NULL,
    image_id   BIGINT NOT NULL,
    UNIQUE (image_id),
    FOREIGN KEY (product_id) REFERENCES product (id),
    FOREIGN KEY (image_id) REFERENCES image (id)
);

-- Bảng cart
CREATE SEQUENCE cart_id_seq START WITH 1 INCREMENT BY 1 NO CACHE;
CREATE TABLE cart
(
    id         BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR cart_id_seq,
    confirm    NVARCHAR(255),
    reason     NVARCHAR(255),
    account_id BIGINT,
    user_id    BIGINT,
    FOREIGN KEY (account_id) REFERENCES account (id),
    FOREIGN KEY (user_id) REFERENCES [user] (id)
);

-- Bảng cart_detail
CREATE SEQUENCE cart_detail_id_seq START WITH 1 INCREMENT BY 1 NO CACHE;
CREATE TABLE cart_detail
(
    id         BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR cart_detail_id_seq,
    price      FLOAT,
    quantity   FLOAT,
    cart_id    BIGINT,
    product_id BIGINT,
    FOREIGN KEY (cart_id) REFERENCES cart (id),
    FOREIGN KEY (product_id) REFERENCES product (id)
);

-- Bảng bill
CREATE SEQUENCE bill_id_seq START WITH 1 INCREMENT BY 1 NO CACHE;
CREATE TABLE bill
(
    id         BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR bill_id_seq,
    address    NVARCHAR(255),
    [date]     DATE,
    name       NVARCHAR(255),
    payment    NVARCHAR(255)      DEFAULT N'chưa thanh toán',
    phone      NVARCHAR(255),
    reason     NVARCHAR(255),
    status     NVARCHAR(255)      DEFAULT N'0',
    total      NVARCHAR(255),
    account_id BIGINT,
    shop_id    BIGINT,
    wards_id   BIGINT,
    FOREIGN KEY (account_id) REFERENCES account (id),
    FOREIGN KEY (shop_id) REFERENCES shop (id),
    FOREIGN KEY (wards_id) REFERENCES wards (id)
);

-- Bảng bill_detail
CREATE SEQUENCE bill_detail_id_seq START WITH 1 INCREMENT BY 1 NO CACHE;
CREATE TABLE bill_detail
(
    id         BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR bill_detail_id_seq,
    price      FLOAT,
    quantity   FLOAT,
    total      FLOAT,
    bill_id    BIGINT,
    product_id BIGINT,
    FOREIGN KEY (bill_id) REFERENCES bill (id),
    FOREIGN KEY (product_id) REFERENCES product (id)
);

-- Bảng repair
CREATE SEQUENCE repair_id_seq START WITH 1 INCREMENT BY 1 NO CACHE;
CREATE TABLE repair
(
    id             BIGINT -- tiếp tục từ đoạn code trước...

        PRIMARY KEY DEFAULT NEXT VALUE FOR repair_id_seq,
    content        NVARCHAR(255),
    [end]          DATE,
    price          FLOAT,
    start          DATE,
    status         NVARCHAR(255),
    bill_detail_id BIGINT,
    user_id        BIGINT,
    FOREIGN KEY (bill_detail_id) REFERENCES bill_detail (id),
    FOREIGN KEY (user_id) REFERENCES [user] (id)
);

-- Bảng message
CREATE SEQUENCE message_id_seq START WITH 1 INCREMENT BY 1 NO CACHE;
CREATE TABLE message
(
    id           BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR message_id_seq,
    content      NVARCHAR(255),
    time         DATETIME2,
    from_user_id BIGINT,
    to_user_id   BIGINT,
    FOREIGN KEY (from_user_id) REFERENCES account (id),
    FOREIGN KEY (to_user_id) REFERENCES account (id)
);

-- Bảng notification
CREATE SEQUENCE notification_id_seq START WITH 1 INCREMENT BY 1 NO CACHE;
CREATE TABLE notification
(
    id         BIGINT PRIMARY KEY DEFAULT NEXT VALUE FOR notification_id_seq,
    avatar     NVARCHAR(255),
    content    NVARCHAR(255),
    create_at  DATETIME2,
    status     BIGINT,
    title      NVARCHAR(255),
    account_id BIGINT,
    bill_id    BIGINT,
    product_id BIGINT,
    shop_id    BIGINT,
    FOREIGN KEY (account_id) REFERENCES account (id),
    FOREIGN KEY (bill_id) REFERENCES bill (id),
    FOREIGN KEY (product_id) REFERENCES product (id),
    FOREIGN KEY (shop_id) REFERENCES shop (id)
);
GO

create sequence dbo.size_id_seq
    start with 5
    no cache;
create table size
(
    id   bigint primary key not null,
    name varchar(255)       not null
);
GO



create sequence dbo.color_id_seq
    start with 3
    no cache;
create table color
(
    id   bigint primary key not null,
    name varchar(255)       not null
);
GO


create sequence dbo.product_detail_id_seq
    start with 16
    no cache;
create table product_detail
(
    id         bigint primary key not null,
    image      varchar(255)       not null,
    quantity   int                not null,
    color_id   bigint,
    size_id    bigint,
    product_id bigint,
    foreign key (color_id) references color (id),
    foreign key (size_id) references size (id),
    foreign key (product_id) references product (id)
);
GO






