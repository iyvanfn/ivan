CREATE SEQUENCE exam_id;
INSERT INTO exam (id,discip,ts) SELECT
nextval('exam_id'),
1+random()*(5-1),
TIMESTAMP '2021-09-01 00:00:00'+ random() *(
TIMESTAMP '2022-07-01 00:00:00'-
TIMESTAMP '2022-09-01 00:00:00')
FROM generate_series(1,20);