# 📊 Modelo de Dados - Sistema de Recomendação Musical

Este documento descreve detalhadamente o modelo de dados do sistema de recomendação musical utilizando Neo4j.

## 📋 Visão Geral

O modelo segue uma estrutura de grafo com 4 tipos de nós e 4 tipos de relacionamentos, permitindo capturar relações complexas entre usuários, músicas, álbuns e gêneros musicais.

## 🎯 Entidades (Nós)

### 👤 Usuário (`:usuario`)

Representa os usuários do sistema que ouvem músicas.

**Propriedades:**

| Propriedade | Tipo | Obrigatório | Descrição | Exemplo |
|------------|------|-------------|-----------|---------|
| `ID` | Integer | ✓ | Identificador único de 11 dígitos | `10129837465` |
| `email` | String | ✓ | Email do usuário | `alice.silva@email.com` |
| `caption` | String | ✓ | Nome do usuário | `Alice Silva` |

**Exemplo em Cypher:**
```cypher
CREATE (:usuario {
    ID: 10129837465,
    email: 'alice.silva@email.com',
    caption: 'Alice Silva'
});
🎵 Música (:musica)
Representa as músicas disponíveis no catálogo.

Propriedades:

Propriedade	Tipo	Obrigatório	Descrição	Exemplo
Artista	String	✓	Nome do artista/banda	Angra
Lancamento	Integer	✓	Ano de lançamento	1993
caption	String	✓	Título da música	Carry On
Exemplo em Cypher:

cypher
CREATE (:musica {
    Artista: 'Angra',
    Lancamento: 1993,
    caption: 'Carry On'
});
💿 Álbum (:album)
Representa os álbuns que agrupam as músicas.

Propriedades:

Propriedade	Tipo	Obrigatório	Descrição	Exemplo
Artista	String	✓	Nome do artista/banda	Michael Jackson
Lancamento	Integer	✓	Ano de lançamento do álbum	1982
caption	String	✓	Título do álbum	Thriller
Exemplo em Cypher:

cypher
CREATE (:album {
    Artista: 'Michael Jackson',
    Lancamento: 1982,
    caption: 'Thriller'
});
🏷️ Gênero (:genero)
Representa os gêneros musicais para classificação.

Propriedades:

Propriedade	Tipo	Obrigatório	Descrição	Exemplo
caption	String	✓	Nome do gênero	Rock, MPB, Sertanejo
Exemplo em Cypher:

cypher
CREATE (:genero {caption: 'Rock'});
🔗 Relacionamentos
1. OUVIU (Usuário → Música)
Registra que um usuário ouviu uma música, com contagem de vezes.

Direção: (:usuario)-[:OUVIU]->(:musica)

Propriedades:

Propriedade	Tipo	Obrigatório	Descrição	Exemplo
ouviu	Integer	✓	Número de vezes que o usuário ouviu a música	5
Exemplo em Cypher:

cypher
MATCH (u:usuario {ID: 10129837465})
MATCH (m:musica {caption: 'Carry On'})
CREATE (u)-[:OUVIU {ouviu: 5}]->(m);
2. ESTA_CONTIDO_EM (Música → Álbum)
Indica que uma música pertence a um álbum.

Direção: (:musica)-[:ESTA_CONTIDO_EM]->(:album)

Exemplo em Cypher:

cypher
MATCH (m:musica {caption: 'Carry On'})
MATCH (a:album {caption: 'Angels Cry'})
CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
3. ESTA_CONTIDO_EM (Música → Gênero)
Classifica uma música em um gênero musical.

Direção: (:musica)-[:ESTA_CONTIDO_EM]->(:genero)

Exemplo em Cypher:

cypher
MATCH (m:musica {caption: 'Carry On'})
MATCH (g:genero {caption: 'Power Metal'})
CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
4. ESTA_CONTIDO_EM (Álbum → Gênero)
Classifica um álbum em um gênero musical.

Direção: (:album)-[:ESTA_CONTIDO_EM]->(:genero)

Exemplo em Cypher:

cypher
MATCH (a:album {caption: 'Angels Cry'})
MATCH (g:genero {caption: 'Power Metal'})
CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
📈 Cardinalidades
Relacionamento	Origem	Destino	Cardinalidade
OUVIU	Usuário	Música	Um usuário pode ouvir N músicas / Uma música pode ser ouvida por N usuários (N:N)
ESTA_CONTIDO_EM	Música	Álbum	Uma música pertence a 1 álbum / Um álbum contém N músicas (N:1)
ESTA_CONTIDO_EM	Música	Gênero	Uma música pode ter N gêneros / Um gênero pode ter N músicas (N:N)
ESTA_CONTIDO_EM	Álbum	Gênero	Um álbum pode ter N gêneros / Um gênero pode ter N álbuns (N:N)