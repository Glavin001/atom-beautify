INSERT INTO client (HOST, description, created_at)
VALUES('hallpclnx',
       'My linux machine',
       CURRENT_TIMESTAMP);


INSERT INTO thread (thread, description, created_at, client_id)
VALUES(1,
       'Living room camera',
       CURRENT_TIMESTAMP,
       1);


INSERT INTO thread (thread, description, created_at, client_id)
VALUES(2,
       'Porch camera',
       CURRENT_TIMESTAMP,
       1);


INSERT INTO thread (thread, description, created_at, client_id)
VALUES(2,
       'Garden camera',
       CURRENT_TIMESTAMP,
       1);


INSERT INTO client (HOST, description, created_at)
VALUES('shedpclnx',
       'My shed linux machine',
       CURRENT_TIMESTAMP);

