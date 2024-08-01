\copy localidades (id_departamento, nombre_departamento, id_municipio, nombre_municipio) 
FROM '/home/camper/Documentos/jc_con/postgres/taller_volcado_datos/localidades.csv' 
DELIMITER  ','
CSV HEADER;


INSERT INTO departamento (id, nombre)
    SELECT DISTINCT 
        id_departamento,
        nombre_departamento
    FROM localidades;

INSERT INTO municipio (id, nombre)
    SELECT DISTINCT
        id_municipio,
        nombre_municipio
    FROM localidades;
    