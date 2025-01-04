CREATE DATABASE pemesanan_tiket_pesawat
USE pemesanan_tiket_pesawat;

CREATE TABLE Penumpang(
    id_penumpang INT IDENTITY(1,1) PRIMARY KEY,
    nama_penumpang VARCHAR(50),
    no_hp_penumpang VARCHAR(25),
    no_ktp VARCHAR(25),
    no_paspor VARCHAR(25)
);

CREATE TABLE Bandara (
    id_bandara INT IDENTITY(1,1) PRIMARY KEY,
    nama_bandara VARCHAR(50),
    kota VARCHAR(50),
    negara VARCHAR(50)
);

CREATE TABLE Penerbangan (
    id_penerbangan INT IDENTITY(1,1) PRIMARY KEY,
    id_bandara INT,
    no_penerbangan VARCHAR(50),
    tempat_tujuan VARCHAR(50),
	bandara_tujuan VARCHAR(50),
    harga DECIMAL(10,2),
    estimasi_waktu DATETIME,
    waktu_keberangkatan DATETIME,
	waktu_kedatangan DATETIME,
    FOREIGN KEY (id_bandara) REFERENCES Bandara(id_bandara)
);

CREATE TABLE Tiket (
    id_tiket INT IDENTITY(1,1) PRIMARY KEY,
    id_penerbangan INT,
    id_penumpang INT,
    nama_maskapai VARCHAR(50),
	tanggal_pembayran DATETIME,
	waktu_keberangkatan DATETIME,
	tempat_tujuan VARCHAR(50),
	bandara_tujuan VARCHAR(50),
	nama_penumpang VARCHAR(50),
	no_kursi VARCHAR(50),
	no_hp_penumpang VARCHAR (50),
    FOREIGN KEY (id_penerbangan) REFERENCES Penerbangan(id_penerbangan),
    FOREIGN KEY (id_penumpang) REFERENCES Penumpang(id_penumpang)
);

CREATE TABLE Pembayaran (
    id_pembayaran INT IDENTITY(1,1) PRIMARY KEY,
    id_tiket INT,
    tanggal_pembayaran DATETIME,
    harga DECIMAL(10,2),
    statuss VARCHAR(10) CHECK (statuss IN ('Sukses', 'Gagal')),
    metode_pembayaran VARCHAR(50),
    FOREIGN KEY (id_tiket) REFERENCES Tiket(id_tiket)
);


CREATE TABLE Log_Penerbangan (
    id_log INT IDENTITY(1,1) PRIMARY KEY,
    id_penerbangan INTEGER,
    no_penerbangan VARCHAR(50),
    tempat_tujuan VARCHAR(50),
    bandara_tujuan VARCHAR(50),
	statuss VARCHAR(25) CHECK (statuss IN ('Take off','In Flight', 'Landing')),
    FOREIGN KEY (id_penerbangan) REFERENCES Penerbangan(id_penerbangan)
);