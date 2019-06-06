### テーブル定義一覧

##### メンバー member
memberid serial, not null, primary key  
memberid_nk varchar(20)  
membername varchar(20), not null
memberpict bytea
registdate date  

##### フライヤー flyer
flyerid serial, not null, primary key
flyerid_nk varchar(20)
filyerpict bytea
livedate date

##### メンバー詳細　memberdetail
memberid not null, primary key
instumental varchar(100)
text varchar(222);

##### ユーザ user
userid varchar(20), not null, primary key
username varchar(20), not null
email varchar(50)
repflg varchar(1), not null
