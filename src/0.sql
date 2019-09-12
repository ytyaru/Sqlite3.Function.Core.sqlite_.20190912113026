.echo on
select sqlite_version();
select sqlite_source_id();

select sqlite_compileoption_get(0);
select sqlite_compileoption_used(sqlite_compileoption_get(0));
select sqlite_compileoption_used('SQLITE_ENABLE_OFFSET_SQL_FUNC');

create table T(A integer);
insert into T values(0);
select sqlite_offset((select * from T));
select sqlite_offset('T.A');

