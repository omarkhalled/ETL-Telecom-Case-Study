USE ETL_Telecom
go
drop table if exists err_destination_output;
go
CREATE TABLE err_destination_output (
    [id] int,
    [imsi] varchar(9),
    [imei] varchar(14),
    [subscriber_id] int,
    [cell] int,
    [lac] int,
    [event_type] varchar(2),
    [event_ts] datetime,
    [tac] varchar(8),
    [snr] varchar(8),
    [ErrorCode] int,
    [ErrorColumn] int,
	audit_id int not null default(-1)
)