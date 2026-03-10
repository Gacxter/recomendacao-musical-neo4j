# 🎵 Sistema de Recomendação Musical com Neo4j

![Neo4j](https://img.shields.io/badge/Neo4j-008CC1?style=for-the-badge&logo=neo4j&logoColor=white)
![Cypher](https://img.shields.io/badge/Cypher-000000?style=for-the-badge&logo=neo4j&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)
![Version](https://img.shields.io/badge/version-1.0.0-blue)

Um sistema completo de recomendação musical utilizando banco de dados de grafos Neo4j. O projeto implementa um modelo de dados rico com usuários, músicas, álbuns e gêneros, permitindo recomendações precisas baseadas em padrões de audição e similaridades musicais.

## 📋 Índice

- [Sobre o Projeto](#-sobre-o-projeto)
- [Modelo de Dados](#-modelo-de-dados)
- [Pré-requisitos](#-pré-requisitos)
- [Como Usar](#-como-usar)
  - [Opção 1: Restaurar Backup (Recomendado)](#opção-1-restaurar-backup-recomendado)
  - [Opção 2: Executar Scripts Manualmente](#opção-2-executar-scripts-manualmente)
  - [Opção 3: Docker Local](#opção-3-docker-local)
- [Consultas de Recomendação](#-consultas-de-recomendação)
  - [Recomendação Ponderada por Gênero](#1-recomendação-ponderada-por-gênero)
  - [Recomendação com Score Combinado](#2-recomendação-com-score-combinado-artista--gênero)
  - [Recomendação com Peso do Artista](#3-recomendação-com-peso-do-artista)
  - [Usuários com Gostos Similares](#4-encontrar-usuários-com-gostos-similares)
  - [Análise de Perfil do Usuário](#5-análise-de-perfil-do-usuário)
- [Estrutura do Projeto](#-estrutura-do-projeto)
- [Tecnologias Utilizadas](#-tecnologias-utilizadas)
- [Contribuindo](#-contribuindo)
- [Licença](#-licença)
- [Contato](#-contato)

## 🎯 Sobre o Projeto

Este projeto implementa um sistema de recomendação musical utilizando banco de dados de grafos Neo4j. A principal vantagem do uso de grafos é a capacidade de capturar relações complexas entre usuários, músicas, artistas e gêneros, permitindo recomendações mais precisas e contextualizadas.

### Características Principais

- **20 usuários** com perfis de audição diversificados
- **50 músicas** de estilos variados (Rock, Pop, MPB, Sertanejo, Metal, Jazz, etc.)
- **20 álbuns** com informações completas de artista e ano
- **20 gêneros musicais** para classificação precisa
- **Relacionamentos ponderados** com contagem de audições
- **Queries otimizadas** para diferentes estratégias de recomendação

## 📊 Modelo de Dados

### Nós (Nodes)

#### 👤 Usuário (`:usuario`)
| Propriedade | Tipo | Descrição | Exemplo |
|------------|------|-----------|---------|
| `ID` | Integer | Identificador único de 11 dígitos | `10129837465` |
| `email` | String | Email do usuário | `alice.silva@email.com` |
| `caption` | String | Nome do usuário | `Alice Silva` |

#### 🎵 Música (`:musica`)
| Propriedade | Tipo | Descrição | Exemplo |
|------------|------|-----------|---------|
| `Artista` | String | Nome do artista/banda | `Angra` |
| `Lancamento` | Integer | Ano de lançamento | `1993` |
| `caption` | String | Título da música | `Carry On` |

#### 💿 Álbum (`:album`)
| Propriedade | Tipo | Descrição | Exemplo |
|------------|------|-----------|---------|
| `Artista` | String | Nome do artista/banda | `Michael Jackson` |
| `Lancamento` | Integer | Ano de lançamento | `1982` |
| `caption` | String | Título do álbum | `Thriller` |

#### 🏷️ Gênero (`:genero`)
| Propriedade | Tipo | Descrição | Exemplo |
|------------|------|-----------|---------|
| `caption` | String | Nome do gênero | `Rock`, `MPB`, `Sertanejo` |

### Relacionamentos

```cypher
// Usuário ouviu música (com contagem)
(:usuario)-[:OUVIU {ouviu: 5}]->(:musica)

// Música pertence a álbum
(:musica)-[:ESTA_CONTIDO_EM]->(:album)

// Música classificada por gênero
(:musica)-[:ESTA_CONTIDO_EM]->(:genero)

// Álbum classificado por gênero
(:album)-[:ESTA_CONTIDO_EM]->(:genero)
```
### Diagrama do Modelo

[Usuário] --[:OUVIU {ouviu: N}]--> [Música] --[:ESTA_CONTIDO_EM]--> [Álbum]
                                        |
                                        ↓
                                   [Gênero] <--[:ESTA_CONTIDO_EM]-- [Álbum]

### 🔧 Pré-requisitos
Neo4j Aura (recomendado) ou Neo4j Desktop/Community (versão 4.4+)

Acesso ao banco de dados com credenciais válidas

(Opcional) Docker para execução local

(Opcional) Python 3.8+ para integração com API

🚀 Como Usar
Opção 1: Restaurar Backup (Recomendado)
O backup completo do banco de dados está disponível em data/backup/.

Verifique o arquivo de backup:

bash
# O arquivo está localizado em:
data/backup/aura-backup-2024.backup
No Neo4j Aura Console:

Acesse console.neo4j.io

Selecione sua instância

Vá para a aba "Snapshots"

Clique em "Restore from backup file" (ou "Upload backup")

Selecione o arquivo .backup da pasta data/backup/

Aguarde a restauração (pode levar alguns minutos)

Verifique a restauração:

cypher
// Execute esta query no Neo4j Browser
MATCH (n) RETURN labels(n), COUNT(*) AS quantidade
Opção 2: Executar Scripts Manualmente
Se preferir criar o banco do zero, execute os scripts na ordem abaixo:

bash
# Conecte ao seu banco via Neo4j Browser ou Cypher Shell
# Execute cada arquivo sequencialmente

:source scripts/01-criar-usuarios.cypher
:source scripts/02-criar-generos.cypher
:source scripts/03-criar-albuns.cypher
:source scripts/04-criar-musicas.cypher
:source scripts/05-relacionamentos-musica-album.cypher
:source scripts/06-relacionamentos-musica-genero.cypher
:source scripts/07-relacionamentos-album-genero.cypher
:source scripts/08-relacionamentos-usuario-musica.cypher
Nota para Windows: Se estiver usando o Neo4j Browser no Windows, use o caminho completo ou relativo com barras normais:

text
:source scripts/01-criar-usuarios.cypher
Opção 3: Docker Local
Para executar o projeto localmente com Docker:

yaml
# docker-compose.yml
version: '3.8'
services:
  neo4j:
    image: neo4j:5-enterprise
    container_name: neo4j-recomendacao
    ports:
      - "7474:7474"  # HTTP Browser
      - "7687:7687"  # Bolt protocol
    environment:
      - NEO4J_AUTH=neo4j/senha123
      - NEO4J_PLUGINS=["apoc"]
      - NEO4J_ACCEPT_LICENSE_AGREEMENT=yes
    volumes:
      - ./data/backup:/backup
      - ./scripts:/scripts
      - ./data/neo4j:/data
bash
# Iniciar o container
docker-compose up -d

# Restaurar o backup (ajuste o nome do arquivo conforme necessário)
docker exec neo4j-recomendacao neo4j-admin database load neo4j --from-path=/backup --verbose

# Acessar o browser
# Abra http://localhost:7474 no navegador