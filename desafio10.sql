SELECT
	ca.cancao AS `nome`,
    COUNT(hr.idusuario) AS `reproducoes`
FROM `SpotifyClone`.cancoes AS ca
INNER JOIN `SpotifyClone`.historico_reproducao AS hr ON ca.idcancoes = hr.idcancoes
WHERE hr.idusuario IN(1, 4, 5)
GROUP BY ca.cancao
ORDER BY `nome` ASC;
