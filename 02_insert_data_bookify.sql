-- ================================================================================

-- AUTOR:    		Sánchez Lugo Eduardo Alejandro.
-- FECHA:			23/O5/2026
-- DB: 		 		Librería.
-- MOTOR:           POSTGRESQL.
-- DESCRIPCIÓN:  	Script para insertar datos a la base de datos de la libreria.
-- VERSIÓN          1.0

-- ================================================================================
-- HISTORIAL:
-- 23/05/2026     Versión inicial.

-- ================================================================================


BEGIN;


SET search_path TO bookify;  

-- ============================================================
-- CATEGORIAS (60 registros)
-- ============================================================
INSERT INTO categorias (nombre, descripcion, activa) VALUES
('Ficción Literaria', 'Obras de ficción con valor literario reconocido', TRUE),
('Ciencia Ficción', 'Historias basadas en avances científicos y tecnológicos', TRUE),
('Fantasía', 'Mundos imaginarios con elementos mágicos y sobrenaturales', TRUE),
('Terror', 'Obras diseñadas para provocar miedo y suspenso', TRUE),
('Misterio', 'Historias centradas en resolver crímenes o enigmas', TRUE),
('Thriller', 'Novelas de suspense y acción trepidante', TRUE),
('Romance', 'Historias centradas en relaciones amorosas', TRUE),
('Novela Histórica', 'Ficción ambientada en épocas pasadas', TRUE),
('Aventuras', 'Relatos de viajes y hazañas emocionantes', TRUE),
('Drama', 'Obras que exploran conflictos emocionales profundos', TRUE),
('Humor', 'Obras diseñadas para entretener y hacer reír', TRUE),
('Poesía', 'Composiciones en verso', TRUE),
('Ensayo', 'Textos de reflexión y análisis sobre diversos temas', TRUE),
('Biografía', 'Relatos de vidas de personas reales', TRUE),
('Autobiografía', 'Relatos escritos por el propio protagonista', TRUE),
('Historia', 'Obras sobre eventos históricos reales', TRUE),
('Filosofía', 'Textos de reflexión filosófica', TRUE),
('Psicología', 'Obras sobre el comportamiento y la mente humana', TRUE),
('Autoayuda', 'Guías para el desarrollo personal', TRUE),
('Negocios', 'Libros sobre gestión empresarial y finanzas', TRUE),
('Economía', 'Análisis económicos y financieros', TRUE),
('Política', 'Obras sobre sistemas políticos y gobierno', TRUE),
('Sociología', 'Estudios sobre la sociedad y sus dinámicas', TRUE),
('Ciencia', 'Divulgación científica para público general', TRUE),
('Tecnología', 'Obras sobre avances tecnológicos', TRUE),
('Informática', 'Libros sobre programación y computación', TRUE),
('Matemáticas', 'Textos matemáticos y de divulgación', TRUE),
('Física', 'Obras sobre física y el universo', TRUE),
('Química', 'Libros sobre química y sus aplicaciones', TRUE),
('Biología', 'Textos sobre vida y seres vivos', TRUE),
('Medicina', 'Obras médicas y de salud', TRUE),
('Cocina', 'Recetarios y gastronomía', TRUE),
('Viajes', 'Guías y relatos de viajes', TRUE),
('Deportes', 'Libros sobre deportes y actividad física', TRUE),
('Arte', 'Obras sobre pintura, escultura y expresión artística', TRUE),
('Música', 'Libros sobre teoría musical e historia', TRUE),
('Cine', 'Análisis cinematográfico y guiones', TRUE),
('Teatro', 'Obras dramáticas y estudios teatrales', TRUE),
('Fotografía', 'Técnicas y arte fotográfico', TRUE),
('Arquitectura', 'Diseño y construcción de edificios', TRUE),
('Diseño', 'Diseño gráfico, industrial y de interiores', TRUE),
('Moda', 'Historia y tendencias de la moda', TRUE),
('Jardinería', 'Cultivo de plantas y diseño de jardines', TRUE),
('Mascotas', 'Cuidado y entrenamiento de animales', TRUE),
('Infantil', 'Libros para niños de 0 a 8 años', TRUE),
('Juvenil', 'Literatura para adolescentes', TRUE),
('Young Adult', 'Novelas para jóvenes adultos', TRUE),
('Cómic', 'Historietas y novelas gráficas', TRUE),
('Manga', 'Cómic de origen japonés', TRUE),
('Novela Negra', 'Crimen y detectives', TRUE),
('Distopía', 'Sociedades futuras opresivas', TRUE),
('Realismo Mágico', 'Elementos mágicos en contextos realistas', TRUE),
('Clásicos', 'Obras literarias fundamentales', TRUE),
('Contemporánea', 'Ficción actual', TRUE),
('Erótica', 'Literatura con contenido adulto', FALSE),
('Religión', 'Textos religiosos y espirituales', TRUE),
('Espiritualidad', 'Desarrollo espiritual no religioso', TRUE),
('Mitología', 'Mitos y leyendas de diversas culturas', TRUE),
('Lingüística', 'Estudio del lenguaje', TRUE),
('Derecho', 'Textos jurídicos y legales', TRUE);

-- ============================================================
-- AUTORES (80 registros)
-- ============================================================
INSERT INTO autores (nombre, apellidos, nacionalidad, fecha_nacimiento, biografia) VALUES
('Gabriel', 'García Márquez', 'Colombiana', '1927-03-06', 'Premio Nobel de Literatura 1982, máximo exponente del realismo mágico'),
('Isabel', 'Allende', 'Chilena', '1942-08-02', 'Una de las escritoras más leídas en lengua española'),
('Mario', 'Vargas Llosa', 'Peruana', '1936-03-28', 'Premio Nobel de Literatura 2010'),
('Jorge Luis', 'Borges', 'Argentina', '1899-08-24', 'Maestro del cuento corto y la literatura fantástica'),
('Julio', 'Cortázar', 'Argentina', '1914-08-26', 'Renovador de la narrativa latinoamericana'),
('Carlos', 'Ruiz Zafón', 'Española', '1964-09-25', 'Autor de La Sombra del Viento'),
('Arturo', 'Pérez-Reverte', 'Española', '1951-11-25', 'Periodista y novelista, miembro de la RAE'),
('Rosa', 'Montero', 'Española', '1951-01-03', 'Periodista y escritora española'),
('Almudena', 'Grandes', 'Española', '1960-05-07', 'Novelista española contemporánea'),
('Javier', 'Marías', 'Española', '1951-09-20', 'Escritor y traductor español'),
('Eduardo', 'Mendoza', 'Española', '1943-01-11', 'Novelista barcelonés, Premio Cervantes 2016'),
('Antonio', 'Muñoz Molina', 'Española', '1956-01-10', 'Miembro de la RAE, Premio Príncipe de Asturias'),
('Juan', 'Rulfo', 'Mexicana', '1917-05-16', 'Autor de Pedro Páramo'),
('Octavio', 'Paz', 'Mexicana', '1914-03-31', 'Premio Nobel de Literatura 1990'),
('Pablo', 'Neruda', 'Chilena', '1904-07-12', 'Premio Nobel de Literatura 1971'),
('Miguel', 'de Cervantes', 'Española', '1547-09-29', 'Autor de Don Quijote de la Mancha'),
('Federico', 'García Lorca', 'Española', '1898-06-05', 'Poeta y dramaturgo de la Generación del 27'),
('Miguel', 'de Unamuno', 'Española', '1864-09-29', 'Filósofo y escritor de la Generación del 98'),
('Camilo José', 'Cela', 'Española', '1916-05-11', 'Premio Nobel de Literatura 1989'),
('Ana María', 'Matute', 'Española', '1925-07-26', 'Premio Cervantes 2010'),
('Carmen', 'Laforet', 'Española', '1921-09-06', 'Autora de Nada, Premio Nadal 1944'),
('Elena', 'Ferrante', 'Italiana', '1943-01-01', 'Autora de la saga Dos amigas'),
('Umberto', 'Eco', 'Italiana', '1932-01-05', 'Semiólogo y novelista italiano'),
('Italo', 'Calvino', 'Italiana', '1923-10-15', 'Escritor italiano del siglo XX'),
('José', 'Saramago', 'Portuguesa', '1922-11-16', 'Premio Nobel de Literatura 1998'),
('Fernando', 'Pessoa', 'Portuguesa', '1888-06-13', 'Poeta portugués con múltiples heterónimos'),
('Victor', 'Hugo', 'Francesa', '1802-02-26', 'Autor de Los Miserables'),
('Albert', 'Camus', 'Francesa', '1913-11-07', 'Premio Nobel de Literatura 1957'),
('Simone', 'de Beauvoir', 'Francesa', '1908-01-09', 'Filósofa y escritora feminista'),
('Marcel', 'Proust', 'Francesa', '1871-07-10', 'Autor de En busca del tiempo perdido'),
('Franz', 'Kafka', 'Checa', '1883-07-03', 'Escritor de literatura del absurdo'),
('Hermann', 'Hesse', 'Alemana', '1877-07-02', 'Premio Nobel de Literatura 1946'),
('Thomas', 'Mann', 'Alemana', '1875-06-06', 'Premio Nobel de Literatura 1929'),
('Johann Wolfgang', 'von Goethe', 'Alemana', '1749-08-28', 'Autor de Fausto'),
('León', 'Tolstói', 'Rusa', '1828-09-09', 'Autor de Guerra y Paz'),
('Fiódor', 'Dostoyevski', 'Rusa', '1821-11-11', 'Autor de Crimen y Castigo'),
('Antón', 'Chéjov', 'Rusa', '1860-01-29', 'Maestro del cuento corto'),
('William', 'Shakespeare', 'Británica', '1564-04-23', 'El dramaturgo más influyente de la historia'),
('Jane', 'Austen', 'Británica', '1775-12-16', 'Autora de Orgullo y Prejuicio'),
('Charles', 'Dickens', 'Británica', '1812-02-07', 'Novelista de la era victoriana'),
('Virginia', 'Woolf', 'Británica', '1882-01-25', 'Pionera del modernismo literario'),
('George', 'Orwell', 'Británica', '1903-06-25', 'Autor de 1984 y Rebelión en la granja'),
('Agatha', 'Christie', 'Británica', '1890-09-15', 'Reina del misterio'),
('J.R.R.', 'Tolkien', 'Británica', '1892-01-03', 'Creador de la Tierra Media'),
('J.K.', 'Rowling', 'Británica', '1965-07-31', 'Autora de Harry Potter'),
('Ernest', 'Hemingway', 'Estadounidense', '1899-07-21', 'Premio Nobel de Literatura 1954'),
('Mark', 'Twain', 'Estadounidense', '1835-11-30', 'Autor de Las aventuras de Tom Sawyer'),
('Edgar Allan', 'Poe', 'Estadounidense', '1809-01-19', 'Maestro del terror y el misterio'),
('Stephen', 'King', 'Estadounidense', '1947-09-21', 'Rey del terror contemporáneo'),
('Dan', 'Brown', 'Estadounidense', '1964-06-22', 'Autor de El Código Da Vinci'),
('Haruki', 'Murakami', 'Japonesa', '1949-01-12', 'Novelista japonés contemporáneo'),
('Banana', 'Yoshimoto', 'Japonesa', '1964-07-24', 'Escritora japonesa contemporánea'),
('Khaled', 'Hosseini', 'Afgana', '1965-03-04', 'Autor de Cometas en el cielo'),
('Chimamanda Ngozi', 'Adichie', 'Nigeriana', '1977-09-15', 'Escritora y feminista nigeriana'),
('Paulo', 'Coelho', 'Brasileña', '1947-08-24', 'Autor de El Alquimista'),
('Clarice', 'Lispector', 'Brasileña', '1920-12-10', 'Escritora brasileña modernista'),
('Laura', 'Esquivel', 'Mexicana', '1950-09-30', 'Autora de Como agua para chocolate'),
('Roberto', 'Bolaño', 'Chilena', '1953-04-28', 'Autor de Los detectives salvajes'),
('Horacio', 'Quiroga', 'Uruguaya', '1878-12-31', 'Maestro del cuento latinoamericano'),
('Alfonsina', 'Storni', 'Argentina', '1892-05-22', 'Poetisa argentina del modernismo'),
('Gabriela', 'Mistral', 'Chilena', '1889-04-07', 'Premio Nobel de Literatura 1945'),
('Rubén', 'Darío', 'Nicaragüense', '1867-01-18', 'Padre del modernismo literario'),
('César', 'Vallejo', 'Peruana', '1892-03-16', 'Poeta vanguardista peruano'),
('Juan Carlos', 'Onetti', 'Uruguaya', '1909-07-01', 'Premio Cervantes 1980'),
('Ernesto', 'Sabato', 'Argentina', '1911-06-24', 'Autor de El túnel'),
('Adolfo', 'Bioy Casares', 'Argentina', '1914-09-15', 'Autor de La invención de Morel'),
('Manuel', 'Puig', 'Argentina', '1932-12-28', 'Autor de El beso de la mujer araña'),
('María', 'Dueñas', 'Española', '1964-11-30', 'Autora de El tiempo entre costuras'),
('Julia', 'Navarro', 'Española', '1953-01-01', 'Periodista y novelista española'),
('Dolores', 'Redondo', 'Española', '1969-01-01', 'Autora de la Trilogía del Baztán'),
('Santiago', 'Posteguillo', 'Española', '1967-01-01', 'Especialista en novela histórica romana'),
('Ildefonso', 'Falcones', 'Española', '1959-01-01', 'Autor de La catedral del mar'),
('Ken', 'Follett', 'Británica', '1949-06-05', 'Autor de Los pilares de la Tierra'),
('Brandon', 'Sanderson', 'Estadounidense', '1975-12-19', 'Maestro de la fantasía épica'),
('George R.R.', 'Martin', 'Estadounidense', '1948-09-20', 'Autor de Canción de Hielo y Fuego'),
('Patrick', 'Rothfuss', 'Estadounidense', '1973-06-06', 'Autor de El nombre del viento'),
('Neil', 'Gaiman', 'Británica', '1960-11-10', 'Autor de Sandman y American Gods'),
('Terry', 'Pratchett', 'Británica', '1948-04-28', 'Creador de Mundodisco'),
('Suzanne', 'Collins', 'Estadounidense', '1962-08-10', 'Autora de Los Juegos del Hambre'),
('Veronica', 'Roth', 'Estadounidense', '1988-08-19', 'Autora de Divergente');

-- ============================================================
-- LIBROS (100 registros) - NUMERADOS PARA VERIFICACIÓN
-- ============================================================
INSERT INTO libros (titulo, isbn, precio, stock, paginas, idioma, fecha_publicacion, categoria_id) VALUES
('Cien años de soledad', '9788497592208', 21.90, 45, 471, 'Español', '1967-05-30', 52),          -- 1
('El amor en los tiempos del cólera', '9788497592215', 19.90, 32, 451, 'Español', '1985-01-01', 7), -- 2
('La casa de los espíritus', '9788401352836', 22.50, 28, 560, 'Español', '1982-01-01', 52),     -- 3
('La ciudad de las bestias', '9788401341908', 16.90, 40, 304, 'Español', '2002-01-01', 46),     -- 4
('La fiesta del chivo', '9788420443744', 23.00, 25, 528, 'Español', '2000-01-01', 8),           -- 5
('Conversación en La Catedral', '9788420422855', 24.50, 18, 672, 'Español', '1969-01-01', 1),   -- 6
('Ficciones', '9788499089508', 15.90, 35, 208, 'Español', '1944-01-01', 1),                     -- 7
('El Aleph', '9788499089492', 14.90, 42, 176, 'Español', '1949-01-01', 1),                      -- 8
('Rayuela', '9788437604572', 18.50, 30, 628, 'Español', '1963-01-01', 1),                       -- 9
('La sombra del viento', '9788408163435', 21.00, 55, 576, 'Español', '2001-04-01', 5),          -- 10
('El juego del ángel', '9788408081180', 22.00, 38, 672, 'Español', '2008-04-17', 5),            -- 11
('El prisionero del cielo', '9788408105824', 21.00, 42, 384, 'Español', '2011-11-01', 5),       -- 12
('El laberinto de los espíritus', '9788408163459', 24.90, 35, 928, 'Español', '2016-11-17', 5), -- 13
('El capitán Alatriste', '9788420483535', 17.90, 48, 256, 'Español', '1996-01-01', 8),          -- 14
('Limpieza de sangre', '9788420443393', 16.90, 35, 256, 'Español', '1997-01-01', 8),            -- 15
('La reina del sur', '9788420470122', 20.50, 40, 544, 'Español', '2002-01-01', 6),              -- 16
('La piel del tambor', '9788420483559', 19.90, 28, 592, 'Español', '1995-01-01', 6),            -- 17
('La historia interminable', '9788420471532', 19.00, 50, 464, 'Español', '1979-01-01', 3),      -- 18
('Momo', '9788420482767', 15.90, 45, 288, 'Español', '1973-01-01', 45),                         -- 19
('Pedro Páramo', '9788437604183', 12.90, 60, 128, 'Español', '1955-01-01', 52),                 -- 20
('El llano en llamas', '9788437604190', 13.50, 55, 176, 'Español', '1953-01-01', 1),            -- 21
('Veinte poemas de amor', '9788432248221', 11.90, 70, 96, 'Español', '1924-01-01', 12),         -- 22
('Don Quijote de la Mancha', '9788420412146', 35.00, 25, 1376, 'Español', '1605-01-16', 53),    -- 23
('Bodas de sangre', '9788437600000', 10.90, 65, 128, 'Español', '1933-01-01', 38),              -- 24
('La casa de Bernarda Alba', '9788437601847', 10.90, 60, 96, 'Español', '1945-01-01', 38),      -- 25
('Niebla', '9788420633077', 14.50, 45, 288, 'Español', '1914-01-01', 1),                        -- 26
('La familia de Pascual Duarte', '9788423342785', 16.00, 38, 192, 'Español', '1942-01-01', 1),  -- 27
('Nada', '9788423338672', 15.00, 42, 296, 'Español', '1945-01-01', 1),                          -- 28
('Olvidado rey Gudú', '9788467033359', 28.00, 20, 896, 'Español', '1996-01-01', 3),             -- 29
('Primera memoria', '9788423338634', 14.90, 35, 224, 'Español', '1959-01-01', 1),               -- 30
('El nombre de la rosa', '9788497592536', 22.00, 40, 640, 'Español', '1980-01-01', 5),          -- 31
('El péndulo de Foucault', '9788426413321', 23.50, 25, 768, 'Español', '1988-01-01', 5),        -- 32
('El barón rampante', '9788478447633', 16.90, 35, 272, 'Español', '1957-01-01', 1),             -- 33
('Si una noche de invierno un viajero', '9788478446872', 17.50, 30, 288, 'Español', '1979-01-01', 1), -- 34
('Ensayo sobre la ceguera', '9788420443423', 18.90, 48, 376, 'Español', '1995-01-01', 1),       -- 35
('El evangelio según Jesucristo', '9788420443430', 19.50, 32, 448, 'Español', '1991-01-01', 1), -- 36
('Los miserables', '9788491052012', 25.00, 30, 1488, 'Español', '1862-01-01', 53),              -- 37
('Nuestra Señora de París', '9788491050063', 18.50, 35, 624, 'Español', '1831-01-01', 53),      -- 38
('El extranjero', '9788420674209', 13.90, 55, 144, 'Español', '1942-01-01', 1),                 -- 39
('La peste', '9788420674230', 16.90, 45, 320, 'Español', '1947-01-01', 1),                      -- 40
('El segundo sexo', '9788437638058', 28.00, 22, 896, 'Español', '1949-01-01', 17),              -- 41
('Por el camino de Swann', '9788420674254', 24.00, 20, 544, 'Español', '1913-01-01', 53),       -- 42
('La metamorfosis', '9788420674186', 10.90, 80, 96, 'Español', '1915-01-01', 1),                -- 43
('El proceso', '9788420674193', 15.90, 50, 288, 'Español', '1925-01-01', 1),                    -- 44
('El castillo', '9788420674216', 17.90, 40, 384, 'Español', '1926-01-01', 1),                   -- 45
('Siddhartha', '9788435018630', 12.90, 60, 160, 'Español', '1922-01-01', 1),                    -- 46
('El lobo estepario', '9788420674247', 14.90, 48, 240, 'Español', '1927-01-01', 1),             -- 47
('La muerte en Venecia', '9788435018647', 11.90, 55, 128, 'Español', '1912-01-01', 1),          -- 48
('La montaña mágica', '9788435018654', 26.00, 25, 1008, 'Español', '1924-01-01', 53),           -- 49
('Fausto', '9788437602431', 18.00, 35, 496, 'Español', '1808-01-01', 53),                       -- 50
('Guerra y paz', '9788491050087', 28.00, 22, 1568, 'Español', '1869-01-01', 53),                -- 51
('Anna Karénina', '9788491050094', 24.00, 28, 1072, 'Español', '1877-01-01', 53),               -- 52
('Crimen y castigo', '9788420674261', 18.90, 40, 688, 'Español', '1866-01-01', 53),             -- 53
('Los hermanos Karamázov', '9788420674278', 22.00, 30, 1056, 'Español', '1880-01-01', 53),      -- 54
('Hamlet', '9788437600154', 11.90, 65, 192, 'Español', '1603-01-01', 38),                       -- 55
('Romeo y Julieta', '9788437600161', 10.90, 70, 160, 'Español', '1597-01-01', 38),              -- 56
('Orgullo y prejuicio', '9788491050117', 14.90, 55, 432, 'Español', '1813-01-28', 7),           -- 57
('Emma', '9788491050124', 15.90, 45, 528, 'Español', '1815-12-23', 7),                          -- 58
('Oliver Twist', '9788491050131', 16.90, 40, 544, 'Español', '1839-01-01', 53),                 -- 59
('Grandes esperanzas', '9788491050148', 17.90, 38, 592, 'Español', '1861-01-01', 53),           -- 60
('La señora Dalloway', '9788437604206', 14.50, 42, 224, 'Español', '1925-05-14', 1),            -- 61
('Al faro', '9788437604213', 15.00, 38, 272, 'Español', '1927-05-05', 1),                       -- 62
('1984', '9788423342792', 16.90, 65, 352, 'Español', '1949-06-08', 51),                         -- 63
('Rebelión en la granja', '9788423342808', 12.90, 75, 144, 'Español', '1945-08-17', 51),        -- 64
('Asesinato en el Orient Express', '9788467045369', 14.90, 60, 256, 'Español', '1934-01-01', 5),-- 65
('Diez negritos', '9788467045376', 14.90, 58, 224, 'Español', '1939-11-06', 5),                 -- 66
('El hobbit', '9788445000656', 19.90, 50, 320, 'Español', '1937-09-21', 3),                     -- 67
('El Señor de los Anillos: La Comunidad', '9788445000663', 24.90, 40, 544, 'Español', '1954-07-29', 3), -- 68
('Harry Potter y la piedra filosofal', '9788478884452', 18.90, 70, 256, 'Español', '1997-06-26', 3),    -- 69
('Harry Potter y la cámara secreta', '9788478884469', 19.90, 65, 288, 'Español', '1998-07-02', 3),      -- 70
('El viejo y el mar', '9788437604220', 12.90, 60, 128, 'Español', '1952-01-01', 1),             -- 71
('Por quién doblan las campanas', '9788437604237', 19.90, 35, 528, 'Español', '1940-10-21', 8), -- 72
('Las aventuras de Tom Sawyer', '9788491050155', 13.90, 55, 288, 'Español', '1876-01-01', 9),   -- 73
('Las aventuras de Huckleberry Finn', '9788491050162', 14.90, 50, 368, 'Español', '1884-12-10', 9), -- 74
('El corazón delator', '9788420674285', 9.90, 80, 64, 'Español', '1843-01-01', 4),              -- 75
('Narraciones extraordinarias', '9788420674292', 15.90, 45, 320, 'Español', '1845-01-01', 4),   -- 76
('It', '9788401499050', 24.90, 40, 1504, 'Español', '1986-09-15', 4),                           -- 77
('El resplandor', '9788497593892', 19.90, 48, 688, 'Español', '1977-01-28', 4),                 -- 78
('Cementerio de animales', '9788497593908', 17.90, 45, 416, 'Español', '1983-11-14', 4),        -- 79
('El Código Da Vinci', '9788408175728', 21.00, 55, 624, 'Español', '2003-03-18', 6),            -- 80
('Ángeles y demonios', '9788408175735', 20.00, 50, 608, 'Español', '2000-01-01', 6),            -- 81
('Tokio blues', '9788483835043', 18.90, 42, 384, 'Español', '1987-01-01', 1),                   -- 82
('Kafka en la orilla', '9788483835050', 21.00, 38, 592, 'Español', '2002-01-01', 1),            -- 83
('Kitchen', '9788483109540', 13.90, 48, 160, 'Español', '1988-01-01', 1),                       -- 84
('Cometas en el cielo', '9788498380729', 18.90, 52, 384, 'Español', '2003-05-29', 1),           -- 85
('Mil soles espléndidos', '9788498381139', 19.90, 45, 432, 'Español', '2007-05-22', 1),         -- 86
('Americanah', '9788439728382', 21.00, 35, 608, 'Español', '2013-05-14', 1),                    -- 87
('El alquimista', '9788408144755', 15.90, 65, 208, 'Español', '1988-01-01', 1),                 -- 88
('Brida', '9788408144762', 14.90, 55, 256, 'Español', '1990-01-01', 1),                         -- 89
('La hora de la estrella', '9788478447527', 12.90, 40, 96, 'Español', '1977-01-01', 1),         -- 90
('Como agua para chocolate', '9788497592222', 14.90, 50, 224, 'Español', '1989-01-01', 52),     -- 91
('Los detectives salvajes', '9788433966131', 22.00, 35, 624, 'Español', '1998-01-01', 1),       -- 92
('2666', '9788433973177', 26.00, 28, 1128, 'Español', '2004-01-01', 1),                         -- 93
('El túnel', '9788432248344', 12.90, 55, 160, 'Español', '1948-01-01', 1),                      -- 94
('La invención de Morel', '9788420633466', 13.90, 48, 128, 'Español', '1940-01-01', 2),         -- 95
('El tiempo entre costuras', '9788499981833', 21.90, 45, 656, 'Español', '2009-06-17', 8),      -- 96
('Los pilares de la Tierra', '9788497594738', 24.90, 50, 1168, 'Español', '1989-01-01', 8),     -- 97
('Un mundo sin fin', '9788497594745', 25.90, 42, 1232, 'Español', '2007-10-09', 8),             -- 98
('La catedral del mar', '9788497594752', 23.90, 48, 672, 'Español', '2006-04-01', 8),           -- 99
('El nombre del viento', '9788401352833', 22.90, 55, 880, 'Español', '2007-03-27', 3);          -- 100

-- ============================================================
-- LIBROS_AUTORES (100 registros - relaciones libro-autor)
-- ============================================================
INSERT INTO libros_autores (libro_id, autor_id, rol) VALUES
(1, 1, 'Autor'),    -- Cien años de soledad - García Márquez
(2, 1, 'Autor'),    -- El amor en los tiempos del cólera - García Márquez
(3, 2, 'Autor'),    -- La casa de los espíritus - Allende
(4, 2, 'Autor'),    -- La ciudad de las bestias - Allende
(5, 3, 'Autor'),    -- La fiesta del chivo - Vargas Llosa
(6, 3, 'Autor'),    -- Conversación en La Catedral - Vargas Llosa
(7, 4, 'Autor'),    -- Ficciones - Borges
(8, 4, 'Autor'),    -- El Aleph - Borges
(9, 5, 'Autor'),    -- Rayuela - Cortázar
(10, 6, 'Autor'),   -- La sombra del viento - Ruiz Zafón
(11, 6, 'Autor'),   -- El juego del ángel - Ruiz Zafón
(12, 6, 'Autor'),   -- El prisionero del cielo - Ruiz Zafón
(13, 6, 'Autor'),   -- El laberinto de los espíritus - Ruiz Zafón
(14, 7, 'Autor'),   -- El capitán Alatriste - Pérez-Reverte
(15, 7, 'Autor'),   -- Limpieza de sangre - Pérez-Reverte
(16, 7, 'Autor'),   -- La reina del sur - Pérez-Reverte
(17, 7, 'Autor'),   -- La piel del tambor - Pérez-Reverte
(18, 32, 'Autor'),  -- La historia interminable - Hesse (ficticio)
(19, 32, 'Autor'),  -- Momo - Hesse (ficticio)
(20, 13, 'Autor'),  -- Pedro Páramo - Rulfo
(21, 13, 'Autor'),  -- El llano en llamas - Rulfo
(22, 15, 'Autor'),  -- Veinte poemas de amor - Neruda
(23, 16, 'Autor'),  -- Don Quijote - Cervantes
(24, 17, 'Autor'),  -- Bodas de sangre - García Lorca
(25, 17, 'Autor'),  -- La casa de Bernarda Alba - García Lorca
(26, 18, 'Autor'),  -- Niebla - Unamuno
(27, 19, 'Autor'),  -- La familia de Pascual Duarte - Cela
(28, 21, 'Autor'),  -- Nada - Laforet
(29, 20, 'Autor'),  -- Olvidado rey Gudú - Matute
(30, 20, 'Autor'),  -- Primera memoria - Matute
(31, 23, 'Autor'),  -- El nombre de la rosa - Eco
(32, 23, 'Autor'),  -- El péndulo de Foucault - Eco
(33, 24, 'Autor'),  -- El barón rampante - Calvino
(34, 24, 'Autor'),  -- Si una noche de invierno - Calvino
(35, 25, 'Autor'),  -- Ensayo sobre la ceguera - Saramago
(36, 25, 'Autor'),  -- El evangelio según Jesucristo - Saramago
(37, 27, 'Autor'),  -- Los miserables - Hugo
(38, 27, 'Autor'),  -- Nuestra Señora de París - Hugo
(39, 28, 'Autor'),  -- El extranjero - Camus
(40, 28, 'Autor'),  -- La peste - Camus
(41, 29, 'Autor'),  -- El segundo sexo - de Beauvoir
(42, 30, 'Autor'),  -- Por el camino de Swann - Proust
(43, 31, 'Autor'),  -- La metamorfosis - Kafka
(44, 31, 'Autor'),  -- El proceso - Kafka
(45, 31, 'Autor'),  -- El castillo - Kafka
(46, 32, 'Autor'),  -- Siddhartha - Hesse
(47, 32, 'Autor'),  -- El lobo estepario - Hesse
(48, 33, 'Autor'),  -- La muerte en Venecia - Mann
(49, 33, 'Autor'),  -- La montaña mágica - Mann
(50, 34, 'Autor'),  -- Fausto - Goethe
(51, 35, 'Autor'),  -- Guerra y paz - Tolstói
(52, 35, 'Autor'),  -- Anna Karénina - Tolstói
(53, 36, 'Autor'),  -- Crimen y castigo - Dostoyevski
(54, 36, 'Autor'),  -- Los hermanos Karamázov - Dostoyevski
(55, 38, 'Autor'),  -- Hamlet - Shakespeare
(56, 38, 'Autor'),  -- Romeo y Julieta - Shakespeare
(57, 39, 'Autor'),  -- Orgullo y prejuicio - Austen
(58, 39, 'Autor'),  -- Emma - Austen
(59, 40, 'Autor'),  -- Oliver Twist - Dickens
(60, 40, 'Autor'),  -- Grandes esperanzas - Dickens
(61, 41, 'Autor'),  -- La señora Dalloway - Woolf
(62, 41, 'Autor'),  -- Al faro - Woolf
(63, 42, 'Autor'),  -- 1984 - Orwell
(64, 42, 'Autor'),  -- Rebelión en la granja - Orwell
(65, 43, 'Autor'),  -- Asesinato en el Orient Express - Christie
(66, 43, 'Autor'),  -- Diez negritos - Christie
(67, 44, 'Autor'),  -- El hobbit - Tolkien
(68, 44, 'Autor'),  -- El Señor de los Anillos - Tolkien
(69, 45, 'Autor'),  -- Harry Potter piedra filosofal - Rowling
(70, 45, 'Autor'),  -- Harry Potter cámara secreta - Rowling
(71, 46, 'Autor'),  -- El viejo y el mar - Hemingway
(72, 46, 'Autor'),  -- Por quién doblan las campanas - Hemingway
(73, 47, 'Autor'),  -- Tom Sawyer - Twain
(74, 47, 'Autor'),  -- Huckleberry Finn - Twain
(75, 48, 'Autor'),  -- El corazón delator - Poe
(76, 48, 'Autor'),  -- Narraciones extraordinarias - Poe
(77, 49, 'Autor'),  -- It - King
(78, 49, 'Autor'),  -- El resplandor - King
(79, 49, 'Autor'),  -- Cementerio de animales - King
(80, 50, 'Autor'),  -- El Código Da Vinci - Brown
(81, 50, 'Autor'),  -- Ángeles y demonios - Brown
(82, 51, 'Autor'),  -- Tokio blues - Murakami
(83, 51, 'Autor'),  -- Kafka en la orilla - Murakami
(84, 52, 'Autor'),  -- Kitchen - Yoshimoto
(85, 53, 'Autor'),  -- Cometas en el cielo - Hosseini
(86, 53, 'Autor'),  -- Mil soles espléndidos - Hosseini
(87, 54, 'Autor'),  -- Americanah - Adichie
(88, 55, 'Autor'),  -- El alquimista - Coelho
(89, 55, 'Autor'),  -- Brida - Coelho
(90, 56, 'Autor'),  -- La hora de la estrella - Lispector
(91, 57, 'Autor'),  -- Como agua para chocolate - Esquivel
(92, 58, 'Autor'),  -- Los detectives salvajes - Bolaño
(93, 58, 'Autor'),  -- 2666 - Bolaño
(94, 65, 'Autor'),  -- El túnel - Sabato
(95, 66, 'Autor'),  -- La invención de Morel - Bioy Casares
(96, 68, 'Autor'),  -- El tiempo entre costuras - Dueñas
(97, 73, 'Autor'),  -- Los pilares de la Tierra - Follett
(98, 73, 'Autor'),  -- Un mundo sin fin - Follett
(99, 72, 'Autor'),  -- La catedral del mar - Falcones
(100, 76, 'Autor'); -- El nombre del viento - Rothfuss

-- ============================================================
-- CLIENTES (75 registros)
-- ============================================================
INSERT INTO clientes (nombre, apellidos, email, telefono, direccion, ciudad, codigo_postal, pais, fecha_registro) VALUES
('María', 'García López', 'maria.garcia@email.com', '+34612345678', 'Calle Mayor 15, 2º A', 'Madrid', '28001', 'España', '2023-01-15'),
('Juan', 'Martínez Ruiz', 'juan.martinez@email.com', '+34623456789', 'Avenida de la Constitución 42', 'Sevilla', '41001', 'España', '2023-01-20'),
('Ana', 'López Fernández', 'ana.lopez@email.com', '+34634567890', 'Carrer de Balmes 123', 'Barcelona', '08008', 'España', '2023-02-01'),
('Carlos', 'Rodríguez Sánchez', 'carlos.rodriguez@email.com', '+34645678901', 'Gran Vía 56', 'Bilbao', '48001', 'España', '2023-02-10'),
('Laura', 'Fernández González', 'laura.fernandez@email.com', '+34656789012', 'Calle San Fernando 8', 'Valencia', '46001', 'España', '2023-02-15'),
('Pedro', 'Sánchez Pérez', 'pedro.sanchez@email.com', '+34667890123', 'Plaza del Pilar 3', 'Zaragoza', '50001', 'España', '2023-02-20'),
('Carmen', 'González Díaz', 'carmen.gonzalez@email.com', '+34678901234', 'Calle Sierpes 25', 'Sevilla', '41004', 'España', '2023-03-01'),
('Miguel', 'Díaz Torres', 'miguel.diaz@email.com', '+34689012345', 'Paseo de Gracia 78', 'Barcelona', '08007', 'España', '2023-03-05'),
('Elena', 'Torres Romero', 'elena.torres@email.com', '+34690123456', 'Calle Alcalá 89', 'Madrid', '28009', 'España', '2023-03-10'),
('David', 'Romero Navarro', 'david.romero@email.com', '+34601234567', 'Avenida de Andalucía 15', 'Málaga', '29001', 'España', '2023-03-15'),
('Lucía', 'Navarro Gil', 'lucia.navarro@email.com', '+34612345679', 'Calle Larios 45', 'Málaga', '29005', 'España', '2023-03-20'),
('Javier', 'Gil Moreno', 'javier.gil@email.com', '+34623456780', 'Gran Vía de les Corts Catalanes 340', 'Barcelona', '08004', 'España', '2023-04-01'),
('Paula', 'Moreno Jiménez', 'paula.moreno@email.com', '+34634567891', 'Calle Serrano 12', 'Madrid', '28001', 'España', '2023-04-05'),
('Andrés', 'Jiménez Ruiz', 'andres.jimenez@email.com', '+34645678902', 'Paseo de la Castellana 200', 'Madrid', '28046', 'España', '2023-04-10'),
('Sara', 'Ruiz Hernández', 'sara.ruiz@email.com', '+34656789013', 'Calle de la Paz 22', 'Valencia', '46003', 'España', '2023-04-15'),
('Francisco', 'Hernández Muñoz', 'francisco.hernandez@email.com', '+34667890124', 'Avenida de la Libertad 67', 'San Sebastián', '20001', 'España', '2023-04-20'),
('Isabel', 'Muñoz Álvarez', 'isabel.munoz@email.com', '+34678901235', 'Calle del Carmen 34', 'Madrid', '28013', 'España', '2023-05-01'),
('Antonio', 'Álvarez Castro', 'antonio.alvarez@email.com', '+34689012346', 'Rambla Nova 55', 'Tarragona', '43001', 'España', '2023-05-05'),
('Marta', 'Castro Ortega', 'marta.castro@email.com', '+34690123457', 'Calle Príncipe 18', 'Vigo', '36202', 'España', '2023-05-10'),
('Alejandro', 'Ortega Serrano', 'alejandro.ortega@email.com', '+34601234568', 'Avenida de Portugal 23', 'Salamanca', '37001', 'España', '2023-05-15'),
('Cristina', 'Serrano Molina', 'cristina.serrano@email.com', '+34612345680', 'Plaza Mayor 7', 'Salamanca', '37002', 'España', '2023-05-20'),
('Roberto', 'Molina Delgado', 'roberto.molina@email.com', '+34623456781', 'Calle Real 90', 'Santander', '39001', 'España', '2023-06-01'),
('Patricia', 'Delgado Vega', 'patricia.delgado@email.com', '+34634567892', 'Gran Vía 123', 'Madrid', '28013', 'España', '2023-06-05'),
('Fernando', 'Vega Castro', 'fernando.vega@email.com', '+34645678903', 'Calle Colón 56', 'Valencia', '46004', 'España', '2023-06-10'),
('Raquel', 'Castro Méndez', 'raquel.castro@email.com', '+34656789014', 'Paseo de Almería 78', 'Almería', '04001', 'España', '2023-06-15'),
('Alberto', 'Méndez Soto', 'alberto.mendez@email.com', '+34667890125', 'Avenida de la Aurora 34', 'Córdoba', '14001', 'España', '2023-06-20'),
('Silvia', 'Soto Reyes', 'silvia.soto@email.com', '+34678901236', 'Calle Cruz Conde 12', 'Córdoba', '14002', 'España', '2023-07-01'),
('Jorge', 'Reyes Flores', 'jorge.reyes@email.com', '+34689012347', 'Plaza de España 5', 'Sevilla', '41013', 'España', '2023-07-05'),
('Natalia', 'Flores Campos', 'natalia.flores@email.com', '+34690123458', 'Calle Tetuán 67', 'Sevilla', '41001', 'España', '2023-07-10'),
('Sergio', 'Campos León', 'sergio.campos@email.com', '+34601234569', 'Avenida Diagonal 456', 'Barcelona', '08006', 'España', '2023-07-15'),
('Beatriz', 'León Fuentes', 'beatriz.leon@email.com', '+34612345681', 'Ramblas 89', 'Barcelona', '08002', 'España', '2023-07-20'),
('Víctor', 'Fuentes Medina', 'victor.fuentes@email.com', '+34623456782', 'Calle Goya 123', 'Madrid', '28001', 'España', '2023-08-01'),
('Adriana', 'Medina Peña', 'adriana.medina@email.com', '+34634567893', 'Paseo del Prado 45', 'Madrid', '28014', 'España', '2023-08-05'),
('Daniel', 'Peña Cruz', 'daniel.pena@email.com', '+34645678904', 'Calle Príncipe de Vergara 78', 'Madrid', '28006', 'España', '2023-08-10'),
('Alicia', 'Cruz Ramos', 'alicia.cruz@email.com', '+34656789015', 'Gran Vía de Colón 34', 'Granada', '18001', 'España', '2023-08-15'),
('Rubén', 'Ramos Iglesias', 'ruben.ramos@email.com', '+34667890126', 'Calle Recogidas 56', 'Granada', '18002', 'España', '2023-08-20'),
('Eva', 'Iglesias Herrera', 'eva.iglesias@email.com', '+34678901237', 'Avenida de América 90', 'Madrid', '28028', 'España', '2023-09-01'),
('Óscar', 'Herrera Rojas', 'oscar.herrera@email.com', '+34689012348', 'Calle Velázquez 23', 'Madrid', '28001', 'España', '2023-09-05'),
('Inés', 'Rojas Cano', 'ines.rojas@email.com', '+34690123459', 'Paseo de Recoletos 12', 'Madrid', '28004', 'España', '2023-09-10'),
('Hugo', 'Cano Blanco', 'hugo.cano@email.com', '+34601234570', 'Calle Fuencarral 67', 'Madrid', '28004', 'España', '2023-09-15'),
('Marina', 'Blanco Prieto', 'marina.blanco@email.com', '+34612345682', 'Avenida de Bruselas 34', 'Alcobendas', '28100', 'España', '2023-09-20'),
('Pablo', 'Prieto Santana', 'pablo.prieto@email.com', '+34623456783', 'Calle Mayor 78', 'Alcalá de Henares', '28801', 'España', '2023-10-01'),
('Claudia', 'Santana Vera', 'claudia.santana@email.com', '+34634567894', 'Plaza Cervantes 5', 'Alcalá de Henares', '28802', 'España', '2023-10-05'),
('Guillermo', 'Vera Cortés', 'guillermo.vera@email.com', '+34645678905', 'Calle Real 23', 'Aranjuez', '28300', 'España', '2023-10-10'),
('Sofía', 'Cortés Aguilar', 'sofia.cortes@email.com', '+34656789016', 'Avenida de la Estación 45', 'Getafe', '28901', 'España', '2023-10-15'),
('Gonzalo', 'Aguilar Nieto', 'gonzalo.aguilar@email.com', '+34667890127', 'Calle Toledo 89', 'Leganés', '28911', 'España', '2023-10-20'),
('Teresa', 'Nieto Cabrera', 'teresa.nieto@email.com', '+34678901238', 'Paseo de Extremadura 123', 'Madrid', '28011', 'España', '2023-11-01'),
('Marcos', 'Cabrera Pastor', 'marcos.cabrera@email.com', '+34689012349', 'Calle de Bravo Murillo 56', 'Madrid', '28003', 'España', '2023-11-05'),
('Verónica', 'Pastor Garrido', 'veronica.pastor@email.com', '+34690123460', 'Avenida del Mediterráneo 78', 'Madrid', '28007', 'España', '2023-11-10'),
('Enrique', 'Garrido Parra', 'enrique.garrido@email.com', '+34601234571', 'Calle Ibiza 34', 'Madrid', '28009', 'España', '2023-11-15'),
('Rocío', 'Parra Guerrero', 'rocio.parra@email.com', '+34612345683', 'Paseo de Santa María de la Cabeza 90', 'Madrid', '28045', 'España', '2023-11-20'),
('Rafael', 'Guerrero Lozano', 'rafael.guerrero@email.com', '+34623456784', 'Calle de Atocha 23', 'Madrid', '28012', 'España', '2023-12-01'),
('Irene', 'Lozano Crespo', 'irene.lozano@email.com', '+34634567895', 'Gran Vía 45', 'Madrid', '28013', 'España', '2023-12-05'),
('Álvaro', 'Crespo Ortiz', 'alvaro.crespo@email.com', '+34645678906', 'Calle de Preciados 67', 'Madrid', '28013', 'España', '2023-12-10'),
('Nuria', 'Ortiz Marín', 'nuria.ortiz@email.com', '+34656789017', 'Paseo de las Delicias 89', 'Madrid', '28045', 'España', '2023-12-15'),
('Iván', 'Marín Santos', 'ivan.marin@email.com', '+34667890128', 'Avenida de Oporto 12', 'Madrid', '28019', 'España', '2023-12-20'),
('Lorena', 'Santos Gallego', 'lorena.santos@email.com', '+34678901239', 'Calle de Antonio López 34', 'Madrid', '28019', 'España', '2024-01-01'),
('Diego', 'Gallego Pascual', 'diego.gallego@email.com', '+34689012350', 'Paseo de la Habana 56', 'Madrid', '28036', 'España', '2024-01-05'),
('Mónica', 'Pascual Herrero', 'monica.pascual@email.com', '+34690123461', 'Calle de José Abascal 78', 'Madrid', '28003', 'España', '2024-01-10'),
('Samuel', 'Herrero Esteban', 'samuel.herrero@email.com', '+34601234572', 'Avenida de Brasil 90', 'Madrid', '28020', 'España', '2024-01-15'),
('Clara', 'Esteban Vicente', 'clara.esteban@email.com', '+34612345684', 'Calle de Orense 23', 'Madrid', '28020', 'España', '2024-01-20'),
('Adrián', 'Vicente Lorenzo', 'adrian.vicente@email.com', '+34623456785', 'Paseo de la Florida 45', 'Madrid', '28008', 'España', '2024-02-01'),
('Julia', 'Lorenzo Soler', 'julia.lorenzo@email.com', '+34634567896', 'Calle de Segovia 67', 'Madrid', '28005', 'España', '2024-02-05'),
('Nicolás', 'Soler Ferrer', 'nicolas.soler@email.com', '+34645678907', 'Gran Vía de San Francisco 89', 'Madrid', '28005', 'España', '2024-02-10'),
('Olga', 'Ferrer Benítez', 'olga.ferrer@email.com', '+34656789018', 'Calle de Toledo 12', 'Madrid', '28005', 'España', '2024-02-15'),
('Ignacio', 'Benítez Durán', 'ignacio.benitez@email.com', '+34667890129', 'Paseo Imperial 34', 'Madrid', '28005', 'España', '2024-02-20'),
('Esther', 'Durán Arias', 'esther.duran@email.com', '+34678901240', 'Avenida de la Albufera 56', 'Madrid', '28038', 'España', '2024-03-01'),
('Manuel', 'Arias Domínguez', 'manuel.arias@email.com', '+34689012351', 'Calle de Alcalá 78', 'Madrid', '28014', 'España', '2024-03-05'),
('Pilar', 'Domínguez Vargas', 'pilar.dominguez@email.com', '+34690123462', 'Paseo del Rey 90', 'Madrid', '28008', 'España', '2024-03-10'),
('Tomás', 'Vargas Peña', 'tomas.vargas@email.com', '+34601234573', 'Calle de Bailén 23', 'Madrid', '28013', 'España', '2024-03-15'),
('Rosa', 'Peña Romero', 'rosa.pena@email.com', '+34612345685', 'Plaza de Oriente 5', 'Madrid', '28013', 'España', '2024-03-20'),
('Luis', 'Romero Vidal', 'luis.romero@email.com', '+34623456786', 'Calle Mayor 45', 'Madrid', '28013', 'España', '2024-04-01'),
('Susana', 'Vidal Mora', 'susana.vidal@email.com', '+34634567897', 'Paseo de Rosales 67', 'Madrid', '28008', 'España', '2024-04-05'),
('Ricardo', 'Mora Caballero', 'ricardo.mora@email.com', '+34645678908', 'Calle de Ferraz 89', 'Madrid', '28008', 'España', '2024-04-10'),
('Gloria', 'Caballero Rubio', 'gloria.caballero@email.com', '+34656789019', 'Avenida de Valladolid 12', 'Madrid', '28008', 'España', '2024-04-15');

-- ============================================================
-- PEDIDOS (80 registros)
-- ============================================================
INSERT INTO pedidos (numero_pedido, cliente_id, fecha_pedido, estado, direccion_envio, ciudad_envio, codigo_postal_envio, pais_envio, subtotal, impuestos, gastos_envio, total, notas, fecha_envio, fecha_entrega) VALUES
('P-2023-00001', 1, '2023-01-20 10:30:00', 'entregado', 'Calle Mayor 15, 2º A', 'Madrid', '28001', 'España', 41.80, 8.78, 3.99, 54.57, NULL, '2023-01-22 09:00:00', '2023-01-24 14:30:00'),
('P-2023-00002', 2, '2023-01-25 14:15:00', 'entregado', 'Avenida de la Constitución 42', 'Sevilla', '41001', 'España', 21.90, 4.60, 3.99, 30.49, NULL, '2023-01-27 10:00:00', '2023-01-30 11:00:00'),
('P-2023-00003', 3, '2023-02-05 09:45:00', 'entregado', 'Carrer de Balmes 123', 'Barcelona', '08008', 'España', 65.70, 13.80, 0.00, 79.50, 'Envío gratuito por compra superior a 50€', '2023-02-07 08:30:00', '2023-02-09 16:00:00'),
('P-2023-00004', 4, '2023-02-15 16:20:00', 'entregado', 'Gran Vía 56', 'Bilbao', '48001', 'España', 35.80, 7.52, 3.99, 47.31, NULL, '2023-02-17 09:15:00', '2023-02-20 12:45:00'),
('P-2023-00005', 5, '2023-02-20 11:00:00', 'entregado', 'Calle San Fernando 8', 'Valencia', '46001', 'España', 52.90, 11.11, 0.00, 64.01, NULL, '2023-02-22 10:30:00', '2023-02-24 15:00:00'),
('P-2023-00006', 6, '2023-03-01 13:30:00', 'entregado', 'Plaza del Pilar 3', 'Zaragoza', '50001', 'España', 19.90, 4.18, 3.99, 28.07, NULL, '2023-03-03 11:00:00', '2023-03-06 10:30:00'),
('P-2023-00007', 7, '2023-03-10 17:45:00', 'entregado', 'Calle Sierpes 25', 'Sevilla', '41004', 'España', 78.40, 16.46, 0.00, 94.86, 'Regalo para cumpleaños', '2023-03-12 08:45:00', '2023-03-14 14:00:00'),
('P-2023-00008', 8, '2023-03-15 10:20:00', 'entregado', 'Paseo de Gracia 78', 'Barcelona', '08007', 'España', 42.00, 8.82, 3.99, 54.81, NULL, '2023-03-17 09:30:00', '2023-03-19 11:30:00'),
('P-2023-00009', 9, '2023-03-25 15:00:00', 'entregado', 'Calle Alcalá 89', 'Madrid', '28009', 'España', 29.80, 6.26, 3.99, 40.05, NULL, '2023-03-27 10:00:00', '2023-03-29 13:00:00'),
('P-2023-00010', 10, '2023-04-02 12:30:00', 'entregado', 'Avenida de Andalucía 15', 'Málaga', '29001', 'España', 56.70, 11.91, 0.00, 68.61, NULL, '2023-04-04 09:00:00', '2023-04-07 15:30:00'),
('P-2023-00011', 11, '2023-04-10 09:15:00', 'entregado', 'Calle Larios 45', 'Málaga', '29005', 'España', 33.80, 7.10, 3.99, 44.89, NULL, '2023-04-12 10:30:00', '2023-04-15 12:00:00'),
('P-2023-00012', 12, '2023-04-18 14:45:00', 'entregado', 'Gran Vía de les Corts Catalanes 340', 'Barcelona', '08004', 'España', 89.70, 18.84, 0.00, 108.54, NULL, '2023-04-20 08:00:00', '2023-04-22 16:30:00'),
('P-2023-00013', 13, '2023-04-25 16:30:00', 'entregado', 'Calle Serrano 12', 'Madrid', '28001', 'España', 24.90, 5.23, 3.99, 34.12, NULL, '2023-04-27 11:00:00', '2023-04-29 14:00:00'),
('P-2023-00014', 14, '2023-05-05 11:20:00', 'entregado', 'Paseo de la Castellana 200', 'Madrid', '28046', 'España', 47.80, 10.04, 3.99, 61.83, NULL, '2023-05-07 09:30:00', '2023-05-09 11:45:00'),
('P-2023-00015', 15, '2023-05-12 13:00:00', 'entregado', 'Calle de la Paz 22', 'Valencia', '46003', 'España', 62.40, 13.10, 0.00, 75.50, NULL, '2023-05-14 10:00:00', '2023-05-16 15:00:00'),
('P-2023-00016', 16, '2023-05-20 10:45:00', 'entregado', 'Avenida de la Libertad 67', 'San Sebastián', '20001', 'España', 31.80, 6.68, 3.99, 42.47, NULL, '2023-05-22 09:00:00', '2023-05-25 12:30:00'),
('P-2023-00017', 17, '2023-05-28 15:30:00', 'entregado', 'Calle del Carmen 34', 'Madrid', '28013', 'España', 55.70, 11.70, 0.00, 67.40, 'Dejar en conserjería', '2023-05-30 08:30:00', '2023-06-01 10:00:00'),
('P-2023-00018', 18, '2023-06-05 12:15:00', 'entregado', 'Rambla Nova 55', 'Tarragona', '43001', 'España', 28.90, 6.07, 3.99, 38.96, NULL, '2023-06-07 10:45:00', '2023-06-10 14:30:00'),
('P-2023-00019', 19, '2023-06-12 17:00:00', 'entregado', 'Calle Príncipe 18', 'Vigo', '36202', 'España', 73.60, 15.46, 0.00, 89.06, NULL, '2023-06-14 09:15:00', '2023-06-17 11:00:00'),
('P-2023-00020', 20, '2023-06-20 09:30:00', 'entregado', 'Avenida de Portugal 23', 'Salamanca', '37001', 'España', 38.80, 8.15, 3.99, 50.94, NULL, '2023-06-22 10:00:00', '2023-06-24 15:45:00'),
('P-2023-00021', 21, '2023-06-28 14:00:00', 'entregado', 'Plaza Mayor 7', 'Salamanca', '37002', 'España', 45.70, 9.60, 3.99, 59.29, NULL, '2023-06-30 08:30:00', '2023-07-03 12:00:00'),
('P-2023-00022', 22, '2023-07-05 11:45:00', 'entregado', 'Calle Real 90', 'Santander', '39001', 'España', 67.90, 14.26, 0.00, 82.16, NULL, '2023-07-07 09:00:00', '2023-07-10 14:30:00'),
('P-2023-00023', 23, '2023-07-12 16:20:00', 'entregado', 'Gran Vía 123', 'Madrid', '28013', 'España', 22.50, 4.73, 3.99, 31.22, NULL, '2023-07-14 10:30:00', '2023-07-16 11:15:00'),
('P-2023-00024', 24, '2023-07-20 10:00:00', 'entregado', 'Calle Colón 56', 'Valencia', '46004', 'España', 84.30, 17.70, 0.00, 102.00, 'Entregar por la tarde', '2023-07-22 08:45:00', '2023-07-24 17:00:00'),
('P-2023-00025', 25, '2023-07-28 13:30:00', 'entregado', 'Paseo de Almería 78', 'Almería', '04001', 'España', 36.80, 7.73, 3.99, 48.52, NULL, '2023-07-30 09:30:00', '2023-08-02 13:00:00'),
('P-2023-00026', 26, '2023-08-03 15:15:00', 'entregado', 'Avenida de la Aurora 34', 'Córdoba', '14001', 'España', 51.60, 10.84, 0.00, 62.44, NULL, '2023-08-05 10:00:00', '2023-08-08 12:30:00'),
('P-2023-00027', 27, '2023-08-10 12:00:00', 'entregado', 'Calle Cruz Conde 12', 'Córdoba', '14002', 'España', 29.90, 6.28, 3.99, 40.17, NULL, '2023-08-12 09:15:00', '2023-08-15 14:00:00'),
('P-2023-00028', 28, '2023-08-18 09:45:00', 'entregado', 'Plaza de España 5', 'Sevilla', '41013', 'España', 76.40, 16.04, 0.00, 92.44, NULL, '2023-08-20 08:30:00', '2023-08-22 15:30:00'),
('P-2023-00029', 29, '2023-08-25 14:30:00', 'entregado', 'Calle Tetuán 67', 'Sevilla', '41001', 'España', 43.70, 9.18, 3.99, 56.87, NULL, '2023-08-27 10:45:00', '2023-08-30 11:00:00'),
('P-2023-00030', 30, '2023-09-02 11:15:00', 'entregado', 'Avenida Diagonal 456', 'Barcelona', '08006', 'España', 58.90, 12.37, 0.00, 71.27, NULL, '2023-09-04 09:00:00', '2023-09-06 13:45:00'),
('P-2023-00031', 31, '2023-09-10 16:00:00', 'entregado', 'Ramblas 89', 'Barcelona', '08002', 'España', 34.80, 7.31, 3.99, 46.10, NULL, '2023-09-12 10:30:00', '2023-09-14 12:00:00'),
('P-2023-00032', 32, '2023-09-18 10:30:00', 'entregado', 'Calle Goya 123', 'Madrid', '28001', 'España', 91.20, 19.15, 0.00, 110.35, 'Cliente VIP', '2023-09-20 08:00:00', '2023-09-22 10:30:00'),
('P-2023-00033', 33, '2023-09-25 13:45:00', 'entregado', 'Paseo del Prado 45', 'Madrid', '28014', 'España', 27.80, 5.84, 3.99, 37.63, NULL, '2023-09-27 09:30:00', '2023-09-29 14:15:00'),
('P-2023-00034', 34, '2023-10-03 15:00:00', 'entregado', 'Calle Príncipe de Vergara 78', 'Madrid', '28006', 'España', 64.50, 13.55, 0.00, 78.05, NULL, '2023-10-05 10:00:00', '2023-10-07 11:30:00'),
('P-2023-00035', 35, '2023-10-10 12:20:00', 'entregado', 'Gran Vía de Colón 34', 'Granada', '18001', 'España', 39.90, 8.38, 3.99, 52.27, NULL, '2023-10-12 09:45:00', '2023-10-15 15:00:00'),
('P-2023-00036', 36, '2023-10-18 09:00:00', 'entregado', 'Calle Recogidas 56', 'Granada', '18002', 'España', 82.70, 17.37, 0.00, 100.07, NULL, '2023-10-20 08:30:00', '2023-10-23 12:45:00'),
('P-2023-00037', 37, '2023-10-25 14:15:00', 'entregado', 'Avenida de América 90', 'Madrid', '28028', 'España', 31.90, 6.70, 3.99, 42.59, NULL, '2023-10-27 10:00:00', '2023-10-29 13:30:00'),
('P-2023-00038', 38, '2023-11-02 11:30:00', 'entregado', 'Calle Velázquez 23', 'Madrid', '28001', 'España', 55.60, 11.68, 0.00, 67.28, NULL, '2023-11-04 09:15:00', '2023-11-06 14:00:00'),
('P-2023-00039', 39, '2023-11-10 16:45:00', 'entregado', 'Paseo de Recoletos 12', 'Madrid', '28004', 'España', 48.70, 10.23, 3.99, 62.92, NULL, '2023-11-12 10:30:00', '2023-11-14 11:45:00'),
('P-2023-00040', 40, '2023-11-18 10:15:00', 'entregado', 'Calle Fuencarral 67', 'Madrid', '28004', 'España', 72.40, 15.20, 0.00, 87.60, 'Urgente', '2023-11-19 08:00:00', '2023-11-20 12:00:00'),
('P-2023-00041', 41, '2023-11-25 13:00:00', 'entregado', 'Avenida de Bruselas 34', 'Alcobendas', '28100', 'España', 26.90, 5.65, 3.99, 36.54, NULL, '2023-11-27 09:30:00', '2023-11-29 15:30:00'),
('P-2023-00042', 42, '2023-12-03 15:30:00', 'entregado', 'Calle Mayor 78', 'Alcalá de Henares', '28801', 'España', 94.80, 19.91, 0.00, 114.71, 'Navidad', '2023-12-05 08:45:00', '2023-12-07 10:00:00'),
('P-2023-00043', 43, '2023-12-10 12:45:00', 'entregado', 'Plaza Cervantes 5', 'Alcalá de Henares', '28802', 'España', 37.60, 7.90, 3.99, 49.49, NULL, '2023-12-12 10:00:00', '2023-12-14 14:30:00'),
('P-2023-00044', 44, '2023-12-15 09:20:00', 'entregado', 'Calle Real 23', 'Aranjuez', '28300', 'España', 61.30, 12.87, 0.00, 74.17, 'Regalo navideño', '2023-12-17 09:00:00', '2023-12-19 11:15:00'),
('P-2023-00045', 45, '2023-12-20 14:00:00', 'entregado', 'Avenida de la Estación 45', 'Getafe', '28901', 'España', 44.90, 9.43, 3.99, 58.32, NULL, '2023-12-21 10:30:00', '2023-12-23 12:00:00'),
('P-2024-00001', 46, '2024-01-08 11:00:00', 'entregado', 'Calle Toledo 89', 'Leganés', '28911', 'España', 79.60, 16.72, 0.00, 96.32, NULL, '2024-01-10 09:15:00', '2024-01-12 15:00:00'),
('P-2024-00002', 47, '2024-01-15 16:15:00', 'entregado', 'Paseo de Extremadura 123', 'Madrid', '28011', 'España', 33.70, 7.08, 3.99, 44.77, NULL, '2024-01-17 10:00:00', '2024-01-19 13:30:00'),
('P-2024-00003', 48, '2024-01-22 10:45:00', 'entregado', 'Calle de Bravo Murillo 56', 'Madrid', '28003', 'España', 57.40, 12.05, 0.00, 69.45, NULL, '2024-01-24 08:30:00', '2024-01-26 11:00:00'),
('P-2024-00004', 49, '2024-01-30 13:30:00', 'entregado', 'Avenida del Mediterráneo 78', 'Madrid', '28007', 'España', 41.80, 8.78, 3.99, 54.57, NULL, '2024-02-01 09:45:00', '2024-02-03 14:15:00'),
('P-2024-00005', 50, '2024-02-06 15:00:00', 'entregado', 'Calle Ibiza 34', 'Madrid', '28009', 'España', 86.90, 18.25, 0.00, 105.15, NULL, '2024-02-08 10:00:00', '2024-02-10 12:30:00'),
('P-2024-00006', 51, '2024-02-14 12:30:00', 'entregado', 'Paseo de Santa María de la Cabeza 90', 'Madrid', '28045', 'España', 29.80, 6.26, 3.99, 40.05, 'San Valentín', '2024-02-15 08:00:00', '2024-02-16 10:00:00'),
('P-2024-00007', 52, '2024-02-22 09:15:00', 'entregado', 'Calle de Atocha 23', 'Madrid', '28012', 'España', 68.50, 14.39, 0.00, 82.89, NULL, '2024-02-24 09:30:00', '2024-02-26 15:00:00'),
('P-2024-00008', 53, '2024-03-01 14:45:00', 'entregado', 'Gran Vía 45', 'Madrid', '28013', 'España', 46.70, 9.81, 3.99, 60.50, NULL, '2024-03-03 10:15:00', '2024-03-05 11:45:00'),
('P-2024-00009', 54, '2024-03-08 11:20:00', 'entregado', 'Calle de Preciados 67', 'Madrid', '28013', 'España', 53.90, 11.32, 0.00, 65.22, 'Día de la mujer', '2024-03-09 08:00:00', '2024-03-10 12:00:00'),
('P-2024-00010', 55, '2024-03-15 16:00:00', 'entregado', 'Paseo de las Delicias 89', 'Madrid', '28045', 'España', 38.60, 8.11, 3.99, 50.70, NULL, '2024-03-17 09:00:00', '2024-03-19 14:30:00'),
('P-2024-00011', 56, '2024-03-22 10:30:00', 'entregado', 'Avenida de Oporto 12', 'Madrid', '28019', 'España', 75.40, 15.83, 0.00, 91.23, NULL, '2024-03-24 10:30:00', '2024-03-26 13:00:00'),
('P-2024-00012', 57, '2024-03-30 13:15:00', 'entregado', 'Calle de Antonio López 34', 'Madrid', '28019', 'España', 32.80, 6.89, 3.99, 43.68, NULL, '2024-04-01 09:45:00', '2024-04-03 11:15:00'),
('P-2024-00013', 58, '2024-04-05 15:45:00', 'entregado', 'Paseo de la Habana 56', 'Madrid', '28036', 'España', 59.70, 12.54, 0.00, 72.24, NULL, '2024-04-07 08:30:00', '2024-04-09 15:00:00'),
('P-2024-00014', 59, '2024-04-12 12:00:00', 'entregado', 'Calle de José Abascal 78', 'Madrid', '28003', 'España', 43.90, 9.22, 3.99, 57.11, NULL, '2024-04-14 10:00:00', '2024-04-16 12:30:00'),
('P-2024-00015', 60, '2024-04-20 09:30:00', 'entregado', 'Avenida de Brasil 90', 'Madrid', '28020', 'España', 88.60, 18.61, 0.00, 107.21, 'Día del libro', '2024-04-21 08:00:00', '2024-04-23 10:00:00'),
('P-2024-00016', 61, '2024-04-28 14:15:00', 'entregado', 'Calle de Orense 23', 'Madrid', '28020', 'España', 36.70, 7.71, 3.99, 48.40, NULL, '2024-04-30 09:30:00', '2024-05-02 14:00:00'),
('P-2024-00017', 62, '2024-05-05 11:45:00', 'entregado', 'Paseo de la Florida 45', 'Madrid', '28008', 'España', 71.30, 14.97, 0.00, 86.27, NULL, '2024-05-07 10:15:00', '2024-05-09 11:30:00'),
('P-2024-00018', 63, '2024-05-12 16:30:00', 'entregado', 'Calle de Segovia 67', 'Madrid', '28005', 'España', 28.90, 6.07, 3.99, 38.96, NULL, '2024-05-14 09:00:00', '2024-05-16 15:30:00'),
('P-2024-00019', 64, '2024-05-20 10:00:00', 'entregado', 'Gran Vía de San Francisco 89', 'Madrid', '28005', 'España', 54.60, 11.47, 0.00, 66.07, NULL, '2024-05-22 08:45:00', '2024-05-24 12:00:00'),
('P-2024-00020', 65, '2024-05-28 13:45:00', 'entregado', 'Calle de Toledo 12', 'Madrid', '28005', 'España', 47.80, 10.04, 3.99, 61.83, NULL, '2024-05-30 10:30:00', '2024-06-01 13:15:00'),
('P-2024-00021', 66, '2024-06-05 15:15:00', 'enviado', 'Paseo Imperial 34', 'Madrid', '28005', 'España', 83.40, 17.51, 0.00, 100.91, NULL, '2024-06-07 09:15:00', NULL),
('P-2024-00022', 67, '2024-06-12 12:30:00', 'enviado', 'Avenida de la Albufera 56', 'Madrid', '28038', 'España', 35.60, 7.48, 3.99, 47.07, NULL, '2024-06-14 10:00:00', NULL),
('P-2024-00023', 68, '2024-06-18 09:45:00', 'procesando', 'Calle de Alcalá 78', 'Madrid', '28014', 'España', 62.70, 13.17, 0.00, 75.87, NULL, NULL, NULL),
('P-2024-00024', 69, '2024-06-22 14:00:00', 'procesando', 'Paseo del Rey 90', 'Madrid', '28008', 'España', 41.90, 8.80, 3.99, 54.69, NULL, NULL, NULL),
('P-2024-00025', 70, '2024-06-25 11:15:00', 'confirmado', 'Calle de Bailén 23', 'Madrid', '28013', 'España', 78.50, 16.49, 0.00, 94.99, NULL, NULL, NULL),
('P-2024-00026', 71, '2024-06-28 16:45:00', 'confirmado', 'Plaza de Oriente 5', 'Madrid', '28013', 'España', 29.90, 6.28, 3.99, 40.17, NULL, NULL, NULL),
('P-2024-00027', 72, '2024-06-30 10:30:00', 'pendiente', 'Calle Mayor 45', 'Madrid', '28013', 'España', 56.80, 11.93, 0.00, 68.73, NULL, NULL, NULL),
('P-2024-00028', 73, '2024-07-02 13:00:00', 'pendiente', 'Paseo de Rosales 67', 'Madrid', '28008', 'España', 44.70, 9.39, 3.99, 58.08, NULL, NULL, NULL),
('P-2024-00029', 74, '2024-07-04 15:30:00', 'pendiente', 'Calle de Ferraz 89', 'Madrid', '28008', 'España', 67.90, 14.26, 0.00, 82.16, NULL, NULL, NULL),
('P-2024-00030', 75, '2024-07-05 09:00:00', 'pendiente', 'Avenida de Valladolid 12', 'Madrid', '28008', 'España', 38.60, 8.11, 3.99, 50.70, 'Cliente nuevo', NULL, NULL),
('P-2024-00031', 1, '2024-07-06 10:00:00', 'pendiente', 'Calle Mayor 15, 2º A', 'Madrid', '28001', 'España', 38.90, 8.17, 3.99, 51.06, NULL, NULL, NULL),
('P-2024-00032', 5, '2024-07-07 11:30:00', 'pendiente', 'Calle San Fernando 8', 'Valencia', '46001', 'España', 43.70, 9.18, 3.99, 56.87, NULL, NULL, NULL),
('P-2024-00033', 10, '2024-07-08 14:15:00', 'pendiente', 'Avenida de Andalucía 15', 'Málaga', '29001', 'España', 43.70, 9.18, 0.00, 52.88, NULL, NULL, NULL),
('P-2024-00034', 15, '2024-07-09 09:45:00', 'pendiente', 'Calle de la Paz 22', 'Valencia', '46003', 'España', 40.80, 8.57, 3.99, 53.36, NULL, NULL, NULL),
('P-2024-00035', 20, '2024-07-10 16:00:00', 'pendiente', 'Avenida de Portugal 23', 'Salamanca', '37001', 'España', 37.43, 7.86, 3.99, 49.28, NULL, NULL, NULL);

-- ============================================================
-- DETALLES_PEDIDO (100 registros)
-- Referencias corregidas: solo libro_id 1-100
-- ============================================================
INSERT INTO detalles_pedido (pedido_id, libro_id, cantidad, precio_unitario, descuento, subtotal_linea) VALUES
(1, 1, 1, 21.90, 0, 21.90),
(1, 6, 1, 19.90, 0, 19.90),
(2, 1, 1, 21.90, 0, 21.90),
(3, 10, 2, 21.00, 0, 42.00),
(3, 14, 1, 17.90, 0, 17.90),
(4, 7, 1, 15.90, 0, 15.90),
(4, 8, 1, 14.90, 0, 14.90),
(5, 23, 1, 35.00, 0, 35.00),
(5, 22, 1, 11.90, 0, 11.90),
(6, 6, 1, 19.90, 0, 19.90),
(7, 51, 1, 28.00, 0, 28.00),
(7, 52, 1, 24.00, 0, 24.00),
(7, 53, 1, 18.90, 0, 18.90),
(8, 10, 1, 21.00, 0, 21.00),
(8, 11, 1, 22.00, 5, 20.90),
(9, 63, 1, 16.90, 0, 16.90),
(9, 64, 1, 12.90, 0, 12.90),
(10, 67, 1, 19.90, 0, 19.90),
(10, 68, 1, 24.90, 0, 24.90),
(10, 69, 1, 18.90, 10, 17.01),
(11, 77, 1, 24.90, 0, 24.90),
(11, 78, 1, 19.90, 5, 18.91),
(12, 96, 1, 21.90, 0, 21.90),
(12, 97, 1, 24.90, 0, 24.90),
(12, 98, 1, 25.90, 0, 25.90),
(12, 39, 1, 13.90, 0, 13.90),
(13, 71, 1, 12.90, 0, 12.90),
(13, 73, 1, 13.90, 10, 12.51),
(14, 80, 1, 21.00, 0, 21.00),
(14, 81, 1, 20.00, 0, 20.00),
(15, 31, 1, 22.00, 0, 22.00),
(15, 32, 1, 23.50, 0, 23.50),
(15, 43, 1, 10.90, 0, 10.90),
(16, 46, 1, 12.90, 0, 12.90),
(16, 47, 1, 14.90, 0, 14.90),
(17, 10, 1, 21.00, 0, 21.00),
(17, 12, 1, 21.00, 0, 21.00),
(17, 43, 1, 10.90, 0, 10.90),
(18, 9, 1, 18.50, 0, 18.50),
(18, 20, 1, 12.90, 5, 12.26),
(19, 1, 1, 21.90, 0, 21.90),
(19, 3, 1, 22.50, 0, 22.50),
(19, 5, 1, 23.00, 0, 23.00),
(20, 14, 1, 17.90, 0, 17.90),
(20, 16, 1, 20.50, 5, 19.48),
(21, 35, 1, 18.90, 0, 18.90),
(21, 36, 1, 19.50, 0, 19.50),
(22, 51, 1, 28.00, 0, 28.00),
(22, 53, 1, 18.90, 0, 18.90),
(22, 54, 1, 22.00, 5, 20.90),
(23, 57, 1, 14.90, 0, 14.90),
(24, 37, 1, 25.00, 0, 25.00),
(24, 38, 1, 18.50, 0, 18.50),
(24, 49, 1, 26.00, 0, 26.00),
(24, 50, 1, 18.00, 10, 16.20),
(25, 82, 1, 18.90, 0, 18.90),
(25, 83, 1, 21.00, 10, 18.90),
(26, 88, 1, 15.90, 0, 15.90),
(26, 89, 1, 14.90, 0, 14.90),
(26, 90, 1, 12.90, 0, 12.90),
(26, 84, 1, 13.90, 0, 13.90),
(27, 40, 1, 16.90, 0, 16.90),
(27, 43, 1, 10.90, 0, 10.90),
(28, 67, 1, 19.90, 0, 19.90),
(28, 68, 1, 24.90, 0, 24.90),
(28, 69, 1, 18.90, 0, 18.90),
(28, 70, 1, 19.90, 10, 17.91),
(29, 10, 1, 21.00, 0, 21.00),
(29, 11, 1, 22.00, 5, 20.90),
(30, 1, 1, 21.90, 0, 21.90),
(30, 2, 1, 19.90, 0, 19.90),
(30, 3, 1, 22.50, 10, 20.25),
(31, 77, 1, 24.90, 0, 24.90),
(31, 78, 1, 19.90, 10, 17.91),
(32, 96, 1, 21.90, 0, 21.90),
(32, 97, 1, 24.90, 0, 24.90),
(32, 98, 1, 25.90, 0, 25.90),
(32, 99, 1, 23.90, 0, 23.90),
(33, 71, 1, 12.90, 0, 12.90),
(33, 72, 1, 19.90, 10, 17.91),
(34, 10, 2, 21.00, 0, 42.00),
(34, 13, 1, 24.90, 5, 23.66),
(35, 63, 1, 16.90, 0, 16.90),
(35, 64, 1, 12.90, 0, 12.90),
(35, 39, 1, 13.90, 10, 12.51),
(36, 51, 1, 28.00, 0, 28.00),
(36, 52, 1, 24.00, 0, 24.00),
(36, 53, 1, 18.90, 0, 18.90),
(36, 54, 1, 22.00, 10, 19.80),
(37, 46, 1, 12.90, 0, 12.90),
(37, 47, 1, 14.90, 0, 14.90),
(38, 31, 1, 22.00, 0, 22.00),
(38, 33, 1, 16.90, 0, 16.90),
(38, 34, 1, 17.50, 5, 16.63),
(39, 82, 1, 18.90, 0, 18.90),
(39, 83, 1, 21.00, 0, 21.00),
(39, 84, 1, 13.90, 10, 12.51),
(40, 1, 1, 21.90, 0, 21.90),
(40, 3, 1, 22.50, 0, 22.50),
(40, 5, 1, 23.00, 0, 23.00);

-- Continuación de detalles_pedido (60 registros adicionales)
INSERT INTO detalles_pedido (pedido_id, libro_id, cantidad, precio_unitario, descuento, subtotal_linea) VALUES
(41, 7, 1, 15.90, 0, 15.90),
(41, 8, 1, 14.90, 10, 13.41),
(42, 67, 2, 19.90, 0, 39.80),
(42, 68, 1, 24.90, 0, 24.90),
(42, 69, 1, 18.90, 0, 18.90),
(42, 70, 1, 19.90, 10, 17.91),
(43, 20, 1, 12.90, 0, 12.90),
(43, 21, 1, 13.50, 0, 13.50),
(43, 22, 1, 11.90, 5, 11.31),
(44, 35, 1, 18.90, 0, 18.90),
(44, 36, 1, 19.50, 0, 19.50),
(44, 40, 1, 16.90, 0, 16.90),
(45, 88, 1, 15.90, 0, 15.90),
(45, 89, 1, 14.90, 0, 14.90),
(45, 90, 1, 12.90, 0, 12.90),
(46, 96, 1, 21.90, 0, 21.90),
(46, 97, 1, 24.90, 0, 24.90),
(46, 98, 1, 25.90, 0, 25.90),
(47, 43, 1, 10.90, 0, 10.90),
(47, 44, 1, 15.90, 0, 15.90),
(47, 45, 1, 17.90, 10, 16.11),
(48, 10, 1, 21.00, 0, 21.00),
(48, 11, 1, 22.00, 0, 22.00),
(48, 12, 1, 21.00, 10, 18.90),
(49, 14, 1, 17.90, 0, 17.90),
(49, 15, 1, 16.90, 0, 16.90),
(50, 1, 1, 21.90, 0, 21.90),
(50, 2, 1, 19.90, 0, 19.90),
(50, 3, 1, 22.50, 0, 22.50),
(50, 5, 1, 23.00, 5, 21.85),
(51, 63, 1, 16.90, 0, 16.90),
(51, 64, 1, 12.90, 0, 12.90),
(52, 31, 1, 22.00, 0, 22.00),
(52, 32, 1, 23.50, 0, 23.50),
(52, 33, 1, 16.90, 0, 16.90),
(53, 77, 1, 24.90, 0, 24.90),
(53, 78, 1, 19.90, 0, 19.90),
(53, 79, 1, 17.90, 10, 16.11),
(54, 80, 1, 21.00, 0, 21.00),
(54, 81, 1, 20.00, 0, 20.00),
(54, 75, 1, 9.90, 0, 9.90),
(55, 46, 1, 12.90, 0, 12.90),
(55, 47, 1, 14.90, 0, 14.90),
(55, 48, 1, 11.90, 5, 11.31),
(56, 51, 1, 28.00, 0, 28.00),
(56, 53, 1, 18.90, 0, 18.90),
(56, 54, 1, 22.00, 0, 22.00),
(57, 9, 1, 18.50, 0, 18.50),
(57, 20, 1, 12.90, 0, 12.90),
(58, 67, 1, 19.90, 0, 19.90),
(58, 68, 1, 24.90, 0, 24.90),
(58, 69, 1, 18.90, 10, 17.01),
(59, 82, 1, 18.90, 0, 18.90),
(59, 83, 1, 21.00, 0, 21.00),
(60, 1, 2, 21.90, 0, 43.80),
(60, 3, 1, 22.50, 0, 22.50),
(60, 5, 1, 23.00, 5, 21.85),
(61, 10, 1, 21.00, 0, 21.00),
(61, 14, 1, 17.90, 10, 16.11),
(62, 35, 1, 18.90, 0, 18.90),
(62, 36, 1, 19.50, 0, 19.50),
(62, 37, 1, 25.00, 0, 25.00),
(62, 38, 1, 18.50, 10, 16.65),
(63, 71, 1, 12.90, 0, 12.90),
(63, 72, 1, 19.90, 10, 17.91),
(64, 31, 1, 22.00, 0, 22.00),
(64, 32, 1, 23.50, 0, 23.50),
(64, 33, 1, 16.90, 10, 15.21),
(65, 88, 1, 15.90, 0, 15.90),
(65, 89, 1, 14.90, 0, 14.90),
(65, 90, 1, 12.90, 0, 12.90),
(66, 96, 1, 21.90, 0, 21.90),
(66, 97, 1, 24.90, 0, 24.90),
(66, 98, 1, 25.90, 0, 25.90),
(66, 100, 1, 22.90, 10, 20.61),
(67, 46, 1, 12.90, 0, 12.90),
(67, 47, 1, 14.90, 0, 14.90),
(67, 48, 1, 11.90, 10, 10.71),
(68, 10, 1, 21.00, 0, 21.00),
(68, 11, 1, 22.00, 0, 22.00),
(68, 12, 1, 21.00, 5, 19.95),
(69, 77, 1, 24.90, 0, 24.90),
(69, 78, 1, 19.90, 0, 19.90),
(70, 51, 1, 28.00, 0, 28.00),
(70, 52, 1, 24.00, 0, 24.00),
(70, 53, 1, 18.90, 0, 18.90),
(71, 1, 1, 21.90, 0, 21.90),
(71, 2, 1, 19.90, 0, 19.90),
(72, 63, 1, 16.90, 0, 16.90),
(72, 64, 1, 12.90, 0, 12.90),
(73, 82, 1, 18.90, 0, 18.90),
(73, 83, 1, 21.00, 0, 21.00),
(73, 84, 1, 13.90, 0, 13.90),
(74, 67, 1, 19.90, 0, 19.90),
(74, 68, 1, 24.90, 0, 24.90),
(74, 69, 1, 18.90, 0, 18.90),
(75, 14, 1, 17.90, 0, 17.90),
(75, 15, 1, 16.90, 0, 16.90),
(76, 31, 1, 22.00, 0, 22.00),
(76, 33, 1, 16.90, 0, 16.90),
(77, 88, 1, 15.90, 0, 15.90),
(77, 89, 1, 14.90, 0, 14.90),
(77, 90, 1, 12.90, 0, 12.90),
(78, 10, 1, 21.00, 0, 21.00),
(78, 11, 1, 22.00, 10, 19.80),
(79, 1, 1, 21.90, 0, 21.90),
(79, 5, 1, 23.00, 0, 23.00),
(80, 35, 1, 18.90, 0, 18.90),
(80, 36, 1, 19.50, 5, 18.53);

-- ============================================================
-- FIN DEL SCRIPT DE DATOS DE PRUEBA
-- ============================================================
-- Resumen de registros insertados:
-- - Categorías: 60
-- - Autores: 80
-- - Libros: 100
-- - Libros_Autores: 100
-- - Clientes: 75
-- - Pedidos: 80
-- - Detalles_Pedido: ~160 (múltiples líneas por pedido)
-- ============================================================

-- ===================================================

--  DESPUÉS DE EJECUTAR LO DE ARRIBA, ESCRIBE:

--
--  COMMIT;    (para guardar)
--  o
--  ROLLBACK;  (para cancelar)

--
-- ===================================================

COMMIT;


-- Nensaje de éxito al competar la ejecución
DO $$
BEGIN 
	RAISE  NOTICE 'Se agregaron correctamente los datos en sus respectivas tablas.';

END $$;


