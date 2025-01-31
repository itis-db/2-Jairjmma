BEGIN;


ALTER TABLE Detalles_Pedido
    ADD COLUMN email_cliente VARCHAR(100),
    ADD COLUMN fecha_pedido DATE;


UPDATE Detalles_Pedido dp
SET email_cliente = p.email_cliente,
    fecha_pedido = p.fecha_pedido
FROM Pedidos p
WHERE dp.id_pedido = p.id_pedido;


ALTER TABLE Detalles_Pedido
    DROP CONSTRAINT detalles_pedido_id_pedido_fkey;


ALTER TABLE Pedidos
    DROP CONSTRAINT pedidos_pkey;


ALTER TABLE Pedidos
    ADD PRIMARY KEY (email_cliente, fecha_pedido);


ALTER TABLE Detalles_Pedido
    DROP CONSTRAINT detalles_pedido_pkey;


ALTER TABLE Detalles_Pedido
    ADD PRIMARY KEY (email_cliente, fecha_pedido, codigo_producto);


ALTER TABLE Detalles_Pedido
    ADD FOREIGN KEY (email_cliente, fecha_pedido)
        REFERENCES Pedidos(email_cliente, fecha_pedido);


ALTER TABLE Detalles_Pedido
    DROP COLUMN id_pedido;


COMMIT;
