//Q1

CREATE TABLE departments (
department_id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

//Q2

ALTER TABLE people ADD department_id  INT(10) unsigned AFTER email;


//Q3 
・追加する部署一覧

INSERT INTO departments (name)
VALUES
('営業'),
('開発'),
('経理'),
('人事'),
('情報システム');

・追加する人の条件

INSERT INTO people (name, email, age, gender)
VALUES
('田中ゆうこ', 'tanaka@gizumo.jp', 25, 2),
('福田だいすけ', 'fukuda@gizumo.jp', 42, 1),
('豊島はなこ', 'toyoshima@gizumo.jp', 34, 2),
('早坂てつお', 'hayasaka@gizumo.co.jp', 61, 1),
('不思議沢みちこ', NULL, NULL, NULL),
('菅田将暉', 'suda@gizumo.jp', 30, 1),
('本田翼', 'honda@gizumo.jp', 27, 2),
('佐藤健', 'sato@gizumo.jp', 32, 1),
('藤田ニコル', 'hujita@gizumo.jp', 22, 2),
('綾瀬はるか', 'ayase@gizumo.jp', 34, 2),
('石原さとみ', 'ishihara@gizumo.jp', 33, 2),
('新垣結衣', 'aragaki@gizumo.jp', 35, 2),
('今田美桜', 'imada@gizumo.jp', 25, 2),
('広瀬すず', 'hirose@gizumo.jp', 26, 2),
('松坂桃李', 'matsuzaka@gizumo.jp', 28, 1);

・追加する日報の条件

INSERT INTO reports (person_id, content)
VALUES
(17,'朝食を抜いた為絶不調'),
(18,'30万円のパソコンを購入した'),
(20,'学校を休んでゲーセンに行った'),
(20,'たばこを1カートン買った'),
(21,'冬に海でキャンプをした'),
(22,'2015年から車の相場が上がった'),
(23,'見たいアニメがあったので会社をサボった'),
(24,'上手くサボっていることがバレて上司に怒られた'),
(25,'暇つぶしに銀行強盗をしたら警察に捕まった'),
(26,'宝くじで１億円当たった'),
(27,'さけ昆布たらこおかか梅'),
(28,'イワシタラノドグロタイヒラメ'),
(29,'いいいいいいいいいいいいいいいい'),
(30,'うううううううううううううううう'),
(31,'おおおおおおおおおおおおおおおお'),
(28,'軽トラ価格49万7000円'),
(20,'La Ferrari価格1億5000万円'),
(21,'GT-R R32価格700万円'),
(23,'BMW M4F82価格800万円'),
(17,'ロールスロイス価格5000万円'),
(18,'100系マークツー価格400万円'),
(25,'15シルビア価格250万円'),
(17,'ポルシェ911GT3価格2500万円'),
(24,'まみむめもらりるれろ'),
(17,'なにぬねのはひふへほ'),
(31,'さしすせそたちつてと'),
(21,'あいうえおかきくけこ');

//Q4

UPDATE people SET department_id = '3' WHERE person_id = 21;

//Q5

SELECT name, age FROM people WHERE gender = 1 ORDER BY age DESC;


//Q6

SELECT
  `name`, `email`, `age`
・SELECTを用いてテーブル内にname,email,ageの3つのカラムだけを表示する。

FROM
  `people`
・FROMを用いてpeopleテーブルを指定する。

WHERE
  `department_id` = 1
・WHEREで指定したカラム名（department_id）の値1のレコードを取得。

ORDER BY
  `created_at`;
・カラム名（created_at）のレコードの順番を変更する。

//Q7

SELECT name FROM people WHERE age BETWEEN 20 AND 29 and gender = 2 or age BETWEEN 40 AND 49 and gender = 1;

//Q8

SELECT name, age, department_id FROM people WHERE department_id = 1 ORDER BY age;

//Q9

SELECT AVG(age) AS average_age FROM people WHERE department_id = 2 AND gender = 2;

//Q10

SELECT departments.name, people.name, reports.content FROM people INNER JOIN departments ON people.department_id = departments.department_id INNER JOIN reports ON people.person_id = reports.person_id;

//Q11

SELECT people.name FROM people LEFT OUTER JOIN reports ON people.person_id = reports.person_id WHERE reports.content IS NULL;
 


