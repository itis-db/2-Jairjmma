CREATE TABLE Productos_Historial (
                                     id_historial SERIAL PRIMARY KEY,
                                     codigo_producto VARCHAR(50),
                                     nombre_producto VARCHAR(100),
                                     precio DECIMAL(10, 2),
                                     nombre_marca VARCHAR(100),
                                     fecha_cambio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE OR REPLACE FUNCTION guardar_historial_productos()
    RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO Productos_Historial (codigo_producto, nombre_producto, precio, nombre_marca)
    VALUES (OLD.codigo_producto, OLD.nombre_producto, OLD.precio, OLD.nombre_marca);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trigger_historial_productos
    BEFORE UPDATE ON Productos
    FOR EACH ROW EXECUTE FUNCTION guardar_historial_productos();
