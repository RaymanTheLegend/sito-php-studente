CREATE DATABASE IF NOT EXISTS sensori;
USE sensori;
CREATE TABLE IF NOT EXISTS sensori (id_sensori INT AUTO_INCREMENT PRIMARY KEY,  conta_assi VARCHAR(50) NOT NULL,  eurobalise VARCHAR(50) NOT NULL,  rtb INT NOT NULL,  odometri VARCHAR(50) NOT NULL,  imu VARCHAR(50) NOT NULL,  temperatura DECIMAL(5, 2) NOT NULL,  pressione FLOAT NOT NULL,  visibilità VARCHAR(50) NOT NULL,  tempo_atmosferico VARCHAR(50) NOT NULL);
CREATE TABLE IF NOT EXISTS allarmi (id_allarmi INT AUTO_INCREMENT PRIMARY KEY, anti_incendio BOOLEAN NOT NULL, luci_esterne VARCHAR(50) NOT NULL, luci_interne VARCHAR(50) NOT NULL, blackout BOOLEAN NOT NULL, velocità_eccessiva BOOLEAN NOT NULL);
CREATE TABLE IF NOT EXISTS orario (id_orario INT AUTO_INCREMENT PRIMARY KEY, partenze DATETIME NOT NULL, arrivi DATETIME NOT NULL, ritardi TIME NOT NULL, stato VARCHAR(50) NOT NULL, id_sensori INT NOT NULL, id_allarmi INT NOT NULL, FOREIGN KEY (id_sensori) REFERENCES sensori(id_sensori), FOREIGN KEY (id_allarmi) REFERENCES allarmi(id_allarmi));
SHOW TABLES;
DESCRIBE sensori;
DESCRIBE orario;
DESCRIBE allarmi;
INSERT INTO sensori (conta_assi, eurobalise, rtb, odometri, imu, temperatura, pressione, visibilità, tempo_atmosferico) VALUES('48 assi rilevati', '27.5 MHz', 120, '1250.45 m', '0.02 m/s²', 22.50, 1013.25, '10 km', 'Sereno'),    ('64 assi rilevati', '27.5 MHz', 135, '2380.70 m', '0.15 m/s²', 18.75, 1008.50, '5 km', 'Nuvoloso'),    ('32 assi rilevati', '27.5 MHz', 110, '3450.20 m', '0.35 m/s²', 15.20, 995.80, '1 km', 'Pioggia');
INSERT INTO allarmi (anti_incendio, luci_esterne, luci_interne, blackout, velocità_eccessiva) VALUES(FALSE, 'Accese', 'Accese al 100%', FALSE, FALSE),    (TRUE, 'Accese', 'Accese al 100%', FALSE, FALSE),    (FALSE, 'Spente', 'Spente', TRUE, TRUE);
INSERT INTO orario (partenze, arrivi, ritardi, stato, id_sensori, id_allarmi) VALUES('2026-11-26 08:00:00', '2026-11-26 09:15:00', '00:00:00', 'Puntuale', 1, 1),    ('2026-11-26 10:30:00', '2026-11-26 11:50:00', '00:15:00', 'In ritardo', 2, 2),    ('2026-11-26 14:00:00', '2026-11-26 15:30:00', '00:30:00', 'In ritardo', 3, 3);
SELECT * FROM sensori;
SELECT * FROM allarmi;
SELECT * FROM orario;

