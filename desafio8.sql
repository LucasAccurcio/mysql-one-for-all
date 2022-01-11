SELECT
	ar.artista AS `artista`,
    al.album AS `album`
FROM `SpotifyClone`.`artista` AS ar 
INNER JOIN `SpotifyClone`.`album` AS al ON ar.idartista = al.idartista
WHERE ar.artista = "Walter Phoenix"
ORDER BY `album` ASC;
