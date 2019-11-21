SET NAMES UTF8;
DROP DATABASE IF EXISTS gw;
CREATE DATABASE gw CHARSET=UTF8;
USE gw;

CREATE TABLE cehua(
  lid INT PRIMARY KEY AUTO_INCREMENT,         
  img_url VARCHAR(32)       
);
INSERT INTO cehua VALUES(null,'cehua1.png');
INSERT INTO cehua VALUES(null,'cehua2.png');
INSERT INTO cehua VALUES(null,'cehua3.png');
INSERT INTO cehua VALUES(null,'cehua4.png');
INSERT INTO cehua VALUES(null,'cehua5.png');
INSERT INTO cehua VALUES(null,'cehua6.png');
INSERT INTO cehua VALUES(null,'cehua7.png');
INSERT INTO cehua VALUES(null,'cehua8.png');
INSERT INTO cehua VALUES(null,'cehua9.png');
INSERT INTO cehua VALUES(null,'cehua10.png');

CREATE TABLE zhaoshang(
  lid INT PRIMARY KEY AUTO_INCREMENT,         
  img_url VARCHAR(32)       
);
INSERT INTO zhaoshang VALUES(null,'123.png');
INSERT INTO zhaoshang VALUES(null,'456.png');
INSERT INTO zhaoshang VALUES(null,'741.png');
INSERT INTO zhaoshang VALUES(null,'789.png');
INSERT INTO zhaoshang VALUES(null,'123.png');
INSERT INTO zhaoshang VALUES(null,'456.png');
INSERT INTO zhaoshang VALUES(null,'741.png');
INSERT INTO zhaoshang VALUES(null,'789.png');

CREATE TABLE zuanshi(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),        
  price DECIMAL(10,2),       
  lname VARCHAR(32),          
  img_url VARCHAR(32)       
);
INSERT INTO zuanshi VALUES(null,'钻石',1582.00,'真爱钻戒，一生所爱','zuanshi1.jpg');
INSERT INTO zuanshi VALUES(null,'钻石',1582.00,'真爱钻戒，一生所爱','zuanshi2.jpg');
INSERT INTO zuanshi VALUES(null,'钻石',1582.00,'真爱钻戒，一生所爱','zuanshi3.jpg');
INSERT INTO zuanshi VALUES(null,'钻石',1582.00,'真爱钻戒，一生所爱','zuanshi4.jpg');
INSERT INTO zuanshi VALUES(null,'钻石',1582.00,'真爱钻戒，一生所爱','zuanshi5.jpg');
INSERT INTO zuanshi VALUES(null,'钻石',1582.00,'真爱钻戒，一生所爱','zuanshi6.jpg');
INSERT INTO zuanshi VALUES(null,'钻石',1582.00,'真爱钻戒，一生所爱','zuanshi7.jpg');
INSERT INTO zuanshi VALUES(null,'钻石',1582.00,'真爱钻戒，一生所爱','zuanshi8.jpg');

CREATE TABLE xianglian(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),        
  price DECIMAL(10,2),       
  lname VARCHAR(32),          
  img_url VARCHAR(32)       
);
INSERT INTO xianglian VALUES(null,'项链',1582.00,'项链你我，随影相随','xianglian1.jpg');
INSERT INTO xianglian VALUES(null,'项链',1582.00,'项链你我，随影相随','xianglian2.jpg');
INSERT INTO xianglian VALUES(null,'项链',1582.00,'项链你我，随影相随','xianglian3.jpg');
INSERT INTO xianglian VALUES(null,'项链',1582.00,'项链你我，随影相随','xianglian4.jpg');
INSERT INTO xianglian VALUES(null,'项链',1582.00,'项链你我，随影相随','xianglian5.jpg');
INSERT INTO xianglian VALUES(null,'项链',1582.00,'项链你我，随影相随','xianglian6.jpg');
INSERT INTO xianglian VALUES(null,'项链',1582.00,'项链你我，随影相随','xianglian7.jpg');
INSERT INTO xianglian VALUES(null,'项链',1582.00,'项链你我，随影相随','xianglian8.jpg');

CREATE TABLE hunjie(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),        
  price DECIMAL(10,2),       
  lname VARCHAR(32),          
  img_url VARCHAR(32)       
);
INSERT INTO hunjie VALUES(null,'婚戒',1582.00,'婚戒，连接你我','hunjie1.jpg');
INSERT INTO hunjie VALUES(null,'婚戒',1582.00,'婚戒，连接你我','hunjie2.jpg');
INSERT INTO hunjie VALUES(null,'婚戒',1582.00,'婚戒，连接你我','hunjie3.jpg');
INSERT INTO hunjie VALUES(null,'婚戒',1582.00,'婚戒，连接你我','hunjie4.jpg');
INSERT INTO hunjie VALUES(null,'婚戒',1582.00,'婚戒，连接你我','hunjie5.jpg');
INSERT INTO hunjie VALUES(null,'婚戒',1582.00,'婚戒，连接你我','hunjie6.jpg');
INSERT INTO hunjie VALUES(null,'婚戒',1582.00,'婚戒，连接你我','hunjie7.jpg');
INSERT INTO hunjie VALUES(null,'婚戒',1582.00,'婚戒，连接你我','hunjie8.jpg');

CREATE TABLE erhuan(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),        
  price DECIMAL(10,2),       
  lname VARCHAR(32),          
  img_url VARCHAR(32)       
);
INSERT INTO erhuan VALUES(null,'耳环',1582.00,'耳环，萦绕爱恋','erhuan1.jpg');
INSERT INTO erhuan VALUES(null,'耳环',1582.00,'耳环，萦绕爱恋','erhuan2.jpg');
INSERT INTO erhuan VALUES(null,'耳环',1582.00,'耳环，萦绕爱恋','erhuan3.jpg');
INSERT INTO erhuan VALUES(null,'耳环',1582.00,'耳环，萦绕爱恋','erhuan4.jpg');
INSERT INTO erhuan VALUES(null,'耳环',1582.00,'耳环，萦绕爱恋','erhuan5.jpg');
INSERT INTO erhuan VALUES(null,'耳环',1582.00,'耳环，萦绕爱恋','erhuan6.jpg');
INSERT INTO erhuan VALUES(null,'耳环',1582.00,'耳环，萦绕爱恋','erhuan7.jpg');
INSERT INTO erhuan VALUES(null,'耳环',1582.00,'耳环，萦绕爱恋','erhuan8.jpg');

CREATE TABLE baoyu(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),        
  price DECIMAL(10,2),       
  lname VARCHAR(32),          
  img_url VARCHAR(32)       
);
INSERT INTO baoyu VALUES(null,'宝玉',1582.00,'宝玉，珍品','baoyu1.jpg');
INSERT INTO baoyu VALUES(null,'宝玉',1582.00,'宝玉，珍品','baoyu2.jpg');
INSERT INTO baoyu VALUES(null,'宝玉',1582.00,'宝玉，珍品','baoyu3.jpg');
INSERT INTO baoyu VALUES(null,'宝玉',1582.00,'宝玉，珍品','baoyu4.jpg');
INSERT INTO baoyu VALUES(null,'宝玉',1582.00,'宝玉，珍品','baoyu5.jpg');
INSERT INTO baoyu VALUES(null,'宝玉',1582.00,'宝玉，珍品','baoyu6.jpg');
INSERT INTO baoyu VALUES(null,'宝玉',1582.00,'宝玉，珍品','baoyu7.jpg');
INSERT INTO baoyu VALUES(null,'宝玉',1582.00,'宝玉，珍品','baoyu8.jpg');

CREATE TABLE shoulian(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),        
  price DECIMAL(10,2),       
  lname VARCHAR(32),          
  img_url VARCHAR(32)       
);
INSERT INTO shoulian VALUES(null,'手链',1582.00,'一根一线，一生一世','baoyu1.jpg');
INSERT INTO shoulian VALUES(null,'手链',1582.00,'一根一线，一生一世','baoyu2.jpg');
INSERT INTO shoulian VALUES(null,'手链',1582.00,'一根一线，一生一世','baoyu3.jpg');
INSERT INTO shoulian VALUES(null,'手链',1582.00,'一根一线，一生一世','baoyu4.jpg');
INSERT INTO shoulian VALUES(null,'手链',1582.00,'一根一线，一生一世','baoyu5.jpg');
INSERT INTO shoulian VALUES(null,'手链',1582.00,'一根一线，一生一世','baoyu6.jpg');
INSERT INTO shoulian VALUES(null,'手链',1582.00,'一根一线，一生一世','baoyu7.jpg');
INSERT INTO shoulian VALUES(null,'手链',1582.00,'一根一线，一生一世','baoyu8.jpg');

CREATE TABLE mingxing(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),        
  price DECIMAL(10,2),       
  lname VARCHAR(32),          
  img_url VARCHAR(32)       
);
INSERT INTO mingxing VALUES(null,'明星推荐',1582.00,'明星推荐','mingxing1.jpg');
INSERT INTO mingxing VALUES(null,'明星推荐',1582.00,'明星推荐','mingxing2.jpg');
INSERT INTO mingxing VALUES(null,'明星推荐',1582.00,'明星推荐','mingxing3.jpg');
INSERT INTO mingxing VALUES(null,'明星推荐',1582.00,'明星推荐','mingxing4.jpg');
INSERT INTO mingxing VALUES(null,'明星推荐',1582.00,'明星推荐','mingxing5.jpg');
INSERT INTO mingxing VALUES(null,'明星推荐',1582.00,'明星推荐','mingxing6.jpg');
INSERT INTO mingxing VALUES(null,'明星推荐',1582.00,'明星推荐','mingxing7.jpg');
INSERT INTO mingxing VALUES(null,'明星推荐',1582.00,'明星推荐','mingxing8.jpg');

CREATE TABLE sehua(
  lid INT PRIMARY KEY AUTO_INCREMENT,                
  img_url VARCHAR(32)       
);
INSERT INTO sehua VALUES(null,'11.png');
INSERT INTO sehua VALUES(null,'11.png');
INSERT INTO sehua VALUES(null,'11.png');
INSERT INTO sehua VALUES(null,'11.png');

CREATE TABLE shangpin(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),        
  price DECIMAL(10,2),       
  lname VARCHAR(32),          
  img_url VARCHAR(32)       
);
INSERT INTO shangpin VALUES(null,'钻石',1582.00,'真爱钻戒，一生所爱','11.png');
INSERT INTO shangpin VALUES(null,'钻石',1582.00,'真爱钻戒，一生所爱','12.png');
INSERT INTO shangpin VALUES(null,'钻石',1582.00,'真爱钻戒，一生所爱','13.png');
INSERT INTO shangpin VALUES(null,'戒指',2458.00,'真爱钻戒，一生所爱','14.png');
INSERT INTO shangpin VALUES(null,'戒指',2458.00,'真爱钻戒，一生所爱','15.png');
INSERT INTO shangpin VALUES(null,'戒指',2458.00,'真爱钻戒，一生所爱','16.png');
INSERT INTO shangpin VALUES(null,'项链',145.00,'真爱钻戒，一生所爱','17.png');
INSERT INTO shangpin VALUES(null,'项链',145.00,'真爱钻戒，一生所爱','18.png');
INSERT INTO shangpin VALUES(null,'项链',145.00,'真爱钻戒，一生所爱','19.png');
INSERT INTO shangpin VALUES(null,'手链',563.00,'真爱钻戒，一生所爱','20.png');
INSERT INTO shangpin VALUES(null,'手链',563.00,'真爱钻戒，一生所爱','21.png');
INSERT INTO shangpin VALUES(null,'手链',563.00,'真爱钻戒，一生所爱','22.png');
INSERT INTO shangpin VALUES(null,'玉器',3241.00,'真爱钻戒，一生所爱','23.png');
INSERT INTO shangpin VALUES(null,'玉器',3241.00,'真爱钻戒，一生所爱','24.png');
INSERT INTO shangpin VALUES(null,'玉器',3241.00,'真爱钻戒，一生所爱','25.png');

CREATE TABLE denglu(
   id INT PRIMARY KEY AUTO_INCREMENT,
   uname VARCHAR(50),
   upwd  VARCHAR(32)
);
INSERT INTO denglu VALUES(null,'tom',md5('123'));
INSERT INTO denglu VALUES(null,'jerry',md5('123'));

CREATE TABLE cart(
 id INT PRIMARY KEY AUTO_INCREMENT,
 lid INT,
 count INT,
 lname VARCHAR(50),
 price DECIMAL(10,2)
);
ALTER TABLE cart ADD uid INT;
