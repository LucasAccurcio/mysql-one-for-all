/* PRIMEIRA TENTATIVA DE RESOLUÇÃO, NÃO CONSEGUI FAZER A BUSCA AUTOMATIZADA NOS PLANOS "GRATUITOS" E "PESSOAL"
ENTÃO FORCEI UMA BUSCA PELOS USUÁRIOS QUE EU SABIA QUE UTILIZAVAM ESSES PLANOS.

SELECT
	ca.cancao AS `nome`,
    COUNT(hr.idusuario) AS `reproducoes`
FROM `SpotifyClone`.cancoes AS ca
INNER JOIN `SpotifyClone`.historico_reproducao AS hr ON ca.idcancoes = hr.idcancoes
WHERE hr.idusuario IN(1, 4, 5)
GROUP BY ca.cancao
ORDER BY `nome` ASC; */

/*
APÓS TERMINAR O PROJETO, FIZ UM CODE REVIEW NO PROJETO DO ALUNO E COLEGA "PAULO VEIGA"
ONDE CONSEGUI ENTENDER ONDE EU ESTAVA ERRANDO E ELABORAR UMA NOVA SOLUÇÃO PARA O DESAFIO
*/

SELECT
	ca.cancao AS `nome`,
    COUNT(hr.idusuario) AS `reproducoes`
FROM `SpotifyClone`.cancoes AS ca
INNER JOIN `SpotifyClone`.historico_reproducao AS hr ON ca.idcancoes = hr.idcancoes
INNER JOIN `SpotifyClone`.usuario AS `us` ON hr.idusuario = us.idusuario
INNER JOIN `SpotifyClone`.planos_assinatura AS `pa` ON pa.idplano_assinatura = us.idplano_assinatura
WHERE pa.plano = "gratuito" OR pa.plano = "pessoal"
GROUP BY `nome`
ORDER BY `nome` ASC;
