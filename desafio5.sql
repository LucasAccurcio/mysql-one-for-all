SELECT 
	c.cancao AS `cancao`, 
    COUNT(hr.idcancoes) AS `reproducoes`
FROM `SpotifyClone`.`historico_reproducao` AS hr
INNER JOIN
`SpotifyClone`.`cancoes` AS c ON hr.idcancoes = c.idcancoes
GROUP BY
	hr.idcancoes
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;