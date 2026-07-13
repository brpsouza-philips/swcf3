CREATE OR REPLACE PACKAGE CMDKLTD_CLI12_PCK AS

    FUNCTION obter_nome_cliente2(
        p_id_cliente IN NUMBER,
        p_nm_cliente IN VARCHAR2
    ) RETURN VARCHAR2;

END CMDKLTD_CLI12_PCK;
/
CREATE OR REPLACE PACKAGE BODY CMDKLTD_CLI12_PCK AS

    FUNCTION obter_nome_cliente2(
        p_id_cliente IN NUMBER,
        p_nm_cliente IN VARCHAR2
    ) RETURN VARCHAR2
    IS
        v  varchar2(100);
        n number(20);
    BEGIN
        SELECT 'teste'
          INTO v
          FROM cliente_tasy
         WHERE 1= p_id_cliente;

        select obter_nome_pf('1') into v from dual;

       select CMDKLTD_CLI11_PCK.obter_nome_cliente2(1) into v from dual;

        RETURN n;

    END obter_nome_cliente2;

END CMDKLTD_CLI12_PCK;
/