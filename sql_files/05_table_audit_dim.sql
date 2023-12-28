USE ETL_Telecom
go
drop table if exists dim_audit
go

create table dim_audit (
	id int identity(1,1) not null primary key,
	batch_id int,
	package_name nvarchar(255) not null,
	file_name nvarchar(255) not null,
	rows_extracted int, -- rows in the source file
	rows_inserted int,
	rows_rejected int,
	created_at datetime default(getdate()),
	updated_at datetime default(getdate()),
	SuccessfulProcessingInd nchar(1) not null default 'N'
)
go

-- Create Foreign Keys
IF EXISTS (SELECT *
           FROM   sys.tables
           WHERE  NAME = 'fact_transction'
                  AND type = 'u')  
  ALTER TABLE fact_transaction
    ADD CONSTRAINT fk_fact_transaction_dim_audit foreign key (audit_id) references dim_audit(id)
go
