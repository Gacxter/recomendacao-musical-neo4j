// -----------------------------------------------------
// RELACIONAMENTOS: Musicas -> Generos
// -----------------------------------------------------
// Power Metal
MATCH (m:musica {caption: 'Carry On'}), (g:genero {caption: 'Power Metal'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Wuthering Heights'}), (g:genero {caption: 'Power Metal'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);

// Pop
MATCH (m:musica {caption: 'Thriller'}), (g:genero {caption: 'Pop'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Billie Jean'}), (g:genero {caption: 'Pop'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Beat It'}), (g:genero {caption: 'Pop'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Shape of You'}), (g:genero {caption: 'Pop'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Thinking Out Loud'}), (g:genero {caption: 'Pop'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'We Found Love'}), (g:genero {caption: 'Pop'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);

// Sertanejo
MATCH (m:musica {caption: 'Aí Já Era'}), (g:genero {caption: 'Sertanejo'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Amor pra Recomeçar'}), (g:genero {caption: 'Sertanejo'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Infiel'}), (g:genero {caption: 'Sertanejo'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Eu Sei de Cor'}), (g:genero {caption: 'Sertanejo'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);

// Eletrônica
MATCH (m:musica {caption: 'Get Lucky'}), (g:genero {caption: 'Eletrônica'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Instant Crush'}), (g:genero {caption: 'Eletrônica'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);

// MPB
MATCH (m:musica {caption: 'Construção'}), (g:genero {caption: 'MPB'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Deus Lhe Pague'}), (g:genero {caption: 'MPB'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'You Dont Know Me'}), (g:genero {caption: 'MPB'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Nine Out Of Ten'}), (g:genero {caption: 'MPB'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Lilás'}), (g:genero {caption: 'MPB'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Oceano'}), (g:genero {caption: 'MPB'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Águas de Março'}), (g:genero {caption: 'MPB'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);

// Rock Alternativo
MATCH (m:musica {caption: 'Do I Wanna Know?'}), (g:genero {caption: 'Rock Alternativo'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'R U Mine?'}), (g:genero {caption: 'Rock Alternativo'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Magic'}), (g:genero {caption: 'Rock Alternativo'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'A Sky Full of Stars'}), (g:genero {caption: 'Rock Alternativo'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);

// Jazz
MATCH (m:musica {caption: 'So What'}), (g:genero {caption: 'Jazz'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Freddie Freeloader'}), (g:genero {caption: 'Jazz'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);

// Funk
MATCH (m:musica {caption: 'Envolver'}), (g:genero {caption: 'Funk'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Boys Don´t Cry'}), (g:genero {caption: 'Pop'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);

// Heavy Metal
MATCH (m:musica {caption: 'Enter Sandman'}), (g:genero {caption: 'Heavy Metal'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'The Unforgiven'}), (g:genero {caption: 'Heavy Metal'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);

// R&B
MATCH (m:musica {caption: 'Formation'}), (g:genero {caption: 'R&B'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Sorry'}), (g:genero {caption: 'R&B'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Work'}), (g:genero {caption: 'R&B'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Rehab'}), (g:genero {caption: 'R&B'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Back to Black'}), (g:genero {caption: 'R&B'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);

// Hip Hop
MATCH (m:musica {caption: 'HUMBLE.'}), (g:genero {caption: 'Hip Hop'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'DNA.'}), (g:genero {caption: 'Hip Hop'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);

// Rock
MATCH (m:musica {caption: 'Smells Like Teen Spirit'}), (g:genero {caption: 'Rock'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Come As You Are'}), (g:genero {caption: 'Rock'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Bohemian Rhapsody'}), (g:genero {caption: 'Rock'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Love of My Life'}), (g:genero {caption: 'Rock'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Eduardo e Mônica'}), (g:genero {caption: 'Rock'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Tempo Perdido'}), (g:genero {caption: 'Rock'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Wish You Were Here'}), (g:genero {caption: 'Rock'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Money'}), (g:genero {caption: 'Rock'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Sweet Child O Mine'}), (g:genero {caption: 'Rock'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Paradise City'}), (g:genero {caption: 'Rock'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Hey Jude'}), (g:genero {caption: 'Rock'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
MATCH (m:musica {caption: 'Here Comes The Sun'}), (g:genero {caption: 'Rock'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(g);
