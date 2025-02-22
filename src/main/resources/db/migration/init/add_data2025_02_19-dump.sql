-- line_master
insert into real_estate_management.line_master(id,district_id,created_by,created_at,administrative_code,line_name)
select id,district_id,created_by,created_at,administrative_code,line_name from guland.line_master;

-- common_code
insert into real_estate_management.common_code(sort,created_by,created_at,category_code,category_name,inner_code,inner_name)
select sort,created_by,created_at,category_code,category_name,inner_code,inner_name from guland.common_code;

-- city_master
insert into real_estate_management.city_master(id,created_by,created_at,administrative_code,city_name)
select id,created_by,created_at,administrative_code,city_name from guland.city_master;

-- ward_master
insert into real_estate_management.ward_master(id,district_id,created_by,created_at,administrative_code,ward_name)
select id,district_id,created_by,created_at,administrative_code,ward_name from guland.ward_master;

-- district_master
insert into real_estate_management.district_master(id,city_id,created_by,created_at,administrative_code,district_name)
select id,city_id,created_by,created_at,administrative_code,district_name from guland.district_master;

-- account
insert into real_estate_management.account(id,username,password,role,email,created_at,created_by)
values
    (1,'admin','$2a$12$OpfXu0lOHw06YcaOch1fQ.DbeOd5htJaPHBI.VGfYKrSVGnVUKEjC','ADMIN','ducnguyen.12965@gmail.com',current_timestamp,0),
    (2,'user11','$2a$12$8SZJlj6oix2tMTuYz8e2neHNtMeNdHsPQwsWYG90k20AqyuzBKDDy','PARTNER','duccris1105@gmail.com',current_timestamp,0),
    (3,'user12','$2a$12$YWg8np3Jw0ViMUjWOd4xYu0Ds3CvhVYanNCEcSqczlOOXpUDuFRQ.','PARTNER','goline.ducnguyen@gmail.com',current_timestamp,0),
    (4,'user13','$2a$12$6w7hTnOBtmpJbvFNdYz72ucCsxoNb6yqgddXsTIYEmkPxoFkEcz3u','PARTNER','dalih03012001@gmail.com',current_timestamp,0),
    (5,'user14','$2a$12$KwQUVJ1w127HcCg6.3ak1.h1dDhbDQxR.bsYNk1zQ6BD6gD4vRQ6q','PARTNER','anhbayy7@gmail.com',current_timestamp,0),
    (6,'user15','$2a$12$NLODabhLDeVjkNkFIiQE.uGbbHntrFxIdCJijLbdiRzwcVfbkx7ZS','PARTNER','anhduk02@gmail.com',current_timestamp,0);

-- partner_management
SET @a = 1;
INSERT INTO real_estate_management.partner_management
(partner_name, phone, description, image_url, created_at, created_by, account_id)
SELECT
    gp.partner_name,
    gp.phone,
    gp.description,
    gp.image_url,
    gp.created_at,
    gp.created_by,
    @a := @a + 1  -- Tăng giá trị @a lên mỗi lần insert
FROM guland.partner_management gp
    RIGHT JOIN (
    SELECT partner_id, COUNT(*) AS sum
    FROM guland.real_estate_management
    GROUP BY partner_id
    ) AS gp1
ON gp.id = gp1.partner_id;

-- real_estate_catalog
insert into real_estate_management.real_estate_catalog(id,created_at,created_by,category_code,inner_code,partner_id,real_estate_id)
select id,created_at,created_by,category_code,inner_code,partner_id,real_estate_id from guland.real_estate_catalog where partner_id in( SELECT partner_id
FROM guland.real_estate_management
GROUP BY partner_id);

-- real_estate_management
insert into real_estate_management.real_estate_management(id,created_at,created_by,area,other_notes,partner_id,position,real_estate_name,real_estate_status,road_width,street_type,website_property_name)
select id,created_at,created_by,area,other_notes,partner_id,position,real_estate_name,real_estate_status,road_width,street_type,website_property_name from guland.real_estate_management where partner_id in( SELECT partner_id
FROM guland.real_estate_management
GROUP BY partner_id);

-- real_estate_image_management
insert into real_estate_management.real_estate_image_management
(id,created_at,created_by,arrange,description,image_path,real_estate_id,image_status)
select id,created_at,created_by,arrange,description,image_path,real_estate_id,image_status
from guland.real_estate_image_management where real_estate_id in(select id from real_estate_management.real_estate_management);

-- base_price_management
insert into real_estate_management.base_price_management(id,created_at,created_by,fee,real_estate_id)
select id,created_at,created_by,fee,real_estate_id from guland.base_price_management where real_estate_id in(select id from real_estate_management.real_estate_management);

