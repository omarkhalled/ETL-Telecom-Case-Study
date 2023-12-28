USE ETL_Telecom
go
CREATE TABLE err_source_output (
	id int identity(1,1),
    [Flat File Source Error Output Column] varchar(max),
    [ErrorCode] int,
    [ErrorColumn] int,
	audit_id int not null default(-1)
)
go
-- Drop foregin Keys if exists
IF EXISTS (
	SELECT *
	FROM   sys.foreign_keys
	WHERE  NAME = 'fk_fact_transaction_dim_audit'
		AND parent_object_id = Object_id('fact_transaction')
	)
  ALTER TABLE fact_transaction
    DROP CONSTRAINT fk_fact_transaction_dim_audit;
