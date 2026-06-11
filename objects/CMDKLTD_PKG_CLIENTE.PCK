CREATE OR REPLACE PACKAGE CMDKLTD_PKG_CLIENTE AS

    -- Retorna o nome do cliente
    FUNCTION obter_nome_cliente(
        p_id_cliente IN NUMBER
    ) RETURN VARCHAR2;

END CMDKLTD_PKG_CLIENTE;
/
CREATE OR REPLACE PACKAGE BODY CMDKLTD_PKG_CLIENTE AS

    FUNCTION obter_nome_cliente(
        p_id_cliente IN NUMBER
    ) RETURN VARCHAR2
    IS
        v  varchar2(100);
        n number(20);
    BEGIN
        SELECT 'teste'
          INTO v
          FROM cliente_tasy
         WHERE 1= p_id_cliente;
         
         select cd_pessoa_fisica into v from pessoa_fisica where cd_pessoa_fisica = 100001;

select CMDKLTD_FN_SOMAR(1,2) into n from dual;

select obter_nome_agencia(25,'1234') into v from dual;

        RETURN 'teste';

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 'Cliente não encontrado';
    END obter_nome_cliente;

END CMDKLTD_PKG_CLIENTE;
/