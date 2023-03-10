-- INSERT FOR TABLE  : A_CLIENTS
--  1
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2023-02-01 14:25:20',
    TIMESTAMP '2023-02-02 14:25:25',
    1,
    'Audi',
    'Diesel',
    'Red',
    'EF-031-DC'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2023-02-01 15:25:20',
    TIMESTAMP '2023-02-02 13:25:25',
    123,
    1,
    'EF-031-DC'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    123,
    1
);

-- 2
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2022-01-01 19:00:20',
    TIMESTAMP '2022-02-02 13:25:25',
    1,
    'FIAT',
    'Diesel',
    'Jaune',
    'EF-031-AZ'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2022-01-01 18:00:20',
    TIMESTAMP '2022-02-02 11:25:25',
    1888,
    1,
    'EF-031-AZ'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1888,
    1
);

--  3
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2022-11-01 12:00:20',
    TIMESTAMP '2022-11-21 13:25:25',
    0,
    'MERCE',
    'Diesel',
    'Black',
    'DB-031-AZ'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2022-11-01 12:00:20',
    TIMESTAMP '2022-11-21 11:45:25',
    1888,
    1,
    'DB-031-AZ'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1888,
    1
);

-- 4
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2021-03-11 09:00:20',
    TIMESTAMP '2023-02-02 14:25:25',
    1,
    'Audi',
    'Diesel',
    'Red',
    'EF-031-DC'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2021-03-11 09:24:20',
    TIMESTAMP '2023-02-02 14:10:25',
    18228,
    1,
    'EF-031-DC'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    18228,
    1
);

-- 5
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2019-12-31 19:00:20',
    TIMESTAMP '2020-01-02 13:25:25',
    1,
    'FIAT',
    'Diesel',
    'Jaune',
    'EF-031-AZ'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2019-12-31 19:12:20',
    TIMESTAMP '2020-01-02 10:55:25',
    45,
    1,
    'EF-031-AZ'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    45,
    1
);

-- 6
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2022-12-01 19:00:20',
    TIMESTAMP '2022-11-21 13:25:25',
    0,
    'MERCE',
    'Diesel',
    'Black',
    'DB-031-AZ'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2022-12-01 19:44:20',
    TIMESTAMP '2022-11-21 11:25:25',
    467675,
    1,
    'DB-031-AZ'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    467675,
    1
);

-- 7
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2023-02-01 13:00:20',
    TIMESTAMP '2023-02-02 14:25:25',
    0,
    'Audi',
    'Diesel',
    'Red',
    'EF-031-DC'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2023-02-01 13:12:20',
    TIMESTAMP '2023-02-02 11:12:25',
    777,
    1,
    'EF-031-DC'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    777,
    1
);

-- 8
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2022-01-01 19:00:20',
    TIMESTAMP '2022-02-02 13:25:25',
    0,
    'FIAT',
    'Diesel',
    'Jaune',
    'EF-031-AZ'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2022-01-01 19:10:20',
    TIMESTAMP '2022-02-02 11:25:25',
    778,
    1,
    'EF-031-AZ'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    778,
    1
);

-- 9
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2022-12-01 19:00:20',
    TIMESTAMP '2022-11-21 13:25:25',
    0,
    'MERCE',
    'Diesel',
    'Black',
    'DB-031-AZ'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2022-12-01 19:55:20',
    TIMESTAMP '2022-11-21 11:25:25',
    7762,
    1,
    'DB-031-AZ'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    7762,
    1
);

-- 10
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2023-02-01 13:00:20',
    TIMESTAMP '2023-02-02 14:25:25',
    0,
    'Audi',
    'Diesel',
    'Red',
    'EF-031-DC'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2023-02-01 13:17:20',
    TIMESTAMP '2023-02-02 14:11:25',
    7762,
    1,
    'EF-031-DC'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    7762,
    1
);

-- 11
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2022-01-01 19:00:20',
    TIMESTAMP '2022-02-02 13:25:25',
    1,
    'FIAT',
    'Diesel',
    'Jaune',
    'EF-031-AZ'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2022-11-01 19:10:20',
    TIMESTAMP '2022-12-02 11:25:25',
    87778,
    1,
    'EF-031-AZ'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    87778,
    1
);

-- 12
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2022-12-01 19:00:20',
    TIMESTAMP '2022-11-21 13:25:25',
    1,
    'MERCE',
    'Diesel',
    'Black',
    'DB-031-AZ'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2022-12-02 19:00:20',
    TIMESTAMP '2022-11-22 13:25:25',
    767667,
    1,
    'DB-031-AZ'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    767667,
    1
);

-- 13
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2023-02-01 13:00:20',
    TIMESTAMP '2023-02-02 14:25:25',
    1,
    'Audi',
    'Diesel',
    'Red',
    'EF-031-DC'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2023-02-01 13:00:20',
    TIMESTAMP '2023-02-02 14:25:25',
    1091,
    1,
    'EF-031-DC'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1091,
    1
);

-- 14
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2022-01-01 19:00:20',
    TIMESTAMP '2022-02-02 13:25:25',
    0,
    'FIAT',
    'Diesel',
    'Jaune',
    'EF-031-AZ'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2022-01-01 20:00:20',
    TIMESTAMP '2022-02-02 11:25:25',
    657,
    1,
    'EF-031-AZ'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    657,
    1
);

-- 15
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2022-12-01 19:00:20',
    TIMESTAMP '2022-11-21 13:25:25',
    1,
    'MERCE',
    'Diesel',
    'Black',
    'DB-031-AZ'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2022-12-01 19:00:20',
    TIMESTAMP '2022-11-21 13:25:25',
    657345,
    1,
    'DB-031-AZ'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    657345,
    1
);

-- 16
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2022-12-01 19:00:20',
    TIMESTAMP '2022-11-21 13:25:25',
    1,
    'Bentley',
    'Fuel',
    'White',
    'GB-031-AZ'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2022-12-01 19:00:20',
    TIMESTAMP '2022-11-21 13:25:25',
    56,
    1,
    'GB-031-AZ'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    56,
    1
);

-- 17
INSERT INTO A_CLIENTS (
    CLIENT_DEPOT,
    CLIENT_RECUP,
    CLIENT_PAYMENT_OK,
    CLIENT_CAR_BRAND_NAME,
    CLIENT_CAR_ENGINE,
    CLIENT_CAR_COULEUR,
    CLIENT_CAR_IMMATRICULATION
) VALUES (
    TIMESTAMP '2022-12-01 19:00:20',
    TIMESTAMP '2022-11-21 13:25:25',
    1,
    'Ford',
    'Fuel',
    'Red',
    'GB-031-YY'
);

INSERT INTO A_GARAGE (
    GARAGE_CLIENT_ID,
    GARAGE_FACTURE_CLIENT,
    GARAGE_WORK_START,
    GARAGE_WORK_STOP,
    GARAGE_PAYMENT_PRICE,
    GARAGE_PAYMENT_OK,
    GARAGE_CAR_IMMATRICULATION
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    1,
    TIMESTAMP '2022-12-01 19:00:20',
    TIMESTAMP '2022-11-21 13:25:25',
    546,
    1,
    'GB-031-YY'
);

INSERT INTO A_PAID_STATUS (
    PAID_STATUS_CLIENT_ID,
    PAID_STATUS_PRICE,
    PAID_STATUS_CLIENT_PAYMENT_OK
) VALUES (
    ( SELECT MAX(CLIENT_ID) FROM A_CLIENTS ),
    546,
    1
);