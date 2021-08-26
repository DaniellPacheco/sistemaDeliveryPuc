insert into cardapio (nomeItem, preco) values("Hamburguer Mostro", 22.50);
insert into cardapio (nomeItem, preco) values("Monstro Buger", 15);
insert into cardapio (nomeItem, preco) values("Ovoforno King", 19.45);

insert into cliente (nome, telefone, logradouro, numero, bairro, cidade) values("Pedro Jóse", "41999360321", "Rua das Graças", "500", "Xaxim", "Curitiba");
insert into cliente (nome, telefone, logradouro, numero, bairro, cidade) values("Maria Augusta", "41999999999", "Rua Lourenço", "90", "Mêrces", "Curitiba");
insert into cliente (nome, telefone, logradouro, numero, bairro, cidade) values("João Paulo", "41999366891", "Rua Anchieta Luiz", "105", "Batel", "Curitiba");
insert into cliente (nome, telefone, logradouro, numero, bairro, cidade) values("Zelandia Avasco", "41985625522", "Avenidade Comendador Franco", "1040", "Centro Civico", "Curitiba");
insert into cliente (nome, telefone, logradouro, numero, bairro, cidade) values("Beatriz Elizabeth", "41982694444", "Rua Magnoloia", "40", "Juveve", "Curitiba");

insert into entregador (nomeEntregador, telefone) values("Antonio Miranda", "41988663756");
insert into entregador (nomeEntregador, telefone) values("Ana Paula Padrão", "41991358899");

insert into pedido (status, fk_idCliente, fk_idEntregador) values(2,2,1);
insert into pedido (status, fk_idCliente, fk_idEntregador) values(1,1,3);
insert into pedido (status, fk_idCliente, fk_idEntregador) values(1,1,2);
insert into pedido (status, fk_idCliente, fk_idEntregador) values(2,4,2);
insert into pedido (status, fk_idCliente, fk_idEntregador) values(2,3,2);
insert into pedido (status, fk_idCliente, fk_idEntregador) values(0,2,2);

insert into itensdopedido (fk_idPedido, fk_idItem, quantidade) values(1,2,2);
insert into itensdopedido (fk_idPedido, fk_idItem, quantidade) values(1,3,2);
insert into itensdopedido (fk_idPedido, fk_idItem, quantidade) values(2,1,2);
insert into itensdopedido (fk_idPedido, fk_idItem, quantidade) values(2,4,1);
insert into itensdopedido (fk_idPedido, fk_idItem, quantidade) values(3,2,10);
insert into itensdopedido (fk_idPedido, fk_idItem, quantidade) values(4,3,4);

select 	* from pedido;
select * from itensdopedido where fk_idPedido = 14;