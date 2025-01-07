
--porsedur

--Prosedur untuk Menambahkan Penumpang Baru
CREATE PROCEDURE TambahPenumpang
    @nama_penumpang VARCHAR(50),
    @no_hp_penumpang VARCHAR(25),
    @no_ktp VARCHAR(25),
    @no_paspor VARCHAR(25)
AS
BEGIN
    INSERT INTO Penumpang (nama_penumpang, no_hp_penumpang, no_ktp, no_paspor)
    VALUES (@nama_penumpang, @no_hp_penumpang, @no_ktp, @no_paspor);
END;

EXEC TambahPenumpang 'Jane Doe', '0987654321', '1122334455', '5566778899';

--Prosedur untuk Memperbarui Status Pembayaran
CREATE PROCEDURE PerbaruiStatusPembayaran
    @id_tiket INT,
    @status_pembayaran VARCHAR(10)
AS
BEGIN
    UPDATE Pembayaran
    SET statuss = @status_pembayaran
    WHERE id_tiket = @id_tiket;
END;

EXEC PerbaruiStatusPembayaran 92, 'Sukses';

-- Prosedur untuk Menghitung Total Pendapatan dari Pembayaran
CREATE PROCEDURE HitungTotalPendapatan
AS
BEGIN
    DECLARE @total_pendapatan DECIMAL(10, 2);

    SELECT @total_pendapatan = SUM(harga_tiket)
    FROM Pembayaran
    WHERE statuss = 'Sukses';

    PRINT 'Total Pendapatan: ' + CAST(@total_pendapatan AS VARCHAR);
END;

EXEC HitungTotalPendapatan;

