--C1: Consulta de Pacotes com Valor Abaixo da Média
SELECT
  nome,
  valor
FROM(
    SELECT
	pac.nome,
	pag.valor,
	AVG(pag.valor) OVER () AS media_valor
  FROM
	viagem v
	JOIN pagamento pag
   	 ON v.pagamento = pag.numTransacao
	JOIN pacote pac
   	 ON v.pacote = pac.nome
) subconsulta
WHERE valor < media_valor;



--C2: Consulta lista de turistas que visitaram cada experiência
SELECT 
	e.nome AS experiencia, 
	e.colonia AS colonia, 
	t.nome AS turista, 
	p.nome AS pacote
FROM turistaespacial t 
JOIN viagem v 
	ON t.passaporte = v.turista
JOIN pacote p 
	ON v.pacote = p.nome
JOIN pacoteexperiencias pe 
	ON p.nome = pe.pacote
RIGHT JOIN experiencia e
	ON pe.experiencia = e.nome
ORDER BY e.colonia, e.nome;



--C3: Consulta por Detalhes das Viagem e Avaliação do Turista
SELECT t.nome AS turista,
	v.datapartida AS data_viagem, 
	v.pacote AS pacote, 
	p.valor AS preco, 
	a.nota AS avaliacao,
	a.comentario AS comentario 
FROM turistaespacial t 
JOIN viagem v 
	ON t.passaporte = v.turista
JOIN pagamento p 
	ON v.pagamento = p.numtransacao
LEFT JOIN avaliacao a 
	ON (v.datapartida, v.pacote, v.turista) = (a.datapartida, a.pacote, a.turista);



--C4: Turistas espaciais que viajaram para as colônias ColoniaMarte, ColoniaVenus ou ColoniaLua
SELECT 
	te.nome AS turista,
	te.passaporte AS passaporte
FROM turistaEspacial te
JOIN viagem v 
    ON te.passaporte = v.turista
JOIN voo vo 
    ON v.pacote = vo.pacote
JOIN colonia co
     ON vo.colonia = co.nome
WHERE co.nome IN ('ColoniaMarte', 'ColoniaVenus', 'ColoniaLua')
GROUP BY te.passaporte



--C5: Consulta de experiências que utilizam TODOS os equipamentos
SELECT e.nome AS experiencia
FROM experiencia e 
WHERE NOT EXISTS (
    SELECT DISTINCT eq.equipamento
    FROM equipamentos eq
	
    EXCEPT
	
    SELECT equipamento
    FROM equipamentos eq2
    WHERE eq2.experiencia = e.nome
);
