CREATE TABLE PAGE_URL
(
    param varchar NOT NULL,
    img_url text,
    PRIMARY KEY (param)
);

comment on table PAGE_URL is '分頁圖片連結';
comment on column PAGE_URL.param is '系統參數名稱';
comment on column PAGE_URL.img_url is '圖片連結';
