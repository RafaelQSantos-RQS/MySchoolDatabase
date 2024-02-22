DO $$ DECLARE
    r RECORD;
BEGIN
    -- Desativa a verificação de chave estrangeira temporariamente
    SET session_replication_role = 'replica';

    -- Dropa as tabelas em ordem inversa de criação para evitar erros de dependência
    FOR r IN (
        SELECT tablename FROM pg_tables WHERE schemaname = 'public' ORDER BY tablename DESC
    ) LOOP
        EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(r.tablename) || ' CASCADE';
    END LOOP;

    -- Ativa novamente a verificação de chave estrangeira
    RESET session_replication_role;
END $$;