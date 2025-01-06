
CREATE TABLE Penumpang(
    id_penumpang INT IDENTITY(1,1) PRIMARY KEY,
    nama_penumpang VARCHAR(50),
    no_hp_penumpang VARCHAR(25),
    no_ktp VARCHAR(25),
    no_paspor VARCHAR(25),
	waktu_dibuat DATETIME DEFAULT GETDATE(),
	waktu_diedit DATETIME DEFAULT GETDATE()
);


CREATE TABLE Bandara (
    id_bandara INT IDENTITY(1,1) PRIMARY KEY,
    nama_bandara VARCHAR(50),
    nama_kota VARCHAR(50),
    nama_negara VARCHAR(50)
);

CREATE TABLE Penerbangan (
    id_penerbangan INT IDENTITY(1,1) PRIMARY KEY,
    id_bandara INT,
    no_penerbangan VARCHAR(50),
	nama_maskapai VARCHAR(50),
    tempat_tujuan VARCHAR(50),
	bandara_tujuan VARCHAR(50),
    harga_tiket DECIMAL (10,2),
    waktu_keberangkatan DATETIME,
	waktu_kedatangan DATETIME,
    FOREIGN KEY (id_bandara) REFERENCES Bandara(id_bandara)
);



CREATE TABLE Tiket (
    id_tiket INT IDENTITY(1,1) PRIMARY KEY,
    id_penerbangan INT,
    id_penumpang INT,
    nama_maskapai VARCHAR(50),
	harga_tiket DECIMAL (10,2),
	waktu_keberangkatan DATETIME,
	tempat_tujuan VARCHAR(50),
	bandara_tujuan VARCHAR(50),
	nama_penumpang VARCHAR(50),
	no_kursi VARCHAR(50),
	no_hp_penumpang VARCHAR (50),
	waktu_dibuat DATETIME,
	waktu_diedit DATETIME,
    FOREIGN KEY (id_penerbangan) REFERENCES Penerbangan(id_penerbangan),
    FOREIGN KEY (id_penumpang) REFERENCES Penumpang(id_penumpang)
);

CREATE TABLE Pembayaran (
    id_pembayaran INT IDENTITY(1,1) PRIMARY KEY,
    id_tiket INT,
	nama_penumpang VARCHAR(50),
	harga_tiket DECIMAL(10,2),
    tanggal_pembayaran DATETIME,
    statuss VARCHAR(10) CHECK (statuss IN ('Sukses', 'Gagal')),
    metode_pembayaran  VARCHAR(10) CHECK (metode_pembayaran IN ('Transfer', 'Cash')),
    FOREIGN KEY (id_tiket) REFERENCES Tiket(id_tiket),
);


CREATE TABLE Log_Penerbangan (
    id_log INT IDENTITY(1,1) PRIMARY KEY,
    id_penerbangan INT,
    no_penerbangan VARCHAR(50),
    tempat_tujuan VARCHAR(50),
    bandara_tujuan VARCHAR(50),
	statuss VARCHAR(25) CHECK (statuss IN ('Take off','In Flight', 'Landing')),
	waktu_dibuat DATETIME DEFAULT GETDATE(),
	waktu_diedit DATETIME DEFAULT GETDATE(),
   FOREIGN KEY (id_penerbangan) REFERENCES Penerbangan(id_penerbangan)
);
