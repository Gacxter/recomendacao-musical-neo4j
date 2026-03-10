// -----------------------------------------------------
// CRIACAO DOS RELACIONAMENTOS: Musicas -> Albuns
// -----------------------------------------------------
MATCH (m:musica {caption: 'Carry On'}) MATCH (a:album {caption: 'Angels Cry'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Wuthering Heights'}) MATCH (a:album {caption: 'Angels Cry'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Thriller'}) MATCH (a:album {caption: 'Thriller'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Billie Jean'}) MATCH (a:album {caption: 'Thriller'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Beat It'}) MATCH (a:album {caption: 'Thriller'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Aí Já Era'}) MATCH (a:album {caption: 'Aí Já Era'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Amor pra Recomeçar'}) MATCH (a:album {caption: 'Aí Já Era'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Get Lucky'}) MATCH (a:album {caption: 'Random Access Memories'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Instant Crush'}) MATCH (a:album {caption: 'Random Access Memories'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Construção'}) MATCH (a:album {caption: 'Construção'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Deus Lhe Pague'}) MATCH (a:album {caption: 'Construção'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Do I Wanna Know?'}) MATCH (a:album {caption: 'AM'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'R U Mine?'}) MATCH (a:album {caption: 'AM'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'So What'}) MATCH (a:album {caption: 'Kind of Blue'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Freddie Freeloader'}) MATCH (a:album {caption: 'Kind of Blue'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Envolver'}) MATCH (a:album {caption: 'Versions of Me'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Boys Don´t Cry'}) MATCH (a:album {caption: 'Versions of Me'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Enter Sandman'}) MATCH (a:album {caption: 'Metallica (The Black Album)'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'The Unforgiven'}) MATCH (a:album {caption: 'Metallica (The Black Album)'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Formation'}) MATCH (a:album {caption: 'Lemonade'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Sorry'}) MATCH (a:album {caption: 'Lemonade'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Magic'}) MATCH (a:album {caption: 'Ghost Stories'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'A Sky Full of Stars'}) MATCH (a:album {caption: 'Ghost Stories'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'You Dont Know Me'}) MATCH (a:album {caption: 'Transa'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Nine Out Of Ten'}) MATCH (a:album {caption: 'Transa'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'HUMBLE.'}) MATCH (a:album {caption: 'DAMN.'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'DNA.'}) MATCH (a:album {caption: 'DAMN.'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Infiel'}) MATCH (a:album {caption: 'Marilia Mendonça - Ao Vivo'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Eu Sei de Cor'}) MATCH (a:album {caption: 'Marilia Mendonça - Ao Vivo'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Smells Like Teen Spirit'}) MATCH (a:album {caption: 'Nevermind'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Come As You Are'}) MATCH (a:album {caption: 'Nevermind'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);

// (Adicione aqui os MATCH para as musicas restantes, associando ao album correspondente)
// Para simplificar, vamos associar as musicas extras a albuns genéricos ou albuns de exemplo

MATCH (m:musica {caption: 'Bohemian Rhapsody'}) MERGE (a:album {Artista: 'Queen', Lancamento: 1975, caption: 'A Night at the Opera'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Love of My Life'}) MATCH (a:album {caption: 'A Night at the Opera'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Eduardo e Mônica'}) MERGE (a:album {Artista: 'Legião Urbana', Lancamento: 1985, caption: 'Dois'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Tempo Perdido'}) MERGE (a:album {Artista: 'Legião Urbana', Lancamento: 1986, caption: 'Que País É Este'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Wish You Were Here'}) MERGE (a:album {Artista: 'Pink Floyd', Lancamento: 1975, caption: 'Wish You Were Here'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Money'}) MATCH (a:album {caption: 'Wish You Were Here'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Work'}) MERGE (a:album {Artista: 'Rihanna', Lancamento: 2016, caption: 'Anti'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'We Found Love'}) MERGE (a:album {Artista: 'Rihanna', Lancamento: 2011, caption: 'Talk That Talk'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Shape of You'}) MERGE (a:album {Artista: 'Ed Sheeran', Lancamento: 2017, caption: '÷ (Divide)'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Thinking Out Loud'}) MATCH (a:album {caption: '÷ (Divide)'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Sweet Child O Mine'}) MERGE (a:album {Artista: 'Guns N Roses', Lancamento: 1987, caption: 'Appetite for Destruction'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Paradise City'}) MATCH (a:album {caption: 'Appetite for Destruction'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Rehab'}) MERGE (a:album {Artista: 'Amy Winehouse', Lancamento: 2006, caption: 'Back to Black'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Back to Black'}) MATCH (a:album {caption: 'Back to Black'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Lilás'}) MERGE (a:album {Artista: 'Djavan', Lancamento: 1982, caption: 'Luz'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Oceano'}) MERGE (a:album {Artista: 'Djavan', Lancamento: 1992, caption: 'Coisa de Acender'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Hey Jude'}) MERGE (a:album {Artista: 'The Beatles', Lancamento: 1968, caption: 'The Beatles (White Album)'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Here Comes The Sun'}) MERGE (a:album {Artista: 'The Beatles', Lancamento: 1969, caption: 'Abbey Road'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);
MATCH (m:musica {caption: 'Águas de Março'}) MERGE (a:album {Artista: 'Elis Regina', Lancamento: 1974, caption: 'Elis & Tom'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a);