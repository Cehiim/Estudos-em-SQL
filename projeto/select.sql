SELECT P.fase, A.nome_arbitro
FROM Arbitro A INNER JOIN Partida P
ON (A.cod_arbitro = P.cod_arbitro)
WHERE (fase = 'Final');

SELECT E.nome_equipe, COUNT (PE.cod_equipe) AS PARTIDAS_JOGADAS
FROM Equipe E INNER JOIN Part_Equip PE
ON (E.cod_equipe = PE.cod_equipe)
GROUP BY E.nome_equipe
ORDER BY COUNT (PE.cod_equipe) DESC;

SELECT P.fase, L.nome_lugar
FROM Partida P LEFT JOIN Lugar L
ON (P.cod_lugar = L.cod_lugar)
ORDER BY P.fase DESC;

SELECT E.nome_equipe, P.fase
FROM Equipe E LEFT JOIN Part_Equip PE
ON (E.cod_equipe = PE.cod_equipe)
LEFT JOIN Partida P ON (PE.cod_partida = P.cod_partida)
ORDER BY P.fase ASC;
