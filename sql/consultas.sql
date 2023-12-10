--Consulta 3
SELECT t.nome AS nome_turista, COUNT(v.dataPartida) AS total_viagens
FROM turistaEspacial t
JOIN viagem v ON t.passaporte = v.turista
GROUP BY t.nome
HAVING COUNT(v.dataPartida) > 3
ORDER BY nome_turista;

--Consulta 1
SELECT DISTINCT 
    te.nome
FROM turistaEspacial te
JOIN viagem v 
    ON te.passaporte = v.turista
JOIN voo vo 
    ON v.pacote = vo.pacote
JOIN colonia co 
    ON vo.colonia = co.nome
WHERE co.nome IN ('ColôniaTerra', 'ColôniaVenus', 'ColôniaLua')
GROUP BY te.passaporte, te.nome
    HAVING COUNT(DISTINCT co.nome) = 3;


--Mostra todas as experiências de cada colonia e lista os turistas que a visitaram, mostrando qual pacote o turista usou para fazer a visita
SELECT 
	e.nome AS experiencia, 
	e.colonia AS colonia, 
	t.nome AS turista, 
	p.nome AS pacote 
FROM
	turistaespacial t JOIN viagem v ON t.passaporte = v.turista
	JOIN pacote p ON v.pacote = p.nome
	JOIN pacoteexperiencias pe ON p.nome = pe.pacote
	RIGHT JOIN experiencia e ON pe.experiencia = e.nome
ORDER BY e.colonia, e.nome;


--Mostra um resumo de todas as viagens dos turistas
SELECT 
	t.nome AS turista, 
	v.datapartida AS data_viagem, 
	v.pacote AS pacote, 
	p.valor AS preco, 
	a.nota AS avaliacao,
	a.comentario AS comentario 
FROM 
	turistaespacial t JOIN viagem v ON t.passaporte = v.turista
	JOIN pagamento p ON v.pagamento = p.numtransacao
	LEFT JOIN avaliacao a ON (v.datapartida, v.pacote, v.turista) = (a.datapartida, a.pacote, a.turista)
GROUP BY t.nome, v.pacote, v.datapartida, a.nota, p.valor, a.comentario
ORDER BY t.nome, v.pacote, v.datapartida;


-- Mostra os turistas que visitaram todas as colônias 'ColôniaTerra', 'ColôniaVenus'e 'ColôniaLua'
-- Consulta 1: Todos os turistas que visitaram pelo menos uma das colônias
(SELECT 
  te.nome AS turista,
  te.passaporte AS passaporte
FROM turistaEspacial te
JOIN viagem v ON te.passaporte = v.turista
JOIN voo vo ON v.pacote = vo.pacote
JOIN colonia co ON vo.colonia = co.nome
WHERE co.nome IN ('ColôniaTerra', 'ColôniaVenus', 'ColôniaLua'))
EXCEPT
-- Consulta 2: Turistas que visitaram qualquer uma das colônias, mas não todas
(SELECT te.passaporte
FROM turistaEspacial te
WHERE te.passaporte IN (
  SELECT v.turista
  FROM viagem v
  JOIN voo vo ON v.pacote = vo.pacote
  JOIN colonia co ON vo.colonia = co.nome
  WHERE co.nome IN ('ColôniaTerra', 'ColôniaVenus', 'ColôniaLua')
  GROUP BY v.turista
  HAVING COUNT(DISTINCT co.nome) < 3
));


--Mostra as opcoes de idioma usado pelo guia de cada pacote, bem como o guia espacial responsavel
SELECT 
    p.nome AS pacote,
    lg.lingua AS idioma,
	  ge.nome AS guia
FROM
    pacote p 
    LEFT JOIN guiapacote gp ON p.nome = gp.pacote
    JOIN guiaespacial ge ON gp.guia = ge.passaporte
    JOIN linguasguia lg ON ge.passaporte = lg.guia
GROUP BY p.nome, lg.lingua, ge.nome
ORDER BY p.nome, ge.nome, lg.lingua;

