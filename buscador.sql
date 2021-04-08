DECLARE
sql_str VARCHAR2(1000);
sql_del VARCHAR2(1000);
cadena_buscar VARCHAR(200);
total_val number;
cursor c1 IS
SELECT all_tables.OWNER,all_tables.TABLE_NAME,all_tab_columns.COLUMN_NAME,all_tab_columns.DATA_TYPE 
FROM all_tables 
INNER JOIN all_tab_columns ON all_tables.TABLE_NAME = all_tab_columns.TABLE_NAME
WHERE
DATA_TYPE IN ('CHAR','VARCHAR2')
--AND owner='WL_VAPMGMT'
;
BEGIN
    cadena_buscar:='/cyc/pendientes';
    FOR fila IN c1
    LOOP

        sql_str := 'SELECT COUNT(*) FROM '||fila.OWNER||'.'||fila.TABLE_NAME||' where '||fila.COLUMN_NAME||' like ''%'||cadena_buscar||'%''';
        --sql_del := 'DELETE FROM '||fila.OWNER||'.'||fila.TABLE_NAME||' where '||fila.COLUMN_NAME||' like '''||cadena_buscar||'''';
        /**/
        EXECUTE IMMEDIATE sql_str INTO total_val;
            IF total_val > 0 then
            dbms_output.put_line(sql_str);
            dbms_output.put_line(fila.OWNER||'.'||fila.TABLE_NAME||'.'||fila.COLUMN_NAME||' Aciertos '||total_val);
            --dbms_output.put_line(sql_del);
            dbms_output.put_line('---');
        end IF;
        /**/
    END LOOP;
END;