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
