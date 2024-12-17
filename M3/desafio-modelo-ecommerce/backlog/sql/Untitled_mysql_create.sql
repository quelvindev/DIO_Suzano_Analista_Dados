CREATE TABLE `Patient` (
	`idPatient` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idPatient`)
);

CREATE TABLE `Doctor` (
	`idDoctor` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idDoctor`)
);

CREATE TABLE `Exam` (
	`idExam` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idExam`)
);

CREATE TABLE `Appointment` (
	`idAppointment` INT NOT NULL AUTO_INCREMENT,
	`idDoctor` INT NOT NULL,
	`idPatient` INT NOT NULL,
	`idExam` INT NOT NULL,
	PRIMARY KEY (`idAppointment`)
);

ALTER TABLE `Appointment` ADD CONSTRAINT `Appointment_fk0` FOREIGN KEY (`idDoctor`) REFERENCES `Doctor`(`idDoctor`);

ALTER TABLE `Appointment` ADD CONSTRAINT `Appointment_fk1` FOREIGN KEY (`idPatient`) REFERENCES `Patient`(`idPatient`);

ALTER TABLE `Appointment` ADD CONSTRAINT `Appointment_fk2` FOREIGN KEY (`idExam`) REFERENCES `Exam`(`idExam`);





