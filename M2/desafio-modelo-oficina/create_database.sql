CREATE DATABASE IF NOT EXISTS  oficina_os; 

CREATE TABLE IF NOT EXISTS `oficina_os`.`cliente` (
  `idcliente` INT NOT NULL,
  `nomeCLiente` VARCHAR(45) NULL,
  PRIMARY KEY (`idcliente`));
  
  CREATE TABLE IF NOT EXISTS `oficina_os`.`marcaVeiculo` (
  `idmarcaVeiculo` INT NOT NULL,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`idmarcaVeiculo`));
  
CREATE TABLE IF NOT EXISTS `oficina_os`.`veiculo` (
  `idveiculo` INT NOT NULL,
  `nomeVeiculo` VARCHAR(45) NULL,
  `placa` VARCHAR(8) NULL,
  `idMarcaVeiculo` INT NOT NULL,
  `idCliente` INT NOT NULL,
	PRIMARY KEY (`idveiculo`),
	CONSTRAINT `fk_veiculo_marcaVeiculo`FOREIGN KEY (`idMarcaVeiculo`)
		REFERENCES `oficina_os`.`cliente` (`idcliente`),
	CONSTRAINT `fk_veiculo_cliente`FOREIGN KEY (`idCliente`)
		REFERENCES `oficina_os`.`cliente` (`idcliente`));
        
CREATE TABLE IF NOT EXISTS `oficina_os`.`tipPeca` (
  `idtipPeca` INT NOT NULL,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`idtipPeca`));
  
CREATE TABLE IF NOT EXISTS `oficina_os`.`peca` (
  `idpeca` INT NOT NULL,
  `nomePeca` VARCHAR(45) NULL,
  `valorPeca` DECIMAL NULL,
  `IdTipoPeca` INT NOT NULL,
  PRIMARY KEY (`idpeca`),
  CONSTRAINT `fk_peca_tipPeca` FOREIGN KEY (`IdTipoPeca`)
    REFERENCES `oficina_os`.`tipPeca` (`idtipPeca`));
    
CREATE TABLE IF NOT EXISTS `oficina_os`.`tipoServico` (
  `idtipoServico` INT NOT NULL,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`idtipoServico`));
  
CREATE TABLE IF NOT EXISTS `oficina_os`.`tipoServico_peca` (
  `idTipoServicoPeca` INT NOT NULL,
  `idPeca` INT NOT NULL,
  `idTipPeca` INT NOT NULL,
  `valorServico` DECIMAL NULL,
	PRIMARY KEY (`idTipoServicoPeca`, `idPeca`, `idTipPeca`),
		CONSTRAINT `fk_tipoServico_peca_tipoServico` FOREIGN KEY (`idTipoServicoPeca`)
    REFERENCES `oficina_os`.`tipoServico` (`idtipoServico`),
		CONSTRAINT `fk_tipoServico_peca_peca`FOREIGN KEY (`idPeca`)
    REFERENCES `oficina_os`.`peca` (`idPeca`),
		CONSTRAINT `fk_tipoServico_peca_tipoPeca` FOREIGN KEY (`idTipPeca`)
    REFERENCES `oficina_os`.`tipPeca` (`idTipPeca`));
   
CREATE TABLE IF NOT EXISTS `oficina_os`.`mecanico` (
  `idMecanico` INT NOT NULL,
  `NomeMecanico` VARCHAR(45) NULL COMMENT '	',
  `enderecoMecanico` VARCHAR(45) NULL,
  `especialidade` VARCHAR(45) NULL,
  PRIMARY KEY (`idMecanico`));
  
CREATE TABLE IF NOT EXISTS `oficina_os`.`ordemServico` (
  `idOrdemServico` INT NOT NULL,
  `dataEmisao` DATETIME NULL,
  `valor` DECIMAL NULL,
  `status` VARCHAR(1) NULL,
  `dataConclusao` DATETIME NULL,
  `tipoServico` VARCHAR(10) NULL,
  `idTipoServico` INT NOT NULL,
  `idPeca` INT NOT NULL,
  `idVeiculo` INT NOT NULL,
  PRIMARY KEY (`idOrdemServico`),
  CONSTRAINT `fk_ordemServico_tipoServico_has_peca1`FOREIGN KEY (`idTipoServico`)
    REFERENCES `oficina_os`.`tipoServico_peca` (`idTipoServicoPeca` ),
  CONSTRAINT `fk_ordemServico_tipoServico_has_peca2`FOREIGN KEY (`idPeca`)
    REFERENCES `oficina_os`.`peca` (`idPeca` ),
  CONSTRAINT `fk_ordemServico_tipoServico_has_veiculo`FOREIGN KEY (`idVeiculo`)
    REFERENCES `oficina_os`.`veiculo` (`idVeiculo` )
    );
    
CREATE TABLE IF NOT EXISTS `oficina_os`.`ordemServico_has_mecanico` (
  `idOS` INT NOT NULL,
  `idMecanico` INT NOT NULL,
  PRIMARY KEY (`idOS`, `idMecanico`),
  CONSTRAINT `fk_ordemServico_has_mecanico_ordemServico1`FOREIGN KEY (`idOS`)
    REFERENCES `oficina_os`.`ordemServico` (`idOrdemServico`),
  CONSTRAINT `fk_ordemServico_has_mecanico_mecanico1`FOREIGN KEY (`idMecanico`)
    REFERENCES `oficina_os`.`mecanico` (`idMecanico`));

  

  