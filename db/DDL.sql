drop database iris;

create database iris;
use iris;

# Some fields are text because formats may vary along development or are still undefined.
# Leav'em like that, for testing.

# --------------------- USER RELATED ENTITIES

create table user_type(
	user_type_id int auto_increment primary key not null,
    user_type tinytext not null
);

create table seller(
	seller_id int auto_increment primary key not null,
    seller_name varchar(100) null # Seller name to present a more commerciable name instead of legal name.
);

# User is a keyword
create table _user(
	user_id int auto_increment primary key not null,
    user_type_id int not null, foreign key(user_type_id) references user_type(user_type_id),
    
    user_name varchar(50) not null,
    user_surname varchar(100) not null,
	user_legal_id tinytext not null,
    user_birthdate datetime not null,
    
    user_email text not null,
    user_phone text not null,
    
    user_created_at timestamp default current_timestamp,
    user_seller_id int null unique, foreign key(user_seller_id) references seller(seller_id)
);

create table enterprise_type(
	enterprise_type_id int not null primary key auto_increment,
    enterprise_type text not null
);

create table enterprise(
	enterprise_id int not null primary key auto_increment,
    enterprise_type_id int not null, foreign key(enterprise_type_id) references enterprise_type(enterprise_type_id),
    
    enterprise_legal_name text not null, #Nome legal
    enterprise_commercial_name text not null, #Nome fantasia
	enterprise_legal_id tinytext not null,
    
    enterprise_seller_id int null unique, foreign key(enterprise_seller_id) references seller(seller_id)
);

create table address_type(
	address_type_id int not null primary key auto_increment,
	address_type varchar(100) not null
);

create table address(
	address_id int auto_increment primary key,
    address_type_id int not null, foreign key(address_type_id) references address_type(address_type_id),
    
    address_code tinytext not null,
    address_street varchar(200) not null,
    address_number int not null,
    address_additional_info tinytext not null,
    
    address_city varchar(150) not null,
    address_state varchar(150) not null,
    address_country varchar(150) not null
);

create table user_address(
	user_id int not null, foreign key(user_id) references _user(user_id),
	user_address_id int not null, foreign key(user_address_id) references address(address_id)
);

create table enterprise_address(
	enterprise_id int not null, foreign key(enterprise_id) references address(address_id),
	enterprise_address_id int not null, foreign key(enterprise_address_id) references address(address_id)
);

create table user_enterprise(
	user_id int not null, foreign key(user_id) references _user(user_id),
	enterprise_id int not null, foreign key(enterprise_id) references enterprise(enterprise_id),
    user_type_id int not null, foreign key(user_type_id) references user_type(user_type_id)
);

# ------------------ PRODUCT RELATED ENTITIES

create table category(
	category_id int not null primary key auto_increment,
    category tinytext not null
);

create table attribute(
	attribute_id int not null primary key auto_increment,
    attribute tinytext not null
);

create table attribute_value(
	attribute_value_id int not null primary key auto_increment,
    attribute_id int not null, foreign key(attribute_id) references attribute(attribute_id),
    attribute_value text not null
);

create table option_set(
	option_set_id int not null primary key auto_increment,
    option_set text not null
);

create table option_set_attribute (
	option_set_id int not null references option_set(option_set_id),
    attribute_id int not null references attribute(attribute_id),
    
    primary key(option_set_id, attribute_id)
);

create table product(
	product_id int not null primary key auto_increment,
    product_category_id int not null, foreign key(product_category_id) references category(category_id),
    product_title tinytext not null,
    product_description text not null,
    product_price decimal(19,4) null, # 19 digits and 4 decimals for float precision limitation.
    product_inventory int null default 0,
    product_created_at timestamp default current_timestamp,
    product_updated_at timestamp default current_timestamp on update current_timestamp,
    
    product_seller_id int not null, foreign key(product_seller_id) references seller(seller_id)
);

create table product_attribute( # For products that only contain attributes. No variants, initially.
	product_id int not null references product(product_id),
	product_attribute_id int not null, foreign key(product_attribute_id) references attribute(attribute_id),
	product_attribute_value_id int not null references attribute_value(attribute_value_id),
    
    primary key(product_id, product_attribute_id, product_attribute_value_id)
);

create table product_option_set(
	product_id int not null references product(product_id),
    option_set_id int not null references option_set(option_set_id),
    
    primary key (product_id, option_set_id)
);

create table product_variant(
	product_variant_id int not null primary key auto_increment, #does not need to be auto incremented
    product_id int not null references product(product_id),
    product_sku tinytext not null,
    product_variant_price_adjustment decimal(19,4) null,
    product_variant_inventory int null
);

create table variant_attribute(
	product_variant_id int not null references product_variant(product_variant_id),
    attribute_id int not null references attribute(attribute_id),
    attribute_value_id int not null references attribute_value(attribute_value_id),
    
    primary key(product_variant_id, attribute_id, attribute_value_id)
);


# --------------------- PAYMENT RELATED ENTITIES

create table payment_status(
	payment_status_id int not null primary key auto_increment,
    payment_status varchar(150) not null
);

create table payment(
	payment_id int not null primary key auto_increment,
    user_id int not null, foreign key(user_id) references _user(user_id),
    payment_status_id int not null, foreign key(payment_status_id) references payment_status(payment_status_id)
);

create table order_status(
	order_status_id int not null primary key auto_increment,
    order_status varchar(150) not null
);


# Order is a keyword
create table _order(
	order_id int not null primary key auto_increment,
    user_id int not null, foreign key(user_id) references _user(user_id),
    order_title tinytext null,
    
    order_status_id int not null, foreign key(order_status_id) references order_status(order_status_id),
    order_payment_id int not null, foreign key(order_payment_id) references payment(payment_id)
);

create table order_product(
	order_id int not null, foreign key(order_id) references _order(order_id),
    product_id int not null, foreign key(product_id) references product(product_id)
);