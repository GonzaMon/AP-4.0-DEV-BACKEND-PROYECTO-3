DROP DATABASE IF EXISTS trailerflix;
CREATE DATABASE trailerflix
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE trailerflix;

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
    `idCategoria` INT NOT NULL AUTO_INCREMENT,
    `deno` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`idCategoria`)
);

DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero` (
    `idGenero` INT NOT NULL AUTO_INCREMENT,
    `deno` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`idGenero`)
);

DROP TABLE IF EXISTS `actrices_y_actores`;
CREATE TABLE `actrices_y_actores` (
    `idActricesYactores` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`idActricesYactores`)
);

DROP TABLE IF EXISTS `catalogo`;
CREATE TABLE `catalogo` (
    `idCatalogo` INT NOT NULL AUTO_INCREMENT,
    `titulo` VARCHAR(100) NOT NULL,
    `resumen` TEXT,
    `trailer` VARCHAR(150),
    `poster` VARCHAR(100),
    `temporadas` INT DEFAULT '0',
    `idCategoria` INT NOT NULL,
    PRIMARY KEY (`idCatalogo`)
);

DROP TABLE IF EXISTS `catalogo_genero`;
CREATE TABLE `catalogo_genero` (
    `idCatalogoGenero` INT NOT NULL AUTO_INCREMENT,
    `idCatalogo` INT NOT NULL,
    `idGenero` INT NOT NULL,
    PRIMARY KEY (`idCatalogoGenero`)
);

DROP TABLE IF EXISTS `catalogo_reparto`;
CREATE TABLE `catalogo_reparto` (
    `idReparto` INT NOT NULL AUTO_INCREMENT,
    `idCatalogo` INT NOT NULL,
    `idActricesYactores` INT NOT NULL,
    PRIMARY KEY (`idReparto`)
);

ALTER TABLE `catalogo` ADD CONSTRAINT `catalogo_fk0` FOREIGN KEY (`idCategoria`) REFERENCES `categoria`(`idCategoria`);

ALTER TABLE `catalogo_genero` ADD CONSTRAINT `catalogo_genero_fk0` FOREIGN KEY (`idCatalogo`) REFERENCES `catalogo`(`idCatalogo`);

ALTER TABLE `catalogo_genero` ADD CONSTRAINT `catalogo_genero_fk1` FOREIGN KEY (`idGenero`) REFERENCES `genero`(`idGenero`);

ALTER TABLE `catalogo_reparto` ADD CONSTRAINT `catalogo_reparto_fk0` FOREIGN KEY (`idCatalogo`) REFERENCES `catalogo`(`idCatalogo`);

ALTER TABLE `catalogo_reparto` ADD CONSTRAINT `catalogo_reparto_fk1` FOREIGN KEY (`idActricesYactores`) REFERENCES `actrices_y_actores`(`idActricesYactores`);


/*INSERTS*/

/*CATEGORIA*/
INSERT INTO categoria (deno) VALUES('Película');
INSERT INTO categoria (deno) VALUES('Serie');
INSERT INTO categoria (deno) VALUES('Documental');
INSERT INTO categoria (deno) VALUES('MiniSerie');
INSERT INTO categoria (deno) VALUES('Cortometraje');

/*GENERO*/
INSERT INTO genero (deno) VALUES('Acción');
INSERT INTO genero (deno) VALUES('Aventura');
INSERT INTO genero (deno) VALUES('Ciencia Ficción');
INSERT INTO genero (deno) VALUES('Comedia');
INSERT INTO genero (deno) VALUES('Crimen');
INSERT INTO genero (deno) VALUES('Drama');
INSERT INTO genero (deno) VALUES('Familia');
INSERT INTO genero (deno) VALUES('Fantasía');
INSERT INTO genero (deno) VALUES('Ficción');
INSERT INTO genero (deno) VALUES('Hechos verídicos');
INSERT INTO genero (deno) VALUES('Historia');
INSERT INTO genero (deno) VALUES('Intriga');
INSERT INTO genero (deno) VALUES('Misterio');
INSERT INTO genero (deno) VALUES('Sci-Fi');
INSERT INTO genero (deno) VALUES('Sucesos');
INSERT INTO genero (deno) VALUES('Suspenso');
INSERT INTO genero (deno) VALUES('Tecnología');
INSERT INTO genero (deno) VALUES('Terror');
INSERT INTO genero (deno) VALUES('Western');

/*ACTRICES_Y_ACTORES*/
INSERT INTO actrices_y_actores (nombre) VALUES('Adam Nagaitis');
INSERT INTO actrices_y_actores (nombre) VALUES('Adeel Akhtar');
INSERT INTO actrices_y_actores (nombre) VALUES('Aidan Gallagher');
INSERT INTO actrices_y_actores (nombre) VALUES('Alana Cavanaugh');
INSERT INTO actrices_y_actores (nombre) VALUES('Alice Braga');
INSERT INTO actrices_y_actores (nombre) VALUES('Alicia Vikander');
INSERT INTO actrices_y_actores (nombre) VALUES('Amy Manson');
INSERT INTO actrices_y_actores (nombre) VALUES('Amybeth McNulty');
INSERT INTO actrices_y_actores (nombre) VALUES('Angus Macfadyen');
INSERT INTO actrices_y_actores (nombre) VALUES('Anya Taylor-Joy');
INSERT INTO actrices_y_actores (nombre) VALUES('Awkwafina');
INSERT INTO actrices_y_actores (nombre) VALUES('Benjamin Sokolow');
INSERT INTO actrices_y_actores (nombre) VALUES('Bill Hader');
INSERT INTO actrices_y_actores (nombre) VALUES('Bill Skarsgård');
INSERT INTO actrices_y_actores (nombre) VALUES('Brett Cullen');
INSERT INTO actrices_y_actores (nombre) VALUES('Bruce Harwood');
INSERT INTO actrices_y_actores (nombre) VALUES('Bryce Dallas Howard');
INSERT INTO actrices_y_actores (nombre) VALUES('Burn Gorman');
INSERT INTO actrices_y_actores (nombre) VALUES('Cailee Spaeny');
INSERT INTO actrices_y_actores (nombre) VALUES('Caitriona Balfe');
INSERT INTO actrices_y_actores (nombre) VALUES('Camila Mendes');
INSERT INTO actrices_y_actores (nombre) VALUES('Candice Patton');
INSERT INTO actrices_y_actores (nombre) VALUES('Carl Weathers');
INSERT INTO actrices_y_actores (nombre) VALUES('Carlos Valdes');
INSERT INTO actrices_y_actores (nombre) VALUES('Casey Cott');
INSERT INTO actrices_y_actores (nombre) VALUES('Chadwick Boseman');
INSERT INTO actrices_y_actores (nombre) VALUES('Charlie Tahan');
INSERT INTO actrices_y_actores (nombre) VALUES('Chloe Pirrie');
INSERT INTO actrices_y_actores (nombre) VALUES('Chris Bartlett');
INSERT INTO actrices_y_actores (nombre) VALUES('Chris Evans');
INSERT INTO actrices_y_actores (nombre) VALUES('Chris Hemsworth');
INSERT INTO actrices_y_actores (nombre) VALUES('Chris Messina');
INSERT INTO actrices_y_actores (nombre) VALUES('Chris Pratt');
INSERT INTO actrices_y_actores (nombre) VALUES('Christian Bale');
INSERT INTO actrices_y_actores (nombre) VALUES('Claire Fox');
INSERT INTO actrices_y_actores (nombre) VALUES('Claire Foy');
INSERT INTO actrices_y_actores (nombre) VALUES('Claire Selby');
INSERT INTO actrices_y_actores (nombre) VALUES('Colin Farrell');
INSERT INTO actrices_y_actores (nombre) VALUES('Common');
INSERT INTO actrices_y_actores (nombre) VALUES('Corey Johnson');
INSERT INTO actrices_y_actores (nombre) VALUES('Corey Stoll');
INSERT INTO actrices_y_actores (nombre) VALUES('Corrine Koslo');
INSERT INTO actrices_y_actores (nombre) VALUES('Courteney Cox');
INSERT INTO actrices_y_actores (nombre) VALUES('Dalila Bela');
INSERT INTO actrices_y_actores (nombre) VALUES('Danai Gurira');
INSERT INTO actrices_y_actores (nombre) VALUES('Daniel Kaluuya');
INSERT INTO actrices_y_actores (nombre) VALUES('Danielle Panabaker');
INSERT INTO actrices_y_actores (nombre) VALUES('Dash Mihok');
INSERT INTO actrices_y_actores (nombre) VALUES('David Castañeda');
INSERT INTO actrices_y_actores (nombre) VALUES('David Duchovny');
INSERT INTO actrices_y_actores (nombre) VALUES('David Harbour');
INSERT INTO actrices_y_actores (nombre) VALUES('David Schwimmer');
INSERT INTO actrices_y_actores (nombre) VALUES('Domhnall Gleeson');
INSERT INTO actrices_y_actores (nombre) VALUES('Dominic Mafham');
INSERT INTO actrices_y_actores (nombre) VALUES('Dwayne Johnson');
INSERT INTO actrices_y_actores (nombre) VALUES('Ed Harris');
INSERT INTO actrices_y_actores (nombre) VALUES('Elliot Page');
INSERT INTO actrices_y_actores (nombre) VALUES('Emilia Clarke');
INSERT INTO actrices_y_actores (nombre) VALUES('Emily Bayiokos');
INSERT INTO actrices_y_actores (nombre) VALUES('Emily Watson');
INSERT INTO actrices_y_actores (nombre) VALUES('Emma Thompson');
INSERT INTO actrices_y_actores (nombre) VALUES('Emmy Raver-Lampman');
INSERT INTO actrices_y_actores (nombre) VALUES('Enver Gjokaj');
INSERT INTO actrices_y_actores (nombre) VALUES('Evan Rachel Wood');
INSERT INTO actrices_y_actores (nombre) VALUES('Ewan McGregor');
INSERT INTO actrices_y_actores (nombre) VALUES('Florence Pugh');
INSERT INTO actrices_y_actores (nombre) VALUES('Frances Conroy');
INSERT INTO actrices_y_actores (nombre) VALUES('Gana Bayarsaikhan');
INSERT INTO actrices_y_actores (nombre) VALUES('Geena Davis');
INSERT INTO actrices_y_actores (nombre) VALUES('Génesis Rodríguez');
INSERT INTO actrices_y_actores (nombre) VALUES('Geraldine James');
INSERT INTO actrices_y_actores (nombre) VALUES('Giancarlo Esposito');
INSERT INTO actrices_y_actores (nombre) VALUES('Gillian Anderson');
INSERT INTO actrices_y_actores (nombre) VALUES('Grant Gustin');
INSERT INTO actrices_y_actores (nombre) VALUES('Gwyneth Paltrow');
INSERT INTO actrices_y_actores (nombre) VALUES('Harry Melling');
INSERT INTO actrices_y_actores (nombre) VALUES('Helena Bonham Carter');
INSERT INTO actrices_y_actores (nombre) VALUES('Henry Cavill');
INSERT INTO actrices_y_actores (nombre) VALUES('Ioan Gruffudd');
INSERT INTO actrices_y_actores (nombre) VALUES('Irrfan Khan');
INSERT INTO actrices_y_actores (nombre) VALUES('Isaiah Mustafa');
INSERT INTO actrices_y_actores (nombre) VALUES('Jack Black');
INSERT INTO actrices_y_actores (nombre) VALUES('James McAvoy');
INSERT INTO actrices_y_actores (nombre) VALUES('James Weber Brown');
INSERT INTO actrices_y_actores (nombre) VALUES('Janina Elkin');
INSERT INTO actrices_y_actores (nombre) VALUES('Jared Harris');
INSERT INTO actrices_y_actores (nombre) VALUES('Jason Clarke');
INSERT INTO actrices_y_actores (nombre) VALUES('Jay Ryan');
INSERT INTO actrices_y_actores (nombre) VALUES('Jeff Daniels');
INSERT INTO actrices_y_actores (nombre) VALUES('Jeffrey Wright');
INSERT INTO actrices_y_actores (nombre) VALUES('Jennifer Aniston');
INSERT INTO actrices_y_actores (nombre) VALUES('Jennifer Ehle');
INSERT INTO actrices_y_actores (nombre) VALUES('Jeremy Renner');
INSERT INTO actrices_y_actores (nombre) VALUES('Jesse L. Martin');
INSERT INTO actrices_y_actores (nombre) VALUES('Jessica Chastain');
INSERT INTO actrices_y_actores (nombre) VALUES('Jessie Buckley');
INSERT INTO actrices_y_actores (nombre) VALUES('Jim Parsons');
INSERT INTO actrices_y_actores (nombre) VALUES('Jing Tian');
INSERT INTO actrices_y_actores (nombre) VALUES('Joaquin Phoenix');
INSERT INTO actrices_y_actores (nombre) VALUES('John Boyega');
INSERT INTO actrices_y_actores (nombre) VALUES('John Malkovich');
INSERT INTO actrices_y_actores (nombre) VALUES('Johnny Galecki');
INSERT INTO actrices_y_actores (nombre) VALUES('Jon Bernthal');
INSERT INTO actrices_y_actores (nombre) VALUES('Jorja Fox');
INSERT INTO actrices_y_actores (nombre) VALUES('Josh Lucas');
INSERT INTO actrices_y_actores (nombre) VALUES('Jude Law');
INSERT INTO actrices_y_actores (nombre) VALUES('Judy Greer');
INSERT INTO actrices_y_actores (nombre) VALUES('Jurnee Smollett');
INSERT INTO actrices_y_actores (nombre) VALUES('Kaley Cuoco');
INSERT INTO actrices_y_actores (nombre) VALUES('Karen Gillan');
INSERT INTO actrices_y_actores (nombre) VALUES('Kate Mara');
INSERT INTO actrices_y_actores (nombre) VALUES('Kate Walsh');
INSERT INTO actrices_y_actores (nombre) VALUES('Kate Winslet');
INSERT INTO actrices_y_actores (nombre) VALUES('Kerry Bishé');
INSERT INTO actrices_y_actores (nombre) VALUES('Kevin Hart');
INSERT INTO actrices_y_actores (nombre) VALUES('Kit Harington');
INSERT INTO actrices_y_actores (nombre) VALUES('Kristen Wiig');
INSERT INTO actrices_y_actores (nombre) VALUES('Kunal Nayyar');
INSERT INTO actrices_y_actores (nombre) VALUES('Kyle Chandler');
INSERT INTO actrices_y_actores (nombre) VALUES('Laurence Fishburne');
INSERT INTO actrices_y_actores (nombre) VALUES('Lee Pace');
INSERT INTO actrices_y_actores (nombre) VALUES('Lena Headey');
INSERT INTO actrices_y_actores (nombre) VALUES('Lia Williams');
INSERT INTO actrices_y_actores (nombre) VALUES('Lili Reinhart');
INSERT INTO actrices_y_actores (nombre) VALUES('Lisa Kudrow');
INSERT INTO actrices_y_actores (nombre) VALUES('Lorina Kamburova');
INSERT INTO actrices_y_actores (nombre) VALUES('Louis Partridge');
INSERT INTO actrices_y_actores (nombre) VALUES('Lucas Jade Zumann');
INSERT INTO actrices_y_actores (nombre) VALUES('Luke Allen-Gale');
INSERT INTO actrices_y_actores (nombre) VALUES('Luke Hemsworth');
INSERT INTO actrices_y_actores (nombre) VALUES("Lupita Nyong'o");
INSERT INTO actrices_y_actores (nombre) VALUES('Mackenzie Davis');
INSERT INTO actrices_y_actores (nombre) VALUES('Mädchen Amick');
INSERT INTO actrices_y_actores (nombre) VALUES('Madelaine Petsch');
INSERT INTO actrices_y_actores (nombre) VALUES('Margot Robbie');
INSERT INTO actrices_y_actores (nombre) VALUES('Marion Cotillard');
INSERT INTO actrices_y_actores (nombre) VALUES('Marisol Nichols');
INSERT INTO actrices_y_actores (nombre) VALUES('Mark Ruffalo');
INSERT INTO actrices_y_actores (nombre) VALUES('Martin Freeman');
INSERT INTO actrices_y_actores (nombre) VALUES('Mary Elizabeth Winstead');
INSERT INTO actrices_y_actores (nombre) VALUES('Matt Damon');
INSERT INTO actrices_y_actores (nombre) VALUES('Matt LeBlanc');
INSERT INTO actrices_y_actores (nombre) VALUES('Matt Smith');
INSERT INTO actrices_y_actores (nombre) VALUES('Matthew Perry');
INSERT INTO actrices_y_actores (nombre) VALUES('Mayim Bialik');
INSERT INTO actrices_y_actores (nombre) VALUES('Melissa Rauch');
INSERT INTO actrices_y_actores (nombre) VALUES('Michael B. Jordan');
INSERT INTO actrices_y_actores (nombre) VALUES('Michael Peña');
INSERT INTO actrices_y_actores (nombre) VALUES('Millie Bobby Brown');
INSERT INTO actrices_y_actores (nombre) VALUES('Miranda Cosgrove');
INSERT INTO actrices_y_actores (nombre) VALUES('Misty Rosas');
INSERT INTO actrices_y_actores (nombre) VALUES('Mitch Pileggi');
INSERT INTO actrices_y_actores (nombre) VALUES('Moses Ingram');
INSERT INTO actrices_y_actores (nombre) VALUES('Nick Jonas');
INSERT INTO actrices_y_actores (nombre) VALUES('Nick Robinson');
INSERT INTO actrices_y_actores (nombre) VALUES('Nikolaj Coster-Waldau');
INSERT INTO actrices_y_actores (nombre) VALUES('Nina Bergman');
INSERT INTO actrices_y_actores (nombre) VALUES('Noah Jupe');
INSERT INTO actrices_y_actores (nombre) VALUES('O.T. Fagbenle');
INSERT INTO actrices_y_actores (nombre) VALUES('Olivia Colman');
INSERT INTO actrices_y_actores (nombre) VALUES('Omar Epps');
INSERT INTO actrices_y_actores (nombre) VALUES('Omar Sy');
INSERT INTO actrices_y_actores (nombre) VALUES('Oscar Isaac');
INSERT INTO actrices_y_actores (nombre) VALUES('Patrick Fugit');
INSERT INTO actrices_y_actores (nombre) VALUES('Paul Ritter');
INSERT INTO actrices_y_actores (nombre) VALUES('Pedro Pascal');
INSERT INTO actrices_y_actores (nombre) VALUES('Peter Dinklage');
INSERT INTO actrices_y_actores (nombre) VALUES('Peter Ferdinando');
INSERT INTO actrices_y_actores (nombre) VALUES('R. H. Thomson');
INSERT INTO actrices_y_actores (nombre) VALUES('Rachel Weisz');
INSERT INTO actrices_y_actores (nombre) VALUES('Ray Winstone');
INSERT INTO actrices_y_actores (nombre) VALUES('Rhona Mitra');
INSERT INTO actrices_y_actores (nombre) VALUES('Rinko Kikuchi');
INSERT INTO actrices_y_actores (nombre) VALUES('Rio Hackford');
INSERT INTO actrices_y_actores (nombre) VALUES('Robert De Niro');
INSERT INTO actrices_y_actores (nombre) VALUES('Robert Downey Jr.');
INSERT INTO actrices_y_actores (nombre) VALUES('Robert Patrick');
INSERT INTO actrices_y_actores (nombre) VALUES('Robert Sheehan');
INSERT INTO actrices_y_actores (nombre) VALUES('Rosie Perez');
INSERT INTO actrices_y_actores (nombre) VALUES('Ryan Gosling');
INSERT INTO actrices_y_actores (nombre) VALUES('Salli Richardson-Whitfield');
INSERT INTO actrices_y_actores (nombre) VALUES('Sam Claflin');
INSERT INTO actrices_y_actores (nombre) VALUES('Scarlett Johansson');
INSERT INTO actrices_y_actores (nombre) VALUES('Scoot McNairy');
INSERT INTO actrices_y_actores (nombre) VALUES('Scott Eastwood');
INSERT INTO actrices_y_actores (nombre) VALUES('Sean Bean');
INSERT INTO actrices_y_actores (nombre) VALUES('Shea Whigham');
INSERT INTO actrices_y_actores (nombre) VALUES('Simon Helberg');
INSERT INTO actrices_y_actores (nombre) VALUES('Sonoya Mizuno');
INSERT INTO actrices_y_actores (nombre) VALUES('Sophie Turner');
INSERT INTO actrices_y_actores (nombre) VALUES('Stacy Martin');
INSERT INTO actrices_y_actores (nombre) VALUES('Stellan Skarsgård');
INSERT INTO actrices_y_actores (nombre) VALUES('Tessa Thompson');
INSERT INTO actrices_y_actores (nombre) VALUES('Thandie Newton');
INSERT INTO actrices_y_actores (nombre) VALUES('Theo James');
INSERT INTO actrices_y_actores (nombre) VALUES('Thomas Brodie-Sangster');
INSERT INTO actrices_y_actores (nombre) VALUES('Tobias Menzies');
INSERT INTO actrices_y_actores (nombre) VALUES('Toby Huss');
INSERT INTO actrices_y_actores (nombre) VALUES('Toby Jones');
INSERT INTO actrices_y_actores (nombre) VALUES('Tom Braidwood');
INSERT INTO actrices_y_actores (nombre) VALUES('Tom Cavanagh');
INSERT INTO actrices_y_actores (nombre) VALUES('Tom Hopper');
INSERT INTO actrices_y_actores (nombre) VALUES('Vanesa Kirby');
INSERT INTO actrices_y_actores (nombre) VALUES("Vincent D'Onofrio");
INSERT INTO actrices_y_actores (nombre) VALUES('Vincent Piazza');
INSERT INTO actrices_y_actores (nombre) VALUES('Will Smith');
INSERT INTO actrices_y_actores (nombre) VALUES('William Hurt');
INSERT INTO actrices_y_actores (nombre) VALUES('Willow Smith');
INSERT INTO actrices_y_actores (nombre) VALUES('Zazie Beetz');

/*CATALOGO*/
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('The Crown','Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.',NULL,'/posters/1.jpg',4,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Riverdale','El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.',NULL,'/posters/2.jpg',5,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('The Mandalorian','Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.','https://www.youtube.com/embed/aOC8E8z_ifw','/posters/3.jpg',2,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('The Umbrella Academy','La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.',NULL,'/posters/4.jpg',1,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Gambito de Dama','En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.',NULL,'/posters/5.jpg',1,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Enola Holmes','La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.',NULL,'/posters/6.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Guasón','Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.','https://www.youtube.com/embed/zAGVQLHvwOY','/posters/7.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Avengers: End Game','Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.',NULL,'/posters/8.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Juego de tronos','En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.',NULL,'/posters/9.jpg',8,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('The Flash','Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.',NULL,'/posters/10.jpg',6,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('The Big Bang Theory','Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.','https://www.youtube.com/embed/WBb3fojgW0Q','/posters/11.jpg',12,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Friends',"'Friends' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.",NULL,'/posters/12.jpg',10,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES("Anne with an 'E'",'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.',NULL,'/posters/13.jpg',2,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES("Expedientes Secretos 'X'","Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de 'siniestro'",'https://www.youtube.com/embed/KKziOmsJxzE','/posters/14.jpg',11,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Chernobyl','Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.','https://www.youtube.com/embed/s9APLXM9Ei8','/posters/15.jpg',1,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Westworld','Westworld es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.','https://www.youtube.com/embed/qLFBcdd6Qw0','/posters/16.jpg',3,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Halt and Catch Fire','Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey.
 Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).','https://www.youtube.com/embed/pWrioRji60A','/posters/17.jpg',4,2);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Ava','Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.','','/posters/18.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Aves de presa y la fantabulosa emancipación de una Harley Quinn','Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.','','/posters/19.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Archivo','2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.','https://www.youtube.com/embed/VHSoCnDioAo','/posters/20.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Jumanji - The next level','Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?','https://www.youtube.com/embed/rBxcF-r9Ibs','/posters/21.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('3022','La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.','https://www.youtube.com/embed/AGQ7OkmIx4Q','/posters/22.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('IT - Capítulo 2',"En este segundo capitulo Han pasado 27 años desde que el 'Club de los Perdedores', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.",'https://www.youtube.com/embed/hZeFeYSmBcg','/posters/23.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Pantera Negra','T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.','https://www.youtube.com/embed/BE6inv8Xh4A','/posters/24.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Contra lo imposible (Ford versus Ferrari)','Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.','https://www.youtube.com/embed/SOVb0-2g1Q0','/posters/25.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Centígrados','Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.','','/posters/26.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('DOOM: Aniquilación','Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.','https://www.youtube.com/embed/nat3u3gAVLE','/posters/27.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Contagio','De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.','https://www.youtube.com/embed/4sYSyuuLk5g','/posters/28.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Viuda Negra','Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.','https://www.youtube.com/embed/BIn8iANwEog','/posters/29.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('The Martian','Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.','https://www.youtube.com/embed/XvB58bCVfng','/posters/30.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Ex-Machina','Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.','https://www.youtube.com/embed/XRYL5spvEcI','/posters/31.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Jurassic World','Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.','','/posters/32.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Soy leyenda','Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.','https://www.youtube.com/embed/dtKMEAXyPkg','/posters/33.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('El primer hombre en la luna','Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.','','/posters/34.jpg',NULL,1);
INSERT INTO catalogo (titulo,resumen,trailer,poster,temporadas,idCategoria) VALUES('Titanes del pacífico - La insurrección','Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.','','/posters/35.jpg',NULL,1);

/*CATALOGO_REPARTO*/
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(1,35);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(1,160);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(1,143);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(1,197);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(1,203);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(1,77);	
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(2,124);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(2,25);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(2,21);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(2,137);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(2,134);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(2,133);	
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(3,166);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(3,23);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(3,151);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(3,29);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(3,174);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(3,72);	
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(4,202);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(4,49);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(4,62);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(4,178);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(4,3);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(4,57);	
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(5,10);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(5,196);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(5,76);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(5,153);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(5,28);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(5,85);	
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(6,149);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(6,78);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(6,182);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(6,77);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(6,127);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(6,2);	
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(7,99);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(7,175);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(7,209);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(7,67);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(7,15);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(7,187);	
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(8,176);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(8,30);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(8,138);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(8,31);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(8,183);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(8,93);	
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(9,58);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(9,122);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(9,190);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(9,116);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(9,167);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(9,156);	
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(10,74);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(10,24);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(10,47);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(10,22);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(10,94);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(10,201);	
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(11,97);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(11,102);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(11,109);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(11,188);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(11,118);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(11,146);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(11,145);
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(12,91);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(12,43);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(12,125);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(12,52);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(12,144);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(12,142);	                             
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(13,8);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(13,71);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(13,169);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(13,42);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(13,44);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(13,128);	                             
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(14,73);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(14,50);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(14,152);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(14,177);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(14,200);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(14,16);	                                 
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(15,86);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(15,192);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(15,60);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(15,165);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(15,96);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(15,1);	                                 
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(16,64);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(16,194);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(16,90);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(16,193);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(16,56);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(16,130);	                             
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(17,121);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(17,184);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(17,132);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(17,114);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(17,198);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(17,4);	                                 
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(18,95);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(18,101);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(18,38);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(18,39);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(18,69);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(18,79);	                                 
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(19,135);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(19,65);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(19,140);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(19,108);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(19,179);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(19,32);	                                 
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(20,191);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(20,172);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(20,195);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(20,168);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(20,123);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(20,199);	                             
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(21,55);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(21,115);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(21,82);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(21,110);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(21,11);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(21,154);	                             
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(22,150);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(22,112);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(22,161);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(22,9);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(22,104);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(22,63);	                                 
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(23,14);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(23,95);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(23,13);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(23,83);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(23,81);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(23,88);	                                 
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(24,26);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(24,147);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(24,131);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(24,45);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(24,139);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(24,46);	                                 
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(25,34);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(25,141);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(25,20);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(25,105);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(25,158);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(25,103);	                             
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(26,70);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(26,205);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(26,12);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(26,59);			                                                                                                                
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(27,7);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(27,129);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(27,157);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(27,54);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(27,84);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(27,126);	                             
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(28,136);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(28,141);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(28,120);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(28,106);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(28,113);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(28,92);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(28,75);
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(29,183);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(29,66);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(29,51);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(29,159);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(29,170);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(29,207);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(29,171);
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(30,141);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(30,95);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(30,117);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(30,89);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(30,148);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(30,186);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(30,111);
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(31,6);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(31,53);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(31,163);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(31,189);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(31,40);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(31,37);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(31,68);
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(32,17);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(32,33);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(32,80);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(32,204);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(32,162);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(32,155);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(32,107);
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(33,206);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(33,5);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(33,27);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(33,48);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(33,181);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(33,208);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(33,61);
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(34,180);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(34,36);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(34,87);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(34,119);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(34,41);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(34,164);	
INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(35,100);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(35,185);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(35,19);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(35,98);		INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(35,173);	INSERT INTO catalogo_reparto (idCatalogo, idActricesYactores) VALUES(35,18);	

/*CATALGO_GENERO*/
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(1,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(1,10	);	
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(2,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(2,13	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(2,9);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(3,3	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(3,8	);	
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(4,3	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(4,8	);	
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(5,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(5,9	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(5,15);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(6,9	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(6,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(6,13);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(7,5	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(7,16	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(7,6);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(8,2	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(8,14	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(8,1);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(9,2	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(9,8	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(9,6);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(10,3	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(10,8	);	
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(11,4	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(11,8	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(11,9);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(12,4	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(12,7	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(12,6);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(13,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(13,7	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(13,19);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(14,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(14,3	);	
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(15,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(15,10	);	
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(16,19	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(16,3	);	
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(17,9	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(17,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(17,17);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(18,1	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(18,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(18,16);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(19,1	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(19,9	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(19,4);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(20,1	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(20,14	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(20,16);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(21,4	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(21,9	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(21,2);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(22,3	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(22,16	);	
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(23,18	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(23,16	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(23,8);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(24,1	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(24,2	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(24,8);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(25,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(25,11	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(25,2);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(26,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(26,16	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(26,12);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(27,1	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(27,14	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(27,18);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(28,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(28,16	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(28,9);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(29,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(29,1	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(29,2);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(30,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(30,14	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(30,2);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(31,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(31,14	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(31,16);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(32,16	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(32,2	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(32,9);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(33,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(33,18	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(33,9);
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(34,6	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(34,10	);	
INSERT INTO catalogo_genero (idCatalogo, idGenero) VALUES(35,1	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(35,8	);	INSERT INTO catalogo_genero (idCatalogo, idGenero)  VALUES(35,14);

DROP VIEW IF EXISTS v_trailerflix;
CREATE VIEW v_trailerflix AS 
	SELECT 
    c.idCatalogo AS id,
    c.poster,
    c.titulo,
    ct.deno AS categoria,
    (SELECT 
            GROUP_CONCAT(g.deno	SEPARATOR ', ')
        FROM	catalogo_genero cg
		INNER JOIN	genero g 
        ON cg.idCatalogo = c.idCatalogo
		AND cg.idGenero = g.idGenero) AS genero,
    c.resumen,
    CASE
        WHEN temporadas IS NULL THEN 'N/A'
        ELSE temporadas
    END AS temporadas,
    (SELECT
			GROUP_CONCAT(a.nombre SEPARATOR ', ')
	 FROM catalogo_reparto cr
     INNER JOIN actrices_y_actores a
     ON cr.idCatalogo = c.idCatalogo
     AND cr.idActricesYactores = a.idActricesYactores	
    ) AS reparto,
    c.trailer
FROM    catalogo c
INNER JOIN	categoria ct 
ON ct.idCategoria = c.idCategoria
ORDER BY c.idCatalogo
;
