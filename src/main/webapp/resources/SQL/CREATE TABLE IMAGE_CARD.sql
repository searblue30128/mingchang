CREATE TABLE IMAGE_CARD
(
    id serial NOT NULL,
    name text,
    description text,
    img_url text,
    more_detail text,
    PRIMARY KEY (id)
);

comment on table IMAGE_CARD is '首頁圖片';
comment on column IMAGE_CARD.id is 'image自動生成主鍵';
comment on column IMAGE_CARD.name is '名稱';
comment on column IMAGE_CARD.description is '描述';
comment on column IMAGE_CARD.img_url is '圖片連結';
comment on column IMAGE_CARD.more_detail is '更多備註';
