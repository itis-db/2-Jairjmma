CREATE TABLE Marcas (
                        nombre_marca VARCHAR(100) PRIMARY KEY,
                        pais_origen VARCHAR(50)
);


CREATE TABLE Productos (
                           codigo_producto VARCHAR(50) PRIMARY KEY,
                           nombre_producto VARCHAR(100),
                           precio DECIMAL(10, 2),
                           nombre_marca VARCHAR(100),
                           FOREIGN KEY (nombre_marca) REFERENCES Marcas(nombre_marca)
);


CREATE TABLE Clientes (
                          email VARCHAR(100) PRIMARY KEY,
                          nombre_cliente VARCHAR(100),
                          telefono VARCHAR(15)
);


CREATE TABLE Pedidos (
                         id_pedido SERIAL PRIMARY KEY,
                         email_cliente VARCHAR(100),
                         fecha_pedido DATE,
                         FOREIGN KEY (email_cliente) REFERENCES Clientes(email)
);

CREATE TABLE Detalles_Pedido (
                                 id_pedido INT,
                                 codigo_producto VARCHAR(50),
                                 cantidad INT,
                                 PRIMARY KEY (id_pedido, codigo_producto),
                                 FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
                                 FOREIGN KEY (codigo_producto) REFERENCES Productos(codigo_producto)
);
