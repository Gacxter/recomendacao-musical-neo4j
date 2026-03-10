🔍 Índices e Constraints Recomendados
Para garantir performance e integridade dos dados:

cypher
// Garantir unicidade do ID do usuário
CREATE CONSTRAINT IF NOT EXISTS FOR (u:usuario) REQUIRE u.ID IS UNIQUE;

// Garantir unicidade do email do usuário
CREATE CONSTRAINT IF NOT EXISTS FOR (u:usuario) REQUIRE u.email IS UNIQUE;

// Índices para buscas frequentes
CREATE INDEX IF NOT EXISTS FOR (m:musica) ON (m.Artista);
CREATE INDEX IF NOT EXISTS FOR (m:musica) ON (m.Lancamento);
CREATE INDEX IF NOT EXISTS FOR (a:album) ON (a.Artista);
CREATE INDEX IF NOT EXISTS FOR (g:genero) ON (g.caption);
🗺️ Diagrama Visual
https://diagrama-modelo.png

O diagrama acima mostra graficamente as entidades e seus relacionamentos, com cores diferentes para cada tipo de nó.

💡 Exemplos de Consultas Estruturais
Listar todos os tipos de nós e quantidades:
cypher
MATCH (u:usuario) RETURN 'usuários' AS tipo, COUNT(u) AS total
UNION ALL
MATCH (m:musica) RETURN 'músicas' AS tipo, COUNT(m) AS total
UNION ALL
MATCH (a:album) RETURN 'álbuns' AS tipo, COUNT(a) AS total
UNION ALL
MATCH (g:genero) RETURN 'gêneros' AS tipo, COUNT(g) AS total;
Visualizar o esquema completo:
cypher
CALL db.schema.visualization();
Listar todas as propriedades de um tipo de nó:
cypher
MATCH (m:musica)
RETURN keys(m) AS propriedades, m.Artista AS artista, m.caption AS musica
LIMIT 5;
text

---

## 📄 guia-consultas.md

```markdown
# 📖 Guia de Consultas - Sistema de Recomendação Musical

Este guia contém todas as consultas Cypher desenvolvidas para o sistema de recomendação musical, organizadas por categoria e com explicações detalhadas.

## 📋 Índice

1. [Consultas Básicas](#1-consultas-básicas)
2. [Recomendações Baseadas em Gênero](#2-recomendações-baseadas-em-gênero)
3. [Recomendações com Score Combinado](#3-recomendações-com-score-combinado)
4. [Análise de Similaridade entre Usuários](#4-análise-de-similaridade-entre-usuários)
5. [Análise de Perfil do Usuário](#5-análise-de-perfil-do-usuário)
6. [Consultas de Exploração de Dados](#6-consultas-de-exploração-de-dados)
7. [Manutenção e Diagnóstico](#7-manutenção-e-diagnóstico)

---

## 1. Consultas Básicas

### 1.1 Visualizar todos os usuários
```cypher
MATCH (u:usuario)
RETURN u.ID, u.email, u.caption
ORDER BY u.caption;
1.2 Buscar músicas por artista
cypher
MATCH (m:musica)
WHERE m.Artista CONTAINS 'Michael'
RETURN m.caption AS Musica, m.Artista AS Artista, m.Lancamento AS Ano
ORDER BY m.Lancamento DESC;
1.3 Listar todos os gêneros disponíveis
cypher
MATCH (g:genero)
RETURN g.caption AS Genero
ORDER BY g.caption;
1.4 Ver músicas de um álbum específico
cypher
MATCH (a:album {caption: 'Thriller'})<-[:ESTA_CONTIDO_EM]-(m:musica)
RETURN m.caption AS Musica, m.Artista AS Artista
ORDER BY m.caption;
2. Recomendações Baseadas em Gênero
2.1 Recomendação ponderada por gênero (versão simplificada)
Esta query calcula os gêneros que o usuário mais ouve (pela contagem de audições) e recomenda músicas não ouvidas desses gêneros.

cypher
MATCH (u:usuario {ID: 10129837465})-[ouvido:OUVIU]->(m:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
WITH u, g, SUM(ouvido.ouviu) AS peso_genero
ORDER BY peso_genero DESC
LIMIT 3
MATCH (g)<-[:ESTA_CONTIDO_EM]-(recomendacao:musica)
WHERE NOT EXISTS((u)-[:OUVIU]->(recomendacao))
RETURN recomendacao.caption AS Musica_Recomendada,
       g.caption AS Genero,
       peso_genero AS Relevancia
ORDER BY peso_genero DESC, Musica_Recomendada
LIMIT 15;
Explicação passo a passo:

Encontra todas as músicas que o usuário ouviu e seus respectivos gêneros

Soma o número de audições por gênero (SUM(ouvido.ouviu))

Ordena pelos gêneros mais ouvidos e pega os top 3

Busca músicas desses gêneros que o usuário não ouviu

Retorna as recomendações ordenadas pela relevância do gênero

2.2 Recomendação com limite personalizado
cypher
// Parâmetros: @usuario_id e @limite_generos
MATCH (u:usuario {ID: 10129837465})-[ouvido:OUVIU]->(m:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
WITH u, g, SUM(ouvido.ouviu) AS peso_genero
ORDER BY peso_genero DESC
LIMIT 5  // Altere este valor para aumentar/diminuir o número de gêneros considerados
MATCH (g)<-[:ESTA_CONTIDO_EM]-(recomendacao:musica)
WHERE NOT EXISTS((u)-[:OUVIU]->(recomendacao))
RETURN recomendacao.caption AS Musica_Recomendada,
       g.caption AS Genero,
       peso_genero AS Relevancia
ORDER BY peso_genero DESC, Musica_Recomendada
LIMIT 20;
3. Recomendações com Score Combinado
3.1 Recomendação com bônus por artista conhecido
Esta query dá pontuação extra para músicas de artistas que o usuário já ouviu antes.

cypher
MATCH (u:usuario {ID: 10129837465})-[ouvido:OUVIU]->(musica_ouvida:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
WITH u, g, SUM(ouvido.ouviu) AS total_genero, COLLECT(DISTINCT musica_ouvida.Artista) AS artistas_ouvidos

MATCH (g)<-[:ESTA_CONTIDO_EM]-(candidata:musica)
WHERE NOT EXISTS((u)-[:OUVIU]->(candidata))

RETURN candidata.caption AS Musica,
       g.caption AS Genero,
       total_genero AS Pontuacao_Genero,
       CASE WHEN candidata.Artista IN artistas_ouvidos 
            THEN 15 ELSE 0 END AS Bonus_Artista,
       (total_genero + 
        CASE WHEN candidata.Artista IN artistas_ouvidos 
             THEN 15 ELSE 0 END) AS Score_Final
ORDER BY Score_Final DESC
LIMIT 15;
3.2 Recomendação com peso progressivo do artista
cypher
// Recomendação que considera QUANTAS vezes o usuário ouviu o artista
MATCH (u:usuario {ID: 10129837465})-[ouvido:OUVIU]->(musica_ouvida:musica)
WITH u, 
     SUM(ouvido.ouviu) AS total_audicoes,
     COLLECT(DISTINCT musica_ouvida.Artista) AS artistas_ouvidos,
     COLLECT({artista: musica_ouvida.Artista, vezes: ouvido.ouviu}) AS audicoes_por_artista

// Desestrutura para calcular peso por artista
UNWIND audicoes_por_artista AS item
WITH u, artistas_ouvidos, item.artista AS artista, SUM(item.vezes) AS vezes_artista
ORDER BY vezes_artista DESC

// Pega os top 5 artistas do usuário
WITH u, artistas_ouvidos, COLLECT({artista: artista, peso: vezes_artista})[0..5] AS top_artistas

// Busca músicas para recomendar
MATCH (candidata:musica)
WHERE NOT EXISTS((u)-[:OUVIU]->(candidata))
  AND candidata.Artista IN [a IN top_artistas | a.artista]

RETURN candidata.caption AS Musica_Recomendada,
       candidata.Artista AS Artista,
       [a IN top_artistas WHERE a.artista = candidata.Artista | a.peso][0] AS Vezes_Ouvido_Artista,
       CASE 
           WHEN [a IN top_artistas WHERE a.artista = candidata.Artista | a.peso][0] > 20 THEN 30
           WHEN [a IN top_artistas WHERE a.artista = candidata.Artista | a.peso][0] > 10 THEN 20
           WHEN [a IN top_artistas WHERE a.artista = candidata.Artista | a.peso][0] > 5 THEN 10
           ELSE 5
       END AS Score_Artista
ORDER BY Score_Artista DESC
LIMIT 10;
4. Análise de Similaridade entre Usuários
4.1 Encontrar usuários com gostos similares
cypher
MATCH (u1:usuario {ID: 10129837465})-[ouvido1:OUVIU]->(:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
WITH u1, g, SUM(ouvido1.ouviu) AS peso_u1

MATCH (u2:usuario)-[ouvido2:OUVIU]->(:musica)-[:ESTA_CONTIDO_EM]->(g)
WHERE u2 <> u1

WITH u2, g, peso_u1, SUM(ouvido2.ouviu) AS peso_u2

RETURN u2.caption AS Usuario_Similar,
       COLLECT({
           genero: g.caption, 
           peso_usuario: peso_u1, 
           peso_similar: peso_u2
       }) AS comparacao,
       SUM(ABS(peso_u1 - peso_u2)) AS diferenca_total
ORDER BY diferenca_total ASC
LIMIT 5;
Interpretação: Quanto menor a diferenca_total, mais similares são os padrões de audição entre os usuários.

4.2 Recomendar músicas que usuários similares ouvem
cypher
// Primeiro encontra usuários similares
MATCH (u:usuario {ID: 10129837465})-[ouvido1:OUVIU]->(:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
WITH u, g, SUM(ouvido1.ouviu) AS peso_u

MATCH (similar:usuario)-[ouvido2:OUVIU]->(:musica)-[:ESTA_CONTIDO_EM]->(g)
WHERE similar <> u
WITH u, similar, g, peso_u, SUM(ouvido2.ouviu) AS peso_similar
WITH u, similar, SUM(ABS(peso_u - peso_similar)) AS diferenca
ORDER BY diferenca ASC
LIMIT 3

// Pega as músicas que esses usuários similares ouvem
MATCH (similar)-[o:OUVIU]->(recomendacao:musica)
WHERE NOT EXISTS((u)-[:OUVIU]->(recomendacao))
RETURN similar.caption AS Usuario_Fonte,
       recomendacao.caption AS Musica_Recomendada,
       o.ouviu AS Vezes_Ouvida
ORDER BY o.ouviu DESC
LIMIT 15;
5. Análise de Perfil do Usuário
5.1 Perfil completo de audição por gênero
cypher
MATCH (u:usuario {ID: 10129837465})-[ouvido:OUVIU]->(m:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
RETURN g.caption AS Genero,
       SUM(ouvido.ouviu) AS Total_Audicoes,
       COUNT(DISTINCT m) AS Musicas_Diferentes,
       ROUND(AVG(ouvido.ouviu), 2) AS Media_Por_Musica,
       COLLECT(DISTINCT m.Artista) AS Artistas_Ouvidos
ORDER BY Total_Audicoes DESC;
5.2 Top artistas do usuário
cypher
MATCH (u:usuario {ID: 10129837465})-[ouvido:OUVIU]->(m:musica)
RETURN m.Artista AS Artista,
       SUM(ouvido.ouviu) AS Total_Audicoes,
       COUNT(DISTINCT m) AS Musicas_Diferentes,
       COLLECT(DISTINCT m.caption) AS Musicas_Ouvidas
ORDER BY Total_Audicoes DESC
LIMIT 10;
5.3 Evolução temporal (por ano de lançamento)
cypher
MATCH (u:usuario {ID: 10129837465})-[ouvido:OUVIU]->(m:musica)
RETURN m.Lancamento AS Ano,
       SUM(ouvido.ouviu) AS Total_Audicoes,
       COUNT(DISTINCT m) AS Musicas_Diferentes,
       COLLECT(DISTINCT m.Artista) AS Artistas
ORDER BY Ano DESC;
5.4 Distribuição de audições por música
cypher
MATCH (u:usuario {ID: 10129837465})-[ouvido:OUVIU]->(m:musica)
RETURN m.caption AS Musica,
       m.Artista AS Artista,
       ouvido.ouviu AS Vezes_Ouvida
ORDER BY Vezes_Ouvida DESC
LIMIT 20;
6. Consultas de Exploração de Dados
6.1 Estatísticas gerais do banco
cypher
// Contagem de nós por label
MATCH (u:usuario) RETURN 'usuários' AS Tipo, COUNT(u) AS Quantidade
UNION ALL
MATCH (m:musica) RETURN 'músicas' AS Tipo, COUNT(m) AS Quantidade
UNION ALL
MATCH (a:album) RETURN 'álbuns' AS Tipo, COUNT(a) AS Quantidade
UNION ALL
MATCH (g:genero) RETURN 'gêneros' AS Tipo, COUNT(g) AS Quantidade;
cypher
// Contagem de relacionamentos por tipo
MATCH ()-[r:OUVIU]->() RETURN 'OUVIU' AS Tipo, COUNT(r) AS Quantidade
UNION ALL
MATCH ()-[r:ESTA_CONTIDO_EM]->() RETURN 'ESTA_CONTIDO_EM' AS Tipo, COUNT(r) AS Quantidade;
6.2 Músicas mais ouvidas (geral)
cypher
MATCH (u:usuario)-[ouvido:OUVIU]->(m:musica)
RETURN m.caption AS Musica,
       m.Artista AS Artista,
       SUM(ouvido.ouviu) AS Total_Audicoes,
       COUNT(u) AS Usuarios_Distintos
ORDER BY Total_Audicoes DESC
LIMIT 20;
6.3 Artistas mais ouvidos (geral)
cypher
MATCH (u:usuario)-[ouvido:OUVIU]->(m:musica)
RETURN m.Artista AS Artista,
       SUM(ouvido.ouviu) AS Total_Audicoes,
       COUNT(DISTINCT u) AS Ouvintes_Unicos,
       COUNT(DISTINCT m) AS Musicas_No_Catalogo
ORDER BY Total_Audicoes DESC
LIMIT 15;
6.4 Gêneros mais populares
cypher
MATCH (u:usuario)-[ouvido:OUVIU]->(m:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
RETURN g.caption AS Genero,
       SUM(ouvido.ouviu) AS Total_Audicoes,
       COUNT(DISTINCT u) AS Ouvintes_Distintos,
       COUNT(DISTINCT m) AS Musicas_Diferentes
ORDER BY Total_Audicoes DESC;
7. Manutenção e Diagnóstico
7.1 Verificar integridade dos dados
cypher
// Músicas sem gênero
MATCH (m:musica)
WHERE NOT (m)-[:ESTA_CONTIDO_EM]->(:genero)
RETURN m.caption AS Musica, m.Artista AS Artista;

// Músicas sem álbum
MATCH (m:musica)
WHERE NOT (m)-[:ESTA_CONTIDO_EM]->(:album)
RETURN m.caption AS Musica, m.Artista AS Artista;

// Usuários sem audições
MATCH (u:usuario)
WHERE NOT (u)-[:OUVIU]->()
RETURN u.caption AS Usuario, u.email AS Email;
7.2 Limpar dados duplicados (se houver)
cypher
// Encontrar músicas com mesmo nome e artista
MATCH (m:musica)
WITH m.Artista AS Artista, m.caption AS Musica, COLLECT(m) AS nodes
WHERE SIZE(nodes) > 1
RETURN Artista, Musica, SIZE(nodes) AS Duplicatas;
7.3 Atualizar contagem de audições (exemplo)
cypher
// Incrementar audição de uma música para um usuário
MATCH (u:usuario {ID: 10129837465})
MATCH (m:musica {caption: 'Carry On'})
MERGE (u)-[r:OUVIU]->(m)
ON CREATE SET r.ouviu = 1
ON MATCH SET r.ouviu = r.ouviu + 1;
🎯 Dicas de Performance
Use índices para buscas frequentes:

cypher
CREATE INDEX IF NOT EXISTS FOR (m:musica) ON (m.Artista);
CREATE INDEX IF NOT EXISTS FOR (m:musica) ON (m.Lancamento);
Limite os resultados com LIMIT para consultas exploratórias

Use PROFILE antes da query para entender o plano de execução:

cypher
PROFILE MATCH (u:usuario {ID: 10129837465})-[r:OUVIU]->(m:musica) RETURN m.caption, r.ouviu;
Para grandes volumes, considere usar paginação com SKIP e LIMIT

🔄 Exemplo de Fluxo Completo de Recomendação
cypher
// 1. Analisar perfil do usuário
MATCH (u:usuario {ID: 10129837465})-[r:OUVIU]->(m:musica)
RETURN 'Total de audições: ' + SUM(r.ouviu) AS Info
UNION ALL
MATCH (u)-[:OUVIU]->(m:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
RETURN 'Gênero favorito: ' + g.caption + ' (' + SUM(r.ouviu) + ' audições)' AS Info
ORDER BY Info DESC
LIMIT 5;

// 2. Gerar recomendações personalizadas
MATCH (u:usuario {ID: 10129837465})-[ouvido:OUVIU]->(m:musica)-[:ESTA_CONTIDO_EM]->(g:genero)
WITH u, g, SUM(ouvido.ouviu) AS peso_genero, COLLECT(DISTINCT m.Artista) AS artistas
ORDER BY peso_genero DESC
LIMIT 3
MATCH (g)<-[:ESTA_CONTIDO_EM]-(recomendacao:musica)
WHERE NOT EXISTS((u)-[:OUVIU]->(recomendacao))
RETURN 'Recomendação: ' + recomendacao.caption + ' (' + g.caption + ')' AS Sugestao
ORDER BY peso_genero DESC
LIMIT 10;
📚 Referências
Documentação Oficial do Neo4j Cypher

Guia de Performance Neo4j

APOC Library