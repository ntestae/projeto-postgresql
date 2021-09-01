SELECT 	cliente.nome AS "Cliente", 
		banco.nome AS "Banco",
		cliente_transacoes.agencia_numero AS "Agência",
		cliente_transacoes.conta_corrente_numero AS "Número da Conta",
		cliente_transacoes.conta_corrente_digito AS "Dígito da Conta",
		cliente_transacoes.valor AS "Valor em R$",
		tipo_transacao.nome AS "Transacao"
FROM cliente 
JOIN cliente_transacoes ON cliente.numero = cliente_transacoes.cliente_numero
JOIN banco ON banco.numero = cliente_transacoes.banco_numero
JOIN tipo_transacao ON tipo_transacao.id = cliente_transacoes.tipo_transacao_id;