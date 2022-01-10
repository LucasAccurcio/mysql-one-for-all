SELECT 
	u.usuario AS `usuario`,
    if(MAX(YEAR(h.data_reproducao))>2020, "Usuário ativo", "Usuário inativo") AS `condicao_usuario`
FROM `SpotifyClone`.`usuario` AS u
INNER JOIN
`SpotifyClone`.`historico_reproducao` AS h ON u.idusuario = h.idusuario
GROUP BY 
	u.idusuario
ORDER BY
	usuario ASC;