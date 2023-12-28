USE ETL_Telecom
go
drop table if exists fact_transaction;
go
create table fact_transaction (
id int not null identity (1,1),
Transaction_id	int not null,
IMSI varchar(9) not null,
subscriber_id int not null,
TAC varchar(14) ,
SNR varchar(14) ,
IMEI varchar(14) ,
CELL int not null,
LAC  int not null,
EVENT_TYPE varchar(1),
EVENT_TS datetime not null,
audit_id int not null default (-1)

constraint pk_fact_transaction_id primary key (id)

)