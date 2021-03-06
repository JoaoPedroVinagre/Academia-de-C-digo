CREATE OR REPLACE PROCEDURE ConsultarColaborador
(
    vNome OUT VARCHAR2,
    vNumCartaoCidadao IN OUT VARCHAR2,
    vMorada OUT VARCHAR2,
    vTelefone OUT VARCHAR2,
    vEmail OUT VARCHAR2,
    vDataNascimento OUT DATE,
    vFoto OUT BLOB,
    vCV OUT BLOB
)
AS
BEGIN

    IF vNumCartaoCidadao IS NOT NULL THEN
        SELECT 
            Nome ,
            Morada,
            Telefone  ,
            Email ,
            DataNascimento,
            Foto ,
            CV 
            INTO
            vNome,
            vMorada,
            vTelefone,
            vEmail,
            vDataNascimento,
            vFoto,
            vCV
        
            FROM Colaboradores WHERE NumCartaoCidadao = vNumCartaoCidadao; 
    END IF;
END;
