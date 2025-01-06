
-- Contoh view dengan join

--Menampilkan informasi tiket, nama penumpang, maskapai, dan tempat tujuan.
CREATE VIEW InfoTiket AS
SELECT t.id_tiket, p.nama_penumpang, t.nama_maskapai, t.tempat_tujuan
FROM Tiket t
JOIN Penumpang p ON t.id_penumpang = p.id_penumpang;
SELECT * FROM InfoTiket

--Menampilkan nama penumpang, harga tiket, dan tanggal pembayaran.
CREATE VIEW DetailPembayaran AS
SELECT p.nama_penumpang, py.harga_tiket, py.tanggal_pembayaran
FROM Penumpang p
JOIN Pembayaran py ON p.id_penumpang = py.id_pembayaran;

SELECT * FROM DetailPembayaran

--Menampilkan informasi tiket, nama penumpang, harga tiket, dan status pembayaran.
CREATE VIEW TiketDanPembayaran AS
SELECT t.id_tiket, p.nama_penumpang, py.harga_tiket, py.statuss
FROM Tiket t
JOIN Pembayaran py ON t.id_tiket = py.id_tiket
JOIN Penumpang p ON t.id_penumpang = p.id_penumpang;
SELECT * FROM TiketDanPembayaran	

--Menampilkan nomor penerbangan, tujuan, bandara tujuan, dan nama penumpang 

CREATE VIEW PenerbanganDetail AS
SELECT penerbangan.no_penerbangan, t.tempat_tujuan,o.bandara_tujuan, p.nama_penumpang
FROM Penerbangan penerbangan
JOIN Tiket t ON penerbangan.id_penerbangan = t.id_penerbangan
JOIN Tiket o ON penerbangan.id_penerbangan = o.id_penerbangan
JOIN Penumpang p ON t.id_penumpang = p.id_penumpang;

SELECT * FROM PenerbanganDetail

--Menampilkan ID tiket, nama bandara, dan kota bandara asal penerbangan.
CREATE VIEW TiketDenganBandara AS
SELECT t.id_tiket, b.nama_bandara, b.nama_kota
FROM Tiket t
JOIN Penerbangan penerbangan ON t.id_penerbangan = penerbangan.id_penerbangan
JOIN Bandara b ON penerbangan.id_bandara = b.id_bandara;

SELECT * FROM TiketDenganBandara
