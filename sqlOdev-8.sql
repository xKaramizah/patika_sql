-- test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    birthday DATE,
    email VARCHAR(50)
);
-- Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, birthday, email) values ('Karlotta', '2022-11-07', 'ktertre0@chronoengine.com');
insert into employee (name, birthday, email) values ('Shaw', '2022-09-14', 'strumper1@cpanel.net');
insert into employee (name, birthday, email) values ('Brigit', '2022-09-04', 'bgyles2@craigslist.org');
insert into employee (name, birthday, email) values ('Garwood', '2022-09-27', 'gfoston3@upenn.edu');
insert into employee (name, birthday, email) values ('Rasla', null, 'rsutty4@list-manage.com');
insert into employee (name, birthday, email) values ('Trescha', '2022-08-05', 'tthomlinson5@booking.com');
insert into employee (name, birthday, email) values ('Rockie', '2022-06-20', 'rregglar6@stumbleupon.com');
insert into employee (name, birthday, email) values ('Georges', '2022-09-03', 'gmeasures7@mit.edu');
insert into employee (name, birthday, email) values ('Garvy', '2023-02-05', 'gdudill8@examiner.com');
insert into employee (name, birthday, email) values ('Corbett', '2022-11-01', 'cbelchem9@patch.com');
insert into employee (name, birthday, email) values ('Dionis', '2022-08-20', 'dcaslanea@google.ru');
insert into employee (name, birthday, email) values ('Niles', '2023-02-18', 'nsemensb@mozilla.com');
insert into employee (name, birthday, email) values ('Boote', '2022-04-04', 'bcosstickc@techcrunch.com');
insert into employee (name, birthday, email) values ('Desiree', '2023-01-03', 'dsturgessd@sogou.com');
insert into employee (name, birthday, email) values ('Natasha', '2022-06-07', 'nbatecoke@mysql.com');
insert into employee (name, birthday, email) values ('Hilly', '2022-12-12', 'hrealfff@europa.eu');
insert into employee (name, birthday, email) values ('Hynda', '2022-05-23', 'hshackeltong@marriott.com');
insert into employee (name, birthday, email) values ('Reggie', '2022-12-23', 'rcrosseh@typepad.com');
insert into employee (name, birthday, email) values ('Lyell', '2022-10-14', 'lhaddingtoni@acquirethisname.com');
insert into employee (name, birthday, email) values ('Delores', '2022-07-08', 'drultonj@cnet.com');
insert into employee (name, birthday, email) values ('Milena', '2023-03-08', 'mmayallk@google.pl');
insert into employee (name, birthday, email) values ('Townie', '2022-03-29', 'tmcbeithl@sphinn.com');
insert into employee (name, birthday, email) values ('Bartram', '2022-04-03', 'byterm@ocn.ne.jp');
insert into employee (name, birthday, email) values ('Arther', '2023-01-05', 'alymbournen@printfriendly.com');
insert into employee (name, birthday, email) values ('Candra', '2023-02-24', 'cfrayso@google.com.hk');
insert into employee (name, birthday, email) values ('Skyler', null, 'sellershawp@arstechnica.com');
insert into employee (name, birthday, email) values ('Annecorinne', '2022-09-05', 'ajeramsq@geocities.jp');
insert into employee (name, birthday, email) values ('Denni', '2022-09-26', 'dkennellyr@opensource.org');
insert into employee (name, birthday, email) values ('Karlen', '2022-11-18', 'kkrabbes@livejournal.com');
insert into employee (name, birthday, email) values ('Natalya', '2022-09-26', 'nshellsheart@mediafire.com');
insert into employee (name, birthday, email) values ('Dalston', '2023-02-10', 'dtuckeru@dot.gov');
insert into employee (name, birthday, email) values ('Alfy', '2022-07-14', 'adumingosv@blog.com');
insert into employee (name, birthday, email) values ('Alie', null, 'ascarffew@fotki.com');
insert into employee (name, birthday, email) values ('Eugine', '2022-10-08', 'ewigzellx@spiegel.de');
insert into employee (name, birthday, email) values ('Mona', '2022-11-07', 'mrupperty@digg.com');
insert into employee (name, birthday, email) values ('Anne-marie', null, 'aquarriez@salon.com');
insert into employee (name, birthday, email) values ('Olivia', '2022-08-16', 'othorpe10@paypal.com');
insert into employee (name, birthday, email) values ('Leeanne', '2022-09-03', 'lhorsfield11@twitter.com');
insert into employee (name, birthday, email) values ('Alysia', '2023-01-26', 'akoch12@guardian.co.uk');
insert into employee (name, birthday, email) values ('Talbot', '2022-06-14', 'tforrington13@aol.com');
insert into employee (name, birthday, email) values ('Mallorie', '2022-07-21', 'mmangham14@boston.com');
insert into employee (name, birthday, email) values ('Elvyn', '2022-05-09', 'edavet15@php.net');
insert into employee (name, birthday, email) values ('Hakim', '2022-08-23', 'hjanczyk16@census.gov');
insert into employee (name, birthday, email) values ('Trista', null, 'tdiggle17@reference.com');
insert into employee (name, birthday, email) values ('Myrle', '2022-06-18', 'mgilmore18@apache.org');
insert into employee (name, birthday, email) values ('Kristofor', '2022-11-22', 'klindenfeld19@usa.gov');
insert into employee (name, birthday, email) values ('Geneva', '2022-11-10', 'ggallemore1a@shutterfly.com');
insert into employee (name, birthday, email) values ('Sophia', '2022-12-11', 'ssouthall1b@ft.com');
insert into employee (name, birthday, email) values ('Fawne', '2022-07-03', 'ffairholme1c@sogou.com');
insert into employee (name, birthday, email) values ('Tally', '2022-12-29', 'tmarks1d@cisco.com');

-- Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET name = 'UPDATED',
    email = 'updated@****'
WHERE name = 'Anne-marie'
RETURNING *;

UPDATE employee
SET birthday = '1147-1-2',
    name = 'UPDATED2'
WHERE id = 49
RETURNING *;

UPDATE employee
SET birthday = '1111-11-1',
    email = 'updated@****'
WHERE name = 'Arther'
RETURNING *;

UPDATE employee
SET  name = 'UPDATED 3'
WHERE id = 48
RETURNING *;

UPDATE employee
SET  name = 'UPDATED 4'
WHERE id = 47
RETURNING *;


-- Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

DELETE FROM employee
WHERE id = 22
RETURNING *;

DELETE FROM employee
WHERE name = 'Rockie'
RETURNING *;

DELETE FROM employee
WHERE name = 'Hilly'
RETURNING *;

DELETE FROM employee
WHERE name LIKE 'A%y'
RETURNING *;

DELETE FROM employee
WHERE email LIKE '%.ru'
RETURNING *;
