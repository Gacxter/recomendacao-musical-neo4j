//Query para recomendar músicas do mesmo gênero que o usuário mais ouve:

MATCH (u:usuario {ID: 10129837465})-[:OUVIU]->(m:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
WITH u, g, COUNT(*) AS frequencia   // ← Inclua 'u' aqui!
ORDER BY frequencia DESC
LIMIT 3
MATCH (g)<-[:ESTA_CONTIDO_EM]-(recomendacao:musica)
WHERE NOT EXISTS((u)-[:OUVIU]->(recomendacao))
RETURN recomendacao.caption AS Sugestao, g.caption AS Genero
LIMIT 10;

//
--------------------------------------------------------------------------------
//

//Query para recomendar álbuns do mesmo gênero:
MATCH (u:usuario {ID: 10129837465})-[:OUVIU]->(:musica)-[:ESTA_CONTIDO_EM]->(a:album)
WITH COLLECT(DISTINCT a) AS albuns_ouvidos
MATCH (g:genero)<-[:ESTA_CONTIDO_EM]-(a:album)
WHERE NOT a IN albuns_ouvidos
RETURN a.caption AS AlbumSugerido, g.caption AS Genero
LIMIT 10;

//
--------------------------------------------------------------------------------
//

//Query para recomendar usuários com gostos similares por gênero:
MATCH (u1:usuario {ID: 10129837465})-[:OUVIU]->(:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
WITH u1, COLLECT(DISTINCT g) AS generos_u1
MATCH (u2:usuario)-[:OUVIU]->(:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
WHERE u2 <> u1 AND g IN generos_u1
RETURN u2.caption AS UsuarioSimilar, COUNT(DISTINCT g) AS GenerosEmComum
ORDER BY GenerosEmComum DESC
LIMIT 5;

//
--------------------------------------------------------------------------------
//

// Calcular total de audições por gênero para um usuário específico
MATCH (u:usuario {ID: 10129837465})-[ouvido:OUVIU]->(m:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
RETURN g.caption AS Genero, 
       SUM(ouvido.ouviu) AS Total_Audicoes,
       COUNT(DISTINCT m) AS Musicas_Diferentes,
       AVG(ouvido.ouviu) AS Media_Audicoes_Por_Musica
ORDER BY Total_Audicoes DESC;

//
--------------------------------------------------------------------------------
//

//Query para recomendar Músicas dos Gêneros Preferidos (com peso):
// Recomendar músicas baseado no total de audições por gênero
MATCH (u:usuario {ID: 10129837465})-[ouvido:OUVIU]->(m:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
WITH u, g, SUM(ouvido.ouviu) AS peso_genero
ORDER BY peso_genero DESC
LIMIT 3
RETURN g AS Genero_Mais_Ouvido, peso_genero; // Pega os 3 gêneros que o usuário mais ouve

//
--------------------------------------------------------------------------------
//

// Busca músicas dos gêneros mais ouvidos que o usuário NÃO ouviu:
MATCH (u:usuario {ID: 10129837465})
CALL {
    WITH u
    MATCH (u)-[:OUVIU]->(m:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
    RETURN g, COUNT(*) AS peso_genero
    ORDER BY peso_genero DESC
    LIMIT 3;
}
MATCH (g)<-[:ESTA_CONTIDO_EM]-(recomendacao:musica)
WHERE NOT EXISTS((u)-[:OUVIU]->(recomendacao))
RETURN recomendacao.caption AS Musica_Recomendada,
       g.caption AS Genero,
       peso_genero AS Relevancia_Do_Genero
ORDER BY peso_genero DESC, recomendacao.caption
LIMIT 15;

//
--------------------------------------------------------------------------------
//

/*Recomendação com Score Combinado (RECOMENDADO)
// Calcula um score para cada música baseado em múltiplos fatores
MATCH (u:usuario {ID: 10129837465})-[ouvido:OUVIU]->(musica_ouvida:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
WITH u, g, SUM(ouvido.ouviu) AS total_genero, COLLECT(DISTINCT musica_ouvida) AS musicas_ouvidas, COLLECT(DISTINCT musica_ouvida.Artista) AS artistas_ouvidos;

// Para cada gênero, encontra músicas não ouvidas
MATCH (g)<-[:ESTA_CONTIDO_EM]-(candidata:musica)
WHERE NOT EXISTS((u)-[:OUVIU]->(candidata))
  AND NOT candidata IN musicas_ouvidas;

// Calcula o score
RETURN candidata.caption AS Musica,
       g.caption AS Genero,
       total_genero AS Pontuacao_Genero,
       // Verifica se é do mesmo artista (usando a coleção de artistas)
       CASE WHEN candidata.Artista IN artistas_ouvidos 
            THEN 10 ELSE 0 END AS Bonus_Mesmo_Artista,
       (total_genero + 
        CASE WHEN candidata.Artista IN artistas_ouvidos 
             THEN 10 ELSE 0 END) AS Score_Final
ORDER BY Score_Final DESC
LIMIT 20;

//
--------------------------------------------------------------------------------
//

/*Para Múltiplos Usuários (Análise de Comportamento)
// Ver o perfil de gêneros de todos os usuários (útil para segmentação)
MATCH (u:usuario)-[ouvido:OUVIU]->(m:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
RETURN u.caption AS Usuario,
       g.caption AS Genero,
       SUM(ouvido.ouviu) AS Total_Audicoes
ORDER BY u.caption, Total_Audicoes DESC;

//
--------------------------------------------------------------------------------
//

/*Encontrar Usuários com Perfil Similar (Baseado em Pesos)
// Encontra usuários com padrões de audição semelhantes
MATCH (u1:usuario {ID: 10129837465})-[ouvido1:OUVIU]->(:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
WITH u1, g, SUM(ouvido1.ouviu) AS peso_u1

MATCH (u2:usuario)-[ouvido2:OUVIU]->(:musica)-[:ESTA_CONTIDO_EM]->(g)
WHERE u2 <> u1
WITH u1, u2, g, peso_u1, SUM(ouvido2.ouviu) AS peso_u2

// Calcula similaridade (quanto mais próximo os pesos, mais similar)
RETURN u2.caption AS Usuario_Similar,
       COLLECT({genero: g.caption, peso_u1: peso_u1, peso_u2: peso_u2}) AS comparacao,
       SUM(ABS(peso_u1 - peso_u2)) AS diferenca_total  // Menor diferença = mais similar
ORDER BY diferenca_total ASC
LIMIT 5

//
--------------------------------------------------------------------------------
//

//Recomenda músicas ao usuário com base no peso dos gêneros ouvidos:
MATCH (u:usuario {ID: 10129837465})
CALL {
    WITH u
    MATCH (u)-[ouvido:OUVIU]->(m:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
    RETURN g, SUM(ouvido.ouviu) AS peso_genero
    ORDER BY peso_genero DESC
    LIMIT 3
}
MATCH (g)<-[:ESTA_CONTIDO_EM]-(recomendacao:musica)
WHERE NOT EXISTS((u)-[:OUVIU]->(recomendacao))
RETURN recomendacao.caption AS Musica,
       g.caption AS Genero,
       peso_genero
ORDER BY peso_genero DESC
LIMIT 15;

//
--------------------------------------------------------------------------------
//
