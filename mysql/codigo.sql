CREATE TABLE IF NOT EXISTS `Cliente` (
    `idCliente` INT NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(45) NOT NULL,
    `telefone` VARCHAR(45) NOT NULL,
    `logradouro` VARCHAR(45) NOT NULL,
    `numero` VARCHAR(45) NOT NULL,
    `bairro` VARCHAR(45) NOT NULL,
    `cidade` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`idCliente`)
);

CREATE TABLE IF NOT EXISTS `Entregador` (
    `idEntregador` INT NOT NULL AUTO_INCREMENT,
    `nomeEntregador` VARCHAR(45) NOT NULL,
    `telefone` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`idEntregador`)
);

CREATE TABLE IF NOT EXISTS `Pedido` (
    `idPedido` INT NOT NULL AUTO_INCREMENT,
    `status` INT NOT NULL,
    `dataEmissao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `fk_idCliente` INT NOT NULL,
    `fk_idEntregador` INT NOT NULL,
    PRIMARY KEY (`idPedido`),
    CONSTRAINT `fk_Pedido_Cliente`
        FOREIGN KEY (`fk_idCliente`)
        REFERENCES `Cliente` (`idCliente`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Pedido_Entregador`
        FOREIGN KEY (`fk_idEntregador`)
        REFERENCES `Cliente` (`idCliente`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `Cardapio` (
    `idItem` INT NOT NULL AUTO_INCREMENT,
    `nomeItem` VARCHAR(45) NOT NULL,
    `preco` FLOAT NOT NULL,
    PRIMARY KEY (`idItem`)
);

CREATE TABLE IF NOT EXISTS `ItensDoPedido` (
    `idItemDoPedido` INT NOT NULL AUTO_INCREMENT,
    `fk_idPedido` INT NOT NULL,
    `fk_idItem` INT NOT NULL,
    `quantidade` INT NOT NULL,
    PRIMARY KEY (`idItemDoPedido`),
    CONSTRAINT `fk_ItensDoPedido_Pedido`
        FOREIGN KEY (`fk_idPedido`)
        REFERENCES `Pedido` (`idPedido`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_ItensDoPedido_Cardapio`
        FOREIGN KEY (`fk_idItem`)
        REFERENCES `Cardapio` (`idItem`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);