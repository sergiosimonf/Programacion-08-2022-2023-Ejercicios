DROP TABLE IF EXISTS THamburguesas;
DROP TABLE IF EXISTS TIngredientes;
DROP TABLE IF EXISTS TLinea_Hamburguesa;

CREATE TABLE IF NOT EXISTS THamburguesas(
    id      VARCHAR PRIMARY KEY NOT NULL,
    nombre  VARCHAR NOT NULL,
    precio  REAL NOT NULL
);

CREATE TABLE IF NOT EXISTS TIngredientes(
    id      INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre  VARCHAR NOT NULL,
    precio  REAL NOT NULL
);

CREATE TABLE IF NOT EXISTS TLinea_Hamburguesa(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_ham VARCHAR NOT NULL,
    id_ing INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    FOREIGN KEY (id_ham) REFERENCES THamburguesas(id)
    FOREIGN KEY (id_ing) REFERENCES TIngredientes(id)
);