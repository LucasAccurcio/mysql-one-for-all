SELECT
	COUNT(idusuario) AS `quantidade_musicas_no_historico`
FROM `SpotifyClone`.historico_reproducao
WHERE idusuario = 3;
