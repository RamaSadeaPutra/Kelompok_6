
--VIEW AGREGAT

--JumlahTiket Menampilkan jumlah total tiket yang dipesan.
CREATE VIEW JumlahTiket AS
SELECT COUNT(*) AS jumlah_tiket
FROM Tiket;

SELECT * FROM JumlahTiket

--TotalPendapatan Menampilkan total pendapatan dari tiket yang telah dibayar.
CREATE VIEW TotalPendapatan AS
SELECT SUM(harga_tiket) AS total_pendapatan
FROM Pembayaran;

SELECT * FROM TotalPendapatan

--TiketPerPenumpang Menampilkan jumlah tiket yang dipesan oleh setiap penumpang.
CREATE VIEW TiketPerPenumpang AS
SELECT p.nama_penumpang, COUNT(t.id_tiket) AS jumlah_tiket
FROM Penumpang p
JOIN Tiket t ON p.id_penumpang = t.id_penumpang
GROUP BY p.nama_penumpang;

SELECT * FROM TiketPerPenumpang

--HargaTiketMinMax Menampilkan harga tiket terendah dan tertinggi.
CREATE VIEW HargaTiketMinMax AS
SELECT 
    MIN(harga_tiket) AS harga_tiket_terendah,
    MAX(harga_tiket) AS harga_tiket_tertinggi
FROM Penerbangan;

SELECT * FROM HargaTiketMinMax

--RataRataHargaTiketPerMaskapai Menampilkan rata-rata harga tiket untuk setiap maskapai penerbangan.
CREATE VIEW RataRataHargaTiketPerMaskapai AS
SELECT nama_maskapai, AVG(harga_tiket) AS rata_rata_harga_tiket
FROM Penerbangan
GROUP BY nama_maskapai;

SELECT * FROM RataRataHargaTiketPerMaskapai

