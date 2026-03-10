// -----------------------------------------------------
// CRIACAO DOS RELACIONAMENTOS: Usuarios -> Musicas (OUVIU)
// -----------------------------------------------------
// Gerando algumas relações aleatórias para simular o histórico.
// A propriedade 'ouviu' varia de 1 a 15 vezes.

// Usuário 1
MATCH (u:usuario {ID: 10129837465}), (m:musica {caption: 'Carry On'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m);
MATCH (u:usuario {ID: 10129837465}), (m:musica {caption: 'Enter Sandman'}) CREATE (u)-[:OUVIU {ouviu: 3}]->(m);
MATCH (u:usuario {ID: 10129837465}), (m:musica {caption: 'Bohemian Rhapsody'}) CREATE (u)-[:OUVIU {ouviu: 10}]->(m);

// Usuário 2
MATCH (u:usuario {ID: 10238561904}), (m:musica {caption: 'Billie Jean'}) CREATE (u)-[:OUVIU {ouviu: 8}]->(m);
MATCH (u:usuario {ID: 10238561904}), (m:musica {caption: 'Get Lucky'}) CREATE (u)-[:OUVIU {ouviu: 6}]->(m);
MATCH (u:usuario {ID: 10238561904}), (m:musica {caption: 'Shape of You'}) CREATE (u)-[:OUVIU {ouviu: 12}]->(m);

// Usuário 3
MATCH (u:usuario {ID: 10347581236}), (m:musica {caption: 'Construção'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m);
MATCH (u:usuario {ID: 10347581236}), (m:musica {caption: 'Águas de Março'}) CREATE (u)-[:OUVIU {ouviu: 7}]->(m);
MATCH (u:usuario {ID: 10347581236}), (m:musica {caption: 'Oceano'}) CREATE (u)-[:OUVIU {ouviu: 3}]->(m);

// Usuário 4
MATCH (u:usuario {ID: 10456982317}), (m:musica {caption: 'Do I Wanna Know?'}) CREATE (u)-[:OUVIU {ouviu: 15}]->(m);
MATCH (u:usuario {ID: 10456982317}), (m:musica {caption: 'Smells Like Teen Spirit'}) CREATE (u)-[:OUVIU {ouviu: 9}]->(m);
MATCH (u:usuario {ID: 10456982317}), (m:musica {caption: 'Sweet Child O Mine'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m);

// Usuário 5
MATCH (u:usuario {ID: 10567893452}), (m:musica {caption: 'Infiel'}) CREATE (u)-[:OUVIU {ouviu: 20}]->(m);
MATCH (u:usuario {ID: 10567893452}), (m:musica {caption: 'Aí Já Era'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m);
MATCH (u:usuario {ID: 10567893452}), (m:musica {caption: 'Envolver'}) CREATE (u)-[:OUVIU {ouviu: 3}]->(m);

// Usuário 6
MATCH (u:usuario {ID: 10678234569}), (m:musica {caption: 'Formation'}) CREATE (u)-[:OUVIU {ouviu: 6}]->(m);
MATCH (u:usuario {ID: 10678234569}), (m:musica {caption: 'HUMBLE.'}) CREATE (u)-[:OUVIU {ouviu: 8}]->(m);
MATCH (u:usuario {ID: 10678234569}), (m:musica {caption: 'Work'}) CREATE (u)-[:OUVIU {ouviu: 7}]->(m);

// Usuário 7
MATCH (u:usuario {ID: 10789123457}), (m:musica {caption: 'Magic'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m);
MATCH (u:usuario {ID: 10789123457}), (m:musica {caption: 'Thinking Out Loud'}) CREATE (u)-[:OUVIU {ouviu: 11}]->(m);
MATCH (u:usuario {ID: 10789123457}), (m:musica {caption: 'Hey Jude'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m);

// Usuário 8
MATCH (u:usuario {ID: 10890123876}), (m:musica {caption: 'So What'}) CREATE (u)-[:OUVIU {ouviu: 2}]->(m);
MATCH (u:usuario {ID: 10890123876}), (m:musica {caption: 'Rehab'}) CREATE (u)-[:OUVIU {ouviu: 9}]->(m);
MATCH (u:usuario {ID: 10890123876}), (m:musica {caption: 'Back to Black'}) CREATE (u)-[:OUVIU {ouviu: 7}]->(m);

// Usuário 9
MATCH (u:usuario {ID: 10901234785}), (m:musica {caption: 'Tempo Perdido'}) CREATE (u)-[:OUVIU {ouviu: 12}]->(m);
MATCH (u:usuario {ID: 10901234785}), (m:musica {caption: 'Eduardo e Mônica'}) CREATE (u)-[:OUVIU {ouviu: 8}]->(m);
MATCH (u:usuario {ID: 10901234785}), (m:musica {caption: 'Lilás'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m);

// Usuário 10
MATCH (u:usuario {ID: 11012345698}), (m:musica {caption: 'Wish You Were Here'}) CREATE (u)-[:OUVIU {ouviu: 10}]->(m);
MATCH (u:usuario {ID: 11012345698}), (m:musica {caption: 'Money'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m);
MATCH (u:usuario {ID: 11012345698}), (m:musica {caption: 'Paradise City'}) CREATE (u)-[:OUVIU {ouviu: 6}]->(m);

// Usuário 11
MATCH (u:usuario {ID: 11123456789}), (m:musica {caption: 'We Found Love'}) CREATE (u)-[:OUVIU {ouviu: 9}]->(m);
MATCH (u:usuario {ID: 11123456789}), (m:musica {caption: 'Sorry'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m);
MATCH (u:usuario {ID: 11123456789}), (m:musica {caption: 'A Sky Full of Stars'}) CREATE (u)-[:OUVIU {ouviu: 14}]->(m);

// Usuário 12
MATCH (u:usuario {ID: 11234567890}), (m:musica {caption: 'DNA.'}) CREATE (u)-[:OUVIU {ouviu: 7}]->(m);
MATCH (u:usuario {ID: 11234567890}), (m:musica {caption: 'The Unforgiven'}) CREATE (u)-[:OUVIU {ouviu: 3}]->(m);
MATCH (u:usuario {ID: 11234567890}), (m:musica {caption: 'Instant Crush'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m);

// Usuário 13
MATCH (u:usuario {ID: 11345678901}), (m:musica {caption: 'R U Mine?'}) CREATE (u)-[:OUVIU {ouviu: 11}]->(m);
MATCH (u:usuario {ID: 11345678901}), (m:musica {caption: 'Come As You Are'}) CREATE (u)-[:OUVIU {ouviu: 6}]->(m);
MATCH (u:usuario {ID: 11345678901}), (m:musica {caption: 'Wuthering Heights'}) CREATE (u)-[:OUVIU {ouviu: 2}]->(m);

// Usuário 14
MATCH (u:usuario {ID: 11456789012}), (m:musica {caption: 'Deus Lhe Pague'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m);
MATCH (u:usuario {ID: 11456789012}), (m:musica {caption: 'Nine Out Of Ten'}) CREATE (u)-[:OUVIU {ouviu: 3}]->(m);
MATCH (u:usuario {ID: 11456789012}), (m:musica {caption: 'You Dont Know Me'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m);

// Usuário 15
MATCH (u:usuario {ID: 11567890123}), (m:musica {caption: 'Beat It'}) CREATE (u)-[:OUVIU {ouviu: 8}]->(m);
MATCH (u:usuario {ID: 11567890123}), (m:musica {caption: 'Amor pra Recomeçar'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m);
MATCH (u:usuario {ID: 11567890123}), (m:musica {caption: 'Boys Don´t Cry'}) CREATE (u)-[:OUVIU {ouviu: 6}]->(m);

// Usuário 16
MATCH (u:usuario {ID: 11678901234}), (m:musica {caption: 'Freddie Freeloader'}) CREATE (u)-[:OUVIU {ouviu: 1}]->(m);
MATCH (u:usuario {ID: 11678901234}), (m:musica {caption: 'Love of My Life'}) CREATE (u)-[:OUVIU {ouviu: 7}]->(m);
MATCH (u:usuario {ID: 11678901234}), (m:musica {caption: 'Here Comes The Sun'}) CREATE (u)-[:OUVIU {ouviu: 9}]->(m);

// Usuário 17
MATCH (u:usuario {ID: 11789012345}), (m:musica {caption: 'Eu Sei de Cor'}) CREATE (u)-[:OUVIU {ouviu: 13}]->(m);
MATCH (u:usuario {ID: 11789012345}), (m:musica {caption: 'Envolver'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m);
MATCH (u:usuario {ID: 11789012345}), (m:musica {caption: 'Work'}) CREATE (u)-[:OUVIU {ouviu: 6}]->(m);

// Usuário 18
MATCH (u:usuario {ID: 11890123456}), (m:musica {caption: 'Thriller'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m);
MATCH (u:usuario {ID: 11890123456}), (m:musica {caption: 'Get Lucky'}) CREATE (u)-[:OUVIU {ouviu: 8}]->(m);
MATCH (u:usuario {ID: 11890123456}), (m:musica {caption: 'HUMBLE.'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m);

// Usuário 19
MATCH (u:usuario {ID: 11901234567}), (m:musica {caption: 'Smells Like Teen Spirit'}) CREATE (u)-[:OUVIU {ouviu: 10}]->(m);
MATCH (u:usuario {ID: 11901234567}), (m:musica {caption: 'Shape of You'}) CREATE (u)-[:OUVIU {ouviu: 7}]->(m);
MATCH (u:usuario {ID: 11901234567}), (m:musica {caption: 'Bohemian Rhapsody'}) CREATE (u)-[:OUVIU {ouviu: 12}]->(m);

// Usuário 20
MATCH (u:usuario {ID: 12012345678}), (m:musica {caption: 'Carry On'}) CREATE (u)-[:OUVIU {ouviu: 3}]->(m);
MATCH (u:usuario {ID: 12012345678}), (m:musica {caption: 'Águas de Março'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m);
MATCH (u:usuario {ID: 12012345678}), (m:musica {caption: 'Formation'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m);