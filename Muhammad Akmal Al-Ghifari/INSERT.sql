INSERT INTO Penumpang (nama_penumpang, no_hp_penumpang, no_ktp, no_paspor, waktu_dibuat, waktu_diedit)
VALUES
('Ahmad Fadli', '081234567890', '1234567890123456', 'A1234567', GETDATE(), GETDATE()),
('Budi Santoso', '082134567891', '2345678901234567', 'B2345678', GETDATE(), GETDATE()),
('Citra Dewi', '083134567892', '3456789012345678', 'C3456789', GETDATE(), GETDATE()),
('Doni Pratama', '084134567893', '4567890123456789', 'D4567890', GETDATE(), GETDATE()),
('Eka Susanti', '085134567894', '5678901234567890', 'E5678901', GETDATE(), GETDATE()),
('Farah Rahma', '086134567895', '6789012345678901', 'F6789012', GETDATE(), GETDATE()),
('Gilang Saputra', '087134567896', '7890123456789012', 'G7890123', GETDATE(), GETDATE()),
('Hana Kartika', '088134567897', '8901234567890123', 'H8901234', GETDATE(), GETDATE()),
('Ivan Kurniawan', '089134567898', '9012345678901234', 'I9012345', GETDATE(), GETDATE()),
('Joko Widodo', '081234567899', '0123456789012345', 'J0123456', GETDATE(), GETDATE()),
('Kiki Amelia', '082234567800', '1234509876543210', 'K1234567', GETDATE(), GETDATE()),
('Lina Putri', '083234567801', '2345610987654321', 'L2345678', GETDATE(), GETDATE()),
('Mahmud Fauzi', '084234567802', '3456721098765432', 'M3456789', GETDATE(), GETDATE()),
('Nina Marlina', '085234567803', '4567832109876543', 'N4567890', GETDATE(), GETDATE()),
('Oki Wijaya', '086234567804', '5678943210987654', 'O5678901', GETDATE(), GETDATE()),
('Putri Ayu', '087234567805', '6789054321098765', 'P6789012', GETDATE(), GETDATE()),
('Qori Hasan', '088234567806', '7890165432109876', 'Q7890123', GETDATE(), GETDATE()),
('Rizky Ramadhan', '089234567807', '8901276543210987', 'R8901234', GETDATE(), GETDATE()),
('Siti Aisyah', '081334567808', '9012387654321098', 'S9012345', GETDATE(), GETDATE()),
('Teguh Ardi', '082334567809', '0123498765432109', 'T0123456', GETDATE(), GETDATE()),
('Umi Salamah', '083334567810', '1234509876512340', 'U1234567', GETDATE(), GETDATE()),
('Vina Sari', '084334567811', '2345610987623451', 'V2345678', GETDATE(), GETDATE()),
('Wawan Setiawan', '085334567812', '3456721098734562', 'W3456789', GETDATE(), GETDATE()),
('Xenia Firdaus', '086334567813', '4567832109845673', 'X4567890', GETDATE(), GETDATE()),
('Yusuf Maulana', '087334567814', '5678943210956784', 'Y5678901', GETDATE(), GETDATE()),
('Zahra Anisa', '088334567815', '6789054321067895', 'Z6789012', GETDATE(), GETDATE()),
('Andi Syahputra', '089334567816', '7890165432178906', 'A7890123', GETDATE(), GETDATE()),
('Bella Hartati', '081434567817', '8901276543289017', 'B8901234', GETDATE(), GETDATE()),
('Cahyadi Rachman', '082434567818', '9012387654390128', 'C9012345', GETDATE(), GETDATE()),
('Dewi Lestari', '083434567819', '0123498765401239', 'D0123456', GETDATE(), GETDATE());

INSERT INTO Bandara (nama_bandara, nama_kota, nama_negara) VALUES
('Soekarno-Hatta International Airport', 'Tangerang', 'Indonesia'),
('Ngurah Rai International Airport', 'Denpasar', 'Indonesia'),
('Juanda International Airport', 'Surabaya', 'Indonesia'),
('Kuala Lumpur International Airport', 'Sepang', 'Malaysia'),
('Singapore Changi Airport', 'Singapore', 'Singapore'),
('Don Mueang International Airport', 'Bangkok', 'Thailand'),
('Suvarnabhumi Airport', 'Bangkok', 'Thailand'),
('Incheon International Airport', 'Seoul', 'South Korea'),
('Narita International Airport', 'Tokyo', 'Japan'),
('Hong Kong International Airport', 'Hong Kong', 'China'),
('Dubai International Airport', 'Dubai', 'United Arab Emirates'),
('Heathrow Airport', 'London', 'United Kingdom'),
('Gatwick Airport', 'London', 'United Kingdom'),
('Charles de Gaulle Airport', 'Paris', 'France'),
('Frankfurt Airport', 'Frankfurt', 'Germany'),
('Schiphol Airport', 'Amsterdam', 'Netherlands'),
('Los Angeles International Airport', 'Los Angeles', 'United States'),
('John F. Kennedy International Airport', 'New York', 'United States'),
('Chicago International Airport', 'Chicago', 'United States'),
('San Francisco International Airport', 'San Francisco', 'United States'),
('Toronto Pearson International Airport', 'Toronto', 'Canada'),
('Vancouver International Airport', 'Vancouver', 'Canada'),
('Sydney Kingsford Smith Airport', 'Sydney', 'Australia'),
('Melbourne Airport', 'Melbourne', 'Australia'),
('Kualanamu International Airport', 'Medan', 'Indonesia'),
('Adisutjipto International Airport', 'Yogyakarta', 'Indonesia'),
('Sultan Hasanuddin International Airport', 'Makassar', 'Indonesia'),
('Polonia International Airport', 'Medan', 'Indonesia'),
('Sam Ratulangi International Airport', 'Manado', 'Indonesia'),
('Sepinggan International Airport', 'Balikpapan', 'Indonesia');

INSERT INTO Penerbangan (id_bandara, no_penerbangan, nama_maskapai, tempat_tujuan, bandara_tujuan, harga_tiket, waktu_keberangkatan, waktu_kedatangan) 
VALUES
(1, 'GA 101', 'Garuda Indonesia', 'Tangerang', 'Juanda International Airport', 1000000.00, '2025-01-06 10:00:00', '2025-01-06 14:00:00'),
(2, 'QG 202', 'Citilink', 'Denpasar', 'Ngurah Rai International Airport', 800000.00, '2025-01-06 13:00:00', '2025-01-06 17:00:00'),
(3, 'SJ 303', 'Sriwijaya Air', 'Surabaya', 'Juanda International Airport', 600000.00, '2025-01-06 09:00:00', '2025-01-06 13:00:00'),
(4, 'JT 404', 'Lion Air', 'Sepang', 'Kuala Lumpur International Airport', 700000.00, '2025-01-06 08:30:00', '2025-01-06 12:30:00'),
(5, 'GA 505', 'Garuda Indonesia', 'Singapore', 'Singapore Changi Airport', 850000.00, '2025-01-06 14:00:00', '2025-01-06 18:00:00'),
(6, 'QG 606', 'Citilink', 'Bangkok', 'Don Mueang International Airport', 950000.00, '2025-01-06 15:00:00', '2025-01-06 19:00:00'),
(7, 'RS 890', 'Citilink', 'Bangkok', 'Suvarnabhumi Airport', 920000.00, '2025-01-03 15:00:00', '2025-01-03 19:00:00'),
(8, 'SJ 707', 'Sriwijaya Air', 'Seoul', 'Incheon International Airport', 900000.00, '2025-01-06 10:30:00', '2025-01-06 14:30:00'),
(9, 'JT 808', 'Lion Air', 'Tokyo', 'Narita International Airport', 700000.00, '2025-01-06 07:00:00', '2025-01-06 11:00:00'),
(10, 'GA 909', 'Garuda Indonesia', 'Hong Kong', 'Hong Kong International Airport', 750000.00, '2025-01-06 11:00:00', '2025-01-06 15:00:00'),
(11, 'QG 1010', 'Citilink', 'Dubai', 'Dubai International Airport', 650000.00, '2025-01-06 16:00:00', '2025-01-06 20:00:00'),
(12, 'SJ 1111', 'Sriwijaya Air', 'London', 'Heathrow Airport', 950000.00, '2025-01-06 06:00:00', '2025-01-06 10:00:00'),
(13, 'JT 1212', 'Lion Air', 'London', 'Gatwick Airport', 700000.00, '2025-01-06 09:00:00', '2025-01-06 13:00:00'),
(14, 'GA 1313', 'Garuda Indonesia', 'Paris', 'Charles de Gaulle Airport', 850000.00, '2025-01-06 14:00:00', '2025-01-06 18:00:00'),
(15, 'QG 1414', 'Citilink', 'Frankfurt', 'Frankfurt Airport', 600000.00, '2025-01-06 12:00:00', '2025-01-06 16:00:00'),
(16, 'SJ 1515', 'Sriwijaya Air', 'Amsterdam', 'Schiphol Airport', 750000.00, '2025-01-06 10:00:00', '2025-01-06 14:00:00'),
(17, 'JT 1616', 'Lion Air', 'Los Angeles', 'Los Angeles International Airport', 800000.00, '2025-01-06 07:30:00', '2025-01-06 11:30:00'),
(18, 'GA 1717', 'Garuda Indonesia', 'New York', 'John F. Kennedy International Airport', 900000.00, '2025-01-06 15:30:00', '2025-01-06 19:30:00'),
(19, 'QG 1818', 'Citilink', 'Chicago', 'Chicago Hare International Airport', 750000.00, '2025-01-06 13:00:00', '2025-01-06 17:00:00'),
(20, 'SJ 1919', 'Sriwijaya Air', 'San Francisco', 'San Francisco International Airport', 650000.00, '2025-01-06 08:00:00', '2025-01-06 12:00:00'),
(21, 'JT 2020', 'Lion Air', 'Toronto', 'Toronto Pearson International Airport', 850000.00, '2025-01-06 14:30:00', '2025-01-06 18:30:00'),
(22, 'GA 2121', 'Garuda Indonesia', 'Vancouver', 'Vancouver International Airport', 950000.00, '2025-01-06 12:30:00', '2025-01-06 16:30:00'),
(23, 'QG 2222', 'Citilink', 'Sydney', 'Sydney Kingsford Smith Airport', 600000.00, '2025-01-06 11:00:00', '2025-01-06 15:00:00'),
(24, 'SJ 2323', 'Sriwijaya Air', 'Melbourne', 'Melbourne Airport', 700000.00, '2025-01-06 09:30:00', '2025-01-06 13:30:00'),
(25, 'JT 2424', 'Lion Air', 'Medan', 'Kualanamu International Airport', 800000.00, '2025-01-06 16:30:00', '2025-01-06 20:30:00'),
(26, 'GA 2525', 'Garuda Indonesia', 'Yogyakarta', 'Adisutjipto International Airport', 950000.00, '2025-01-06 07:00:00', '2025-01-06 11:00:00'),
(27, 'QG 2626', 'Citilink', 'Makassar', 'Sultan Hasanuddin International Airport', 600000.00, '2025-01-06 15:00:00', '2025-01-06 19:00:00'),
(28, 'SJ 2727', 'Sriwijaya Air', 'Medan', 'Polonia International Airport', 800000.00, '2025-01-06 13:00:00', '2025-01-06 17:00:00'),
(29, 'JT 2828', 'Lion Air', 'Manado', 'Sam Ratulangi International Airport', 700000.00, '2025-01-06 11:30:00', '2025-01-06 15:30:00'),
(30, 'GA 2929', 'Ga ruda Indonesia', 'Balikpapan', 'Sepinggan International Airport', 650000.00, '2025-01-06 10:30:00', '2025-01-06 14:30:00');



INSERT INTO Tiket (id_penerbangan, id_penumpang, nama_maskapai, waktu_keberangkatan, tempat_tujuan, bandara_tujuan, harga_tiket, nama_penumpang, no_kursi, no_hp_penumpang, waktu_dibuat, waktu_diedit)
VALUES
(1, 1, 'Garuda Indonesia', '2025-01-06 10:00:00', 'Tangerang', 'Juanda International Airport', 1000000.00, 'Ahmad Fadli', 'A1', '081234567890', GETDATE(), GETDATE()),
(2, 2, 'Citilink', '2025-01-06 13:00:00', 'Denpasar', 'Ngurah Rai International Airport', 800000.00, 'Budi Santoso', 'B2', '082134567891', GETDATE(), GETDATE()),
(3, 3, 'Sriwijaya Air', '2025-01-06 09:00:00', 'Surabaya', 'Juanda International Airport', 600000.00, 'Citra Dewi', 'C3', '083134567892', GETDATE(), GETDATE()),
(4, 4, 'Lion Air', '2025-01-06 08:30:00', 'Sepang', 'Kuala Lumpur International Airport', 700000.00, 'Doni Pratama', 'D4', '084134567893', GETDATE(), GETDATE()),
(5, 5, 'Garuda Indonesia', '2025-01-06 14:00:00', 'Singapore', 'Singapore Changi Airport', 850000.00, 'Eka Susanti', 'E5', '085134567894', GETDATE(), GETDATE()),
(6, 6, 'Citilink', '2025-01-06 15:00:00', 'Bangkok', 'Don Mueang International Airport', 950000.00, 'Farah Rahma', 'F6', '086134567895', GETDATE(), GETDATE()),
(7, 7, 'Citilink', '2025-01-03 15:00:00', 'Bangkok', 'Suvarnabhumi Airport', 920000.00, 'Gilang Saputra', 'G7', '087134567896', GETDATE(), GETDATE()),
(8, 8, 'Sriwijaya Air', '2025-01-06 10:30:00', 'Seoul', 'Incheon International Airport', 900000.00, 'Hana Kartika', 'H8', '088134567897', GETDATE(), GETDATE()),
(9, 9, 'Lion Air', '2025-01-06 07:00:00', 'Tokyo', 'Narita International Airport', 700000.00, 'Ivan Kurniawan', 'I9', '089134567898', GETDATE(), GETDATE()),
(10, 10, 'Garuda Indonesia', '2025-01-06 11:00:00', 'Hong Kong', 'Hong Kong International Airport', 750000.00, 'Joko Widodo', 'J10', '081234567899', GETDATE(), GETDATE()),
(11, 11, 'Citilink', '2025-01-06 12:00:00', 'Dubai', 'Dubai International Airport', 650000.00, 'Kiki Amelia', 'K11', '082234567800', GETDATE(), GETDATE()),
(12, 12, 'Sriwijaya Air', '2025-01-06 06:00:00', 'London', 'Heathrow Airport', 950000.00, 'Lina Putri', 'L12', '083234567801', GETDATE(), GETDATE()),
(13, 13, 'Lion Air', '2025-01-06 09:00:00', 'London', 'Gatwick Airport', 700000.00, 'Mahmud Fauzi', 'M13', '084234567802', GETDATE(), GETDATE()),
(14, 14, 'Garuda Indonesia', '2025-01-06 14:00:00', 'Paris', 'Charles de Gaulle Airport', 850000.00, 'Nina Marlina', 'N14', '085234567803', GETDATE(), GETDATE()),
(15, 15, 'Citilink', '2025-01-06 12:00:00', 'Frankfurt', 'Frankfurt Airport', 600000.00, 'Oki Wijaya', 'O15', '086234567804', GETDATE(), GETDATE()),
(16, 16, 'Sriwijaya Air', '2025-01-06 10:00:00', 'Amsterdam', 'Schiphol Airport', 750000.00, 'Putri Ayu', 'P16', '087234567805', GETDATE(), GETDATE()),
(17, 17, 'Lion Air', '2025-01-06 07:30:00', 'Los Angeles', 'Los Angeles International Airport', 800000.00, 'Qori Hasan', 'Q17', '088234567806', GETDATE(), GETDATE()),
(18, 18, 'Garuda Indonesia', '2025-01-06 15:30:00', 'New York', 'John F. Kennedy International Airport', 900000.00, 'Rizky Ramadhan', 'R18', '089234567807', GETDATE(), GETDATE()),
(19, 19, 'Citilink', '2025-01-06 13:00:00', 'Chicago', 'Chicago Hare International Airport', 750000.00, 'Siti Aisyah', 'S19', '081334567808', GETDATE(), GETDATE()),
(20, 20, 'Sriwijaya Air', '2025-01-06 08:00:00', 'San Francisco', 'San Francisco International Airport', 650000.00, 'Teguh Ardi', 'T20', '082334567809', GETDATE(), GETDATE()),
(21, 21, 'Lion Air', '2025-01-06 14:30:00', 'Toronto', 'Toronto Pearson International Airport', 850000.00, 'Umi Salamah', 'U21', '083334567810', GETDATE(), GETDATE()),
(22, 22, 'Garuda Indonesia', '2025-01-06 12:30:00', 'Vancouver', 'Vancouver International Airport', 950000.00, 'Vina Sari', 'V22', '084334567811', GETDATE(), GETDATE()),
(23, 23, 'Citilink', '2025-01-06 11:00:00', 'Sydney', 'Sydney Kingsford Smith Airport', 600000.00, 'Wawan Setiawan', 'W23', '085334567812', GETDATE(), GETDATE()),
(24, 24, 'Sriwijaya Air', '2025-01-06 09:30:00', 'Melbourne', 'Melbourne Airport', 700000.00, 'Xenia Firdaus', 'X24', '086334567813', GETDATE(), GETDATE()),
(25, 25, 'Lion Air', '2025-01-06 16:30:00', 'Medan', 'Kualanamu International Airport', 800000.00, 'Yusuf Maulana', 'Y25', '087334567814', GETDATE(), GETDATE()),
(26, 26, 'Garuda Indonesia', '2025-01-06 07:00:00', 'Yogyakarta', 'Adisutjipto International Airport', 950000.00, 'Zahra Anisa', 'Z26', '088334567815', GETDATE(), GETDATE()),
(27, 27, 'Citilink', '2025-01-06 15:00:00', 'Makassar', 'Sultan Hasanuddin International Airport', 600000.00, 'Andi Syahputra', 'A27', '089334567816', GETDATE(), GETDATE()),
(28, 28, 'Sriwijaya Air', '2025-01-06 13:00:00', 'Medan', 'Polonia International Airport', 800000.00, 'Bella Hartati', 'B28', '081434567817', GETDATE(), GETDATE()),
(29, 29, 'Lion Air', '2025-01-06 11:30:00', 'Manado', 'Sam Ratulangi International Airport', 700000.00, 'Cahyadi Rachman', 'C29', '082434567818', GETDATE(), GETDATE()),
(30, 30, 'Garuda Indonesia', '2025-01-06 10:30:00', 'Balikpapan', 'Sepinggan International Airport', 650000.00, 'Dewi Lestari', 'D30', '083434567819', GETDATE(), GETDATE());

INSERT INTO Pembayaran (id_tiket,nama_penumpang, harga_tiket, tanggal_pembayaran, statuss, metode_pembayaran)
VALUES
(82, 'Ahmad Fadli', 1000000.00, GETDATE(), 'Sukses', 'Transfer'),
(83, 'Budi Santoso', 800000.00, GETDATE(), 'Sukses', 'Cash'),
(84, 'Citra Dewi', 600000.00, GETDATE(), 'Gagal', 'Transfer'),
(85, 'Doni Pratama', 700000.00, GETDATE(), 'Sukses', 'Cash'),
(86, 'Eka Susanti', 850000.00, GETDATE(), 'Sukses', 'Transfer'),
(87,  'Farah Rahma', 950000.00, GETDATE(), 'Gagal', 'Cash'),
(88,  'Gilang Saputra', 920000.00, GETDATE(), 'Sukses', 'Transfer'),
(89, 'Hana Kartika', 900000.00, GETDATE(), 'Sukses', 'Cash'),
(90,  'Ivan Kurniawan', 700000.00, GETDATE(), 'Sukses', 'Transfer'),
(91, 'Joko Widodo', 750000.00, GETDATE(), 'Sukses', 'Cash'),
(92, 'Kiki Amelia', 650000.00, GETDATE(), 'Gagal', 'Transfer'),
(92,  'Lina Putri', 950000.00, GETDATE(), 'Sukses', 'Cash'),
(94,  'Mahmud Fauzi', 700000.00, GETDATE(), 'Sukses', 'Transfer'),
(95, 'Nina Marlina', 850000.00, GETDATE(), 'Sukses', 'Cash'),
(96, 'Oki Wijaya', 600000.00, GETDATE(), 'Gagal', 'Transfer'),
(97, 'Putri Ayu', 750000.00, GETDATE(), 'Sukses', 'Cash'),
(98, 'Qori Hasan', 800000.00, GETDATE(), 'Sukses', 'Transfer'),
(99, 'Rizky Ramadhan', 900000.00, GETDATE(), 'Sukses', 'Cash'),
(100, 'Siti Aisyah', 750000.00, GETDATE(), 'Sukses', 'Transfer'),
(101, 'Teguh Ardi', 600000.00, GETDATE(), 'Gagal', 'Cash'),
(102,  'Umi Salamah', 850000.00, GETDATE(), 'Sukses', 'Transfer'),
(103,  'Vina Sari', 950000.00, GETDATE(), 'Sukses', 'Cash'),
(104, 'Wawan Setiawan', 700000.00, GETDATE(), 'Sukses', 'Transfer'),
(105,  'Xenia Firdaus', 800000.00, GETDATE(), 'Gagal', 'Cash'),
(106,  'Yusuf Maulana', 650000.00, GETDATE(), 'Sukses', 'Transfer'),
(107,  'Zahra Anisa', 950000.00, GETDATE(), 'Sukses', 'Cash'),
(108,  'Andi Syahputra', 800000.00, GETDATE(), 'Sukses', 'Transfer'),
(109,  'Bella Hartati', 700000.00, GETDATE(), 'Sukses', 'Cash'),
(110,  'Cahyadi Rachman', 850000.00, GETDATE(), 'Sukses', 'Transfer'),
(111,  'Dewi Lestari', 900000.00, GETDATE(), 'Gagal', 'Cash');

INSERT INTO Log_Penerbangan (id_penerbangan, no_penerbangan, tempat_tujuan, bandara_tujuan, statuss, waktu_dibuat, waktu_diedit)
VALUES
(1, 'GA 101', 'Tangerang', 'Juanda International Airport', 'Take off', GETDATE(), GETDATE()),
(2, 'QG 202', 'Denpasar', 'Ngurah Rai International Airport', 'In Flight', GETDATE(), GETDATE()),
(3, 'SJ 303', 'Surabaya', 'Juanda International Airport', 'Landing', GETDATE(), GETDATE()),
(4, 'JT 404', 'Sepang', 'Kuala Lumpur International Airport', 'Take off', GETDATE(), GETDATE()),
(5, 'GA 505', 'Singapore', 'Singapore Changi Airport', 'In Flight', GETDATE(), GETDATE()),
(6, 'QG 606', 'Bangkok', 'Don Mueang International Airport', 'Take off', GETDATE(), GETDATE()),
(7, 'RS 890', 'Bangkok', 'Suvarnabhumi Airport', 'Landing', GETDATE(), GETDATE()),
(8, 'SJ 707', 'Seoul', 'Incheon International Airport', 'In Flight', GETDATE(), GETDATE()),
(9, 'JT 808', 'Tokyo', 'Narita International Airport', 'Take off', GETDATE(), GETDATE()),
(10, 'GA 909', 'Hong Kong', 'Hong Kong International Airport', 'Landing', GETDATE(), GETDATE()),
(11, 'QG 1010', 'Dubai', 'Dubai International Airport', 'Take off', GETDATE(), GETDATE()),
(12, 'SJ 1111', 'London', 'Heathrow Airport', 'In Flight', GETDATE(), GETDATE()),
(13, 'JT 1212', 'London', 'Gatwick Airport', 'Landing', GETDATE(), GETDATE()),
(14, 'GA 1313', 'Paris', 'Charles de Gaulle Airport', 'Take off', GETDATE(), GETDATE()),
(15, 'QG 1414', 'Frankfurt', 'Frankfurt Airport', 'In Flight', GETDATE(), GETDATE()),
(16, 'SJ 1515', 'Amsterdam', 'Schiphol Airport', 'Landing', GETDATE(), GETDATE()),
(17, 'JT 1616', 'Los Angeles', 'Los Angeles International Airport', 'Take off', GETDATE(), GETDATE()),
(18, 'GA 1717', 'New York', 'John F. Kennedy International Airport', 'In Flight', GETDATE(), GETDATE()),
(19, 'QG 1818', 'Chicago', 'Chicago Hare International Airport', 'Landing', GETDATE(), GETDATE()),
(20, 'SJ 1919', 'San Francisco', 'San Francisco International Airport', 'Take off', GETDATE(), GETDATE()),
(21, 'JT 2020', 'Toronto', 'Toronto Pearson International Airport', 'In Flight', GETDATE(), GETDATE()),
(22, 'GA 2121', 'Vancouver', 'Vancouver International Airport', 'Landing', GETDATE(), GETDATE()),
(23, 'QG 2222', 'Sydney', 'Sydney Kingsford Smith Airport', 'Take off', GETDATE(), GETDATE()),
(24, 'SJ 2323', 'Melbourne', 'Melbourne Airport', 'In Flight', GETDATE(), GETDATE()),
(25, 'JT 2424', 'Medan', 'Kualanamu International Airport', 'Landing', GETDATE(), GETDATE()),
(26, 'GA 2525', 'Yogyakarta', 'Adisutjipto International Airport', 'Take off', GETDATE(), GETDATE()),
(27, 'QG 2626', 'Makassar', 'Sultan Hasanuddin International Airport', 'In Flight', GETDATE(), GETDATE()),
(28, 'SJ 2727', 'Medan', 'Polonia International Airport', 'Landing', GETDATE(), GETDATE()),
(29, 'JT 2828', 'Manado', 'Sam Ratulangi International Airport', 'Take off', GETDATE(), GETDATE()),
(30, 'GA 2929', 'Balikpapan', 'Sepinggan International Airport', 'In Flight', GETDATE(), GETDATE());
