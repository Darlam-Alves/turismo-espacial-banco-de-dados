SELECT t.nome AS nome_turista, COUNT(v.dataPartida) AS total_viagens
FROM turistaEspacial t
JOIN viagem v ON t.passaporte = v.turista
GROUP BY t.nome
HAVING COUNT(v.dataPartida) > 3
ORDER BY nome_turista;