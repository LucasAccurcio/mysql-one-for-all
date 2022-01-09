SELECT 
	u.usuario AS `usuario`, 
  COUNT(h.idusuario) AS `qtde_musicas_ouvidas`,
  ROUND((SUM(c.duracao)/60), 2) AS `total_minutos`
FROM `SpotifyClone`.`usuario` AS u
INNER JOIN
`SpotifyClone`.`historico_reproducao` AS h ON u.idusuario = h.idusuario
INNER JOIN
`SpotifyClone`.`cancoes` AS c ON h.idcancoes = c.idcancoes
GROUP BY
	u.usuario
ORDER BY
	u.usuario ASC;