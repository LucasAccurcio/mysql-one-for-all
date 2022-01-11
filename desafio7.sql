SELECT
	ar.artista AS `artista`,
    al.album AS `album`,
    COUNT(sa.idartista) AS `seguidores`
FROM `SpotifyClone`.`artista` AS ar 
INNER JOIN `SpotifyClone`.`album` AS al ON ar.idartista = al.idartista
INNER JOIN `SpotifyClone`.`seguindo_artista` AS sa ON sa.idartista = ar.idartista
GROUP BY ar.artista, al.album
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
