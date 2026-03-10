// -----------------------------------------------------
// RELACIONAMENTOS: Albuns -> Generos
// -----------------------------------------------------
MATCH (a:album {caption: 'Angels Cry'}), (g:genero {caption: 'Power Metal'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Thriller'}), (g:genero {caption: 'Pop'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Aí Já Era'}), (g:genero {caption: 'Sertanejo'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Random Access Memories'}), (g:genero {caption: 'Eletrônica'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Construção'}), (g:genero {caption: 'MPB'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'AM'}), (g:genero {caption: 'Rock Alternativo'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Kind of Blue'}), (g:genero {caption: 'Jazz'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Versions of Me'}), (g:genero {caption: 'Pop'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Versions of Me'}), (g:genero {caption: 'Funk'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Metallica (The Black Album)'}), (g:genero {caption: 'Heavy Metal'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Lemonade'}), (g:genero {caption: 'R&B'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Lemonade'}), (g:genero {caption: 'Pop'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Ghost Stories'}), (g:genero {caption: 'Rock Alternativo'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Ghost Stories'}), (g:genero {caption: 'Pop'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Transa'}), (g:genero {caption: 'Tropicalia'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'DAMN.'}), (g:genero {caption: 'Hip Hop'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Marilia Mendonça - Ao Vivo'}), (g:genero {caption: 'Sertanejo'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Nevermind'}), (g:genero {caption: 'Rock'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'A Night at the Opera'}), (g:genero {caption: 'Rock'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Dois'}), (g:genero {caption: 'Rock'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Que País É Este'}), (g:genero {caption: 'Rock'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Wish You Were Here'}), (g:genero {caption: 'Rock'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Anti'}), (g:genero {caption: 'R&B'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Talk That Talk'}), (g:genero {caption: 'Pop'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: '÷ (Divide)'}), (g:genero {caption: 'Pop'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Appetite for Destruction'}), (g:genero {caption: 'Rock'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Back to Black'}), (g:genero {caption: 'R&B'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Luz'}), (g:genero {caption: 'MPB'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Coisa de Acender'}), (g:genero {caption: 'MPB'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'The Beatles (White Album)'}), (g:genero {caption: 'Rock'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Abbey Road'}), (g:genero {caption: 'Rock'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);
MATCH (a:album {caption: 'Elis & Tom'}), (g:genero {caption: 'MPB'}) CREATE (a)-[:ESTA_CONTIDO_EM]->(g);