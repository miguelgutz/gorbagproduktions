drop table if exists disco;
drop table if exists distribuidor;

create table  disco (
id int primary key auto_increment,
nombre  varchar(200) not null,
descripcion varchar(3000),
imagen_url varchar(500),
fecha varchar(200),
precio varchar(200)
);
    
insert into disco
(id, nombre,    descripcion,    imagen_url, fecha,  precio)values
(1, 'Death',   'The Sound of Perseverance is the seventh and final studio album by American death metal band Death, released on August 31, 1998, by Nuclear Blast.',   'https://img.discogs.com/0oyktXy57uw3qiajIxlUrO1Il_k=/fit-in/600x605/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-9365874-1485528282-8443.jpeg.jpg', '2000',   '500'),
(2, 'Schammasch', 'Triangle is a sprawling, grandiose effort that bridges progressive black metal, progressive rock, post-rock, and ambient music, while hinting towards a deeply personal struggle.',  'https://www.angrymetalguy.com/wp-content/uploads/2016/12/Schammasch-Triangle-500x500.jpg', '2001', '600'),
(3, 'Summoning',    'Dol Guldur is the third studio album by the Austrian black metal band Summoning. It was released in 1996, through Napalm Records.', 'https://img.discogs.com/NEqB2cBomxFERYi9ECMtvbooPBQ=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-383627-1127036815.jpeg.jpg', '2001', '600'),
(4, 'Abigor',    'Time Is the Sulphur in the Veins of the Saint – An Excursion on Satans Fragmenting Principle is the eighth studio album by Austrian black metal band Abigor. It was released on January 18, 2010.', 'https://upload.wikimedia.org/wikipedia/en/d/dd/Time_Is_the_Sulphur_in_the_Veins_of_the_Saint.jpg', '2002', '700'),
(5, 'Satyricon',    'Dark Medieval Times is the debut studio album by Norwegian black metal band Satyricon. It was recorded in August and September 1993[2] and released in 1994 through Moonfog Productions.', 'https://img.discogs.com/hM5AzXJUqcJbnCpd6BCE-qpPTxY=/fit-in/600x450/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-2205882-1461871239-2148.jpeg.jpg', '2002', '600'),
(6, 'Immortal',    'At the Heart of Winter is the fifth studio album by Norwegian black metal band Immortal. It was released on February 22, 1999 through Osmose Productions.', 'https://img.discogs.com/MPN7M-PF9GVYjHKu2kHHCulse9o=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-2501981-1322370219.jpeg.jpg', '2003', '800'),
(7, 'The Ruins of Beverast',    'Exuviae: shedding the skin. The leftover exoskeleton. Alexander von Meilenwald has stripped the project bare, exposed it to new musical vistas, and transformed it into a frenetic shamanistic beast.', 'https://img.discogs.com/pHTvkc5BOG_LzwRv7_3FzRIfzrc=/fit-in/600x450/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-11102181-1509891296-6985.jpeg.jpg', '2010', '900'),
(8, 'Dissection',    'Storm of the Lights Bane is the second full-length album by the Swedish black metal band Dissection. The album was released on 17 November 1995 by Nuclear Blast Records.', 'https://img.discogs.com/wSYAXe-emTnxUkhgQ_tGASEYlRc=/fit-in/600x594/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-493042-1551875358-5379.jpeg.jpg', '1999', '600');

create table distribuidor (
id int primary key auto_increment,
nombre varchar(200) not null,
sitio_web varchar(500)
);

insert into distribuidor
(id,   nombre,  sitio_web)values
(1, 'Relapse Records',   'relapse.com'),
(2, 'Prosthetic Records',   null),
(3, 'Napalm Records', 'napalm.com'),
(4, 'Moonfog Productions',    'moonfog.com'),
(5, 'Osmose Productions', 'osmose.com'),
(6, 'Van Records',    'van.com'),
(7, 'Nuclear Blast Records',  'nuclearblast.com');

alter table disco
add column distribuidor_id int,
add foreign key (distribuidor_id) references distribuidor (id);

update disco set distribuidor_id = 1 where id in (1);
update disco set distribuidor_id = 2 where id in (2);
update disco set distribuidor_id = 3 where id in (3);
update disco set distribuidor_id = 3 where id in (4);
update disco set distribuidor_id = 4 where id in (5);
update disco set distribuidor_id = 5 where id in (6);
update disco set distribuidor_id = 6 where id in (7);
update disco set distribuidor_id = 7 where id in (8);

alter table disco
modify distribuidor_id int not null;