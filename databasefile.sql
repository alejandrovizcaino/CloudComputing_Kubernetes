CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(42),
    description VARCHAR(42),
    stock VARCHAR(42)
);

INSERT INTO products (name, description, stock)
	VALUES ('Producto1', 'Descripcion1', '100');

INSERT INTO products (name, description, stock)
	VALUES ('Producto2', 'Descripcion2', '50');