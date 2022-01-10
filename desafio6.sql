SELECT
	MIN(pa.valor_plano) AS `faturamento_minimo`,
    MAX(pa.valor_plano) AS `faturamento_maximo`,
    TRUNCATE(AVG(pa.valor_plano), 2) AS `faturamento_medio`,
    SUM(pa.valor_plano) AS `faturamento_total`
FROM `SpotifyClone`.`planos_assinatura` AS pa
INNER JOIN
`SpotifyClone`.`usuario` AS u ON pa.idplano_assinatura = u.idplano_assinatura;