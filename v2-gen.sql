INSERT INTO Marcas (nombre_marca, pais_origen)
VALUES
    ('Optimum Nutrition', 'USA'),
    ('MyProtein', 'UK'),
    ('MuscleTech', 'Canada');


INSERT INTO Productos (codigo_producto, nombre_producto, precio, nombre_marca)
VALUES
    ('PROT001', 'Whey Protein', 29.99, 'Optimum Nutrition'),
    ('CREA002', 'Creatina Monohidrato', 19.99, 'MyProtein'),
    ('BCAA003', 'BCAA 2:1:1', 24.99, 'MuscleTech');


INSERT INTO Clientes (email, nombre_cliente, telefono)
VALUES
    ('cliente1@example.com', 'Juan Pérez', '123456789'),
    ('cliente2@example.com', 'Ana Gómez', '987654321');


INSERT INTO Pedidos (email_cliente, fecha_pedido)
VALUES
    ('cliente1@example.com', '2023-10-01'),
    ('cliente2@example.com', '2023-10-02');


INSERT INTO Detalles_Pedido (id_pedido, codigo_producto, cantidad)
VALUES
    (1, 'PROT001', 2),
    (1, 'CREA002', 1),
    (2, 'BCAA003', 3);
