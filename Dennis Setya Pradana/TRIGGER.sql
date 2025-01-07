--TRIGGER

--Trigger untuk Memeriksa Keunikan Nomor KTP
CREATE TRIGGER CekKTPUnik
ON Penumpang
FOR INSERT
AS
BEGIN
    DECLARE @ktp VARCHAR(25);

    SELECT @ktp = no_ktp
    FROM inserted;
    
	IF EXISTS (SELECT 1 FROM Penumpang WHERE no_ktp = @ktp)
    BEGIN
        RAISERROR ('Nomor KTP sudah terdaftar.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;

INSERT INTO Penumpang (nama_penumpang, no_hp_penumpang, no_ktp)
VALUES ('yaya', '0812367891', '1234567890123456');

--Trigger untuk Menambahkan Waktu Diedit Saat Update Data Penumpang
CREATE TRIGGER UpdateWaktuDieditPenumpang
ON Penumpang
AFTER UPDATE
AS
BEGIN
    UPDATE Penumpang
    SET waktu_diedit = GETDATE()
    WHERE id_penumpang IN (SELECT id_penumpang FROM inserted);
END;

UPDATE Penumpang
SET nama_penumpang = 'John Doe'
WHERE id_penumpang = 1;

SELECT * From Penumpang 

