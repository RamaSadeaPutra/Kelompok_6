
-- VIEW BEBAS

--View Penumpang yang Memiliki Tiket
CREATE VIEW PenumpangDenganTiket AS
SELECT p.id_penumpang, p.nama_penumpang, COUNT(t.id_tiket) AS jumlah_tiket
FROM Penumpang p
JOIN Tiket t ON p.id_penumpang = t.id_penumpang
GROUP BY p.id_penumpang, p.nama_penumpang;

SELECT * FROM PenumpangDenganTiket

--View Tiket yang Sudah Dibayar
CREATE VIEW TiketSudahDibayar AS
SELECT t.id_tiket, t.nama_penumpang, p.tanggal_pembayaran, p.statuss AS status_pembayaran
FROM Tiket t
JOIN Pembayaran p ON t.id_tiket = p.id_tiket
WHERE p.statuss = 'Sukses';

SELECT * FROM TiketSudahDibayar

--View Bandara dengan Penerbangan Tertinggi
CREATE VIEW BandaraPenerbanganTerbanyak AS
SELECT b.nama_bandara, COUNT(p.id_penerbangan) AS jumlah_penerbangan
FROM Bandara b
JOIN Penerbangan p ON b.id_bandara = p.id_bandara
GROUP BY b.nama_bandara
ORDER BY jumlah_penerbangan DESC;

SELECT * FROM BandaraPenerbanganTerbanyak

--View Penumpang yang Membayar dengan Cash
CREATE VIEW PenumpangBayarCash AS
SELECT p.id_penumpang, p.nama_penumpang, pb.tanggal_pembayaran, pb.metode_pembayaran
FROM Penumpang p
JOIN Pembayaran pb ON p.id_penumpang = pb.id_pembayaran
WHERE pb.metode_pembayaran = 'Cash';

SELECT * FROM PenumpangBayarCash

--View Penumpang yang Membayar dengan Transfer
CREATE VIEW PenumpangBayarTransfer AS
SELECT p.id_penumpang, p.nama_penumpang, pb.tanggal_pembayaran, pb.metode_pembayaran
FROM Penumpang p
JOIN Pembayaran pb ON p.id_penumpang = pb.id_pembayaran
WHERE pb.metode_pembayaran = 'Transfer';

SELECT * FROM PenumpangBayarTransfer

--View Penumpang yang Membayar dengan Penrbangan status Landing
CREATE VIEW PenerbanganLanding AS
SELECT 
    l.id_log,
    l.no_penerbangan,
    l.tempat_tujuan,
    l.bandara_tujuan,
    l.statuss AS status_penerbangan,
    l.waktu_dibuat
FROM Log_Penerbangan l
WHERE l.statuss = 'Landing';

SELECT * from PenerbanganLanding
