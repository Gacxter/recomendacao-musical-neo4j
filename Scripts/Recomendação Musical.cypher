// =====================================================
// SISTEMA DE RECOMENDACAO DE MUSICAS - NEO4J
// =====================================================

// -----------------------------------------------------
// CRIACAO DOS USUARIOS (20 usuarios)
// -----------------------------------------------------
CREATE (u1:usuario {ID: 10129837465, email: 'alice.silva@email.com'}) SET u1.caption = 'Alice Silva'
CREATE (u2:usuario {ID: 10238561904, email: 'bruno.oliveira@email.com'}) SET u2.caption = 'Bruno Oliveira'
CREATE (u3:usuario {ID: 10347581236, email: 'carla.santos@email.com'}) SET u3.caption = 'Carla Santos'
CREATE (u4:usuario {ID: 10456982317, email: 'diego.lima@email.com'}) SET u4.caption = 'Diego Lima'
CREATE (u5:usuario {ID: 10567893452, email: 'elena.pereira@email.com'}) SET u5.caption = 'Elena Pereira'
CREATE (u6:usuario {ID: 10678234569, email: 'felipe.almeida@email.com'}) SET u6.caption = 'Felipe Almeida'
CREATE (u7:usuario {ID: 10789123457, email: 'gabriela.costa@email.com'}) SET u7.caption = 'Gabriela Costa'
CREATE (u8:usuario {ID: 10890123876, email: 'henrique.rocha@email.com'}) SET u8.caption = 'Henrique Rocha'
CREATE (u9:usuario {ID: 10901234785, email: 'isabela.martins@email.com'}) SET u9.caption = 'Isabela Martins'
CREATE (u10:usuario {ID: 11012345698, email: 'joao.pedro@email.com'}) SET u10.caption = 'Joao Pedro'
CREATE (u11:usuario {ID: 11123456789, email: 'karina.fernandes@email.com'}) SET u11.caption = 'Karina Fernandes'
CREATE (u12:usuario {ID: 11234567890, email: 'lucas.mendes@email.com'}) SET u12.caption = 'Lucas Mendes'
CREATE (u13:usuario {ID: 11345678901, email: 'mariana.ribeiro@email.com'}) SET u13.caption = 'Mariana Ribeiro'
CREATE (u14:usuario {ID: 11456789012, email: 'nicolas.barbosa@email.com'}) SET u14.caption = 'Nicolas Barbosa'
CREATE (u15:usuario {ID: 11567890123, email: 'olivia.carvalho@email.com'}) SET u15.caption = 'Olivia Carvalho'
CREATE (u16:usuario {ID: 11678901234, email: 'pedro.henrique@email.com'}) SET u16.caption = 'Pedro Henrique'
CREATE (u17:usuario {ID: 11789012345, email: 'renata.dias@email.com'}) SET u17.caption = 'Renata Dias'
CREATE (u18:usuario {ID: 11890123456, email: 'samuel.freitas@email.com'}) SET u18.caption = 'Samuel Freitas'
CREATE (u19:usuario {ID: 11901234567, email: 'tatiane.nunes@email.com'}) SET u19.caption = 'Tatiane Nunes'
CREATE (u20:usuario {ID: 12012345678, email: 'vinicius.araujo@email.com'}) SET u20.caption = 'Vinicius Araujo'

// -----------------------------------------------------
// CRIACAO DOS GENEROS
// -----------------------------------------------------
CREATE (g1:genero {caption: 'Power Metal'})
CREATE (g2:genero {caption: 'Pop'})
CREATE (g3:genero {caption: 'Sertanejo'})
CREATE (g4:genero {caption: 'Eletrônica'})
CREATE (g5:genero {caption: 'MPB'})
CREATE (g6:genero {caption: 'Rock'})
CREATE (g7:genero {caption: 'Jazz'})
CREATE (g8:genero {caption: 'Funk'})
CREATE (g9:genero {caption: 'Heavy Metal'})
CREATE (g10:genero {caption: 'R&B'})
CREATE (g11:genero {caption: 'Rock Alternativo'})
CREATE (g12:genero {caption: 'Tropicalia'})
CREATE (g13:genero {caption: 'Hip Hop'})
CREATE (g14:genero {caption: 'Samba'})
CREATE (g15:genero {caption: 'Blues'})
CREATE (g16:genero {caption: 'Indie'})
CREATE (g17:genero {caption: 'Reggae'})
CREATE (g18:genero {caption: 'Country'})
CREATE (g19:genero {caption: 'Clássico'})
CREATE (g20:genero {caption: 'Disco'})

// -----------------------------------------------------
// CRIACAO DOS ALBUMS
// -----------------------------------------------------
CREATE (a1:album {Artista: 'Angra', Lancamento: 1993, caption: 'Angels Cry'})
CREATE (a2:album {Artista: 'Michael Jackson', Lancamento: 1982, caption: 'Thriller'})
CREATE (a3:album {Artista: 'Jorge & Mateus', Lancamento: 2012, caption: 'Aí Já Era'})
CREATE (a4:album {Artista: 'Daft Punk', Lancamento: 2013, caption: 'Random Access Memories'})
CREATE (a5:album {Artista: 'Chico Buarque', Lancamento: 1971, caption: 'Construção'})
CREATE (a6:album {Artista: 'Arctic Monkeys', Lancamento: 2013, caption: 'AM'})
CREATE (a7:album {Artista: 'Miles Davis', Lancamento: 1959, caption: 'Kind of Blue'})
CREATE (a8:album {Artista: 'Anitta', Lancamento: 2022, caption: 'Versions of Me'})
CREATE (a9:album {Artista: 'Metallica', Lancamento: 1991, caption: 'Metallica (The Black Album)'})
CREATE (a10:album {Artista: 'Beyoncé', Lancamento: 2016, caption: 'Lemonade'})
CREATE (a11:album {Artista: 'Coldplay', Lancamento: 2014, caption: 'Ghost Stories'})
CREATE (a12:album {Artista: 'Caetano Veloso', Lancamento: 1972, caption: 'Transa'})
CREATE (a13:album {Artista: 'Kendrick Lamar', Lancamento: 2017, caption: 'DAMN.'})
CREATE (a14:album {Artista: 'Marilia Mendonça', Lancamento: 2016, caption: 'Marilia Mendonça - Ao Vivo'})
CREATE (a15:album {Artista: 'Nirvana', Lancamento: 1991, caption: 'Nevermind'})

// -----------------------------------------------------
// CRIACAO DAS MUSICAS (50 musicas)
// -----------------------------------------------------
CREATE (m1:musica {Artista: 'Angra', Lancamento: 1993, caption: 'Carry On'})
CREATE (m2:musica {Artista: 'Angra', Lancamento: 1993, caption: 'Wuthering Heights'})
CREATE (m3:musica {Artista: 'Michael Jackson', Lancamento: 1982, caption: 'Thriller'})
CREATE (m4:musica {Artista: 'Michael Jackson', Lancamento: 1982, caption: 'Billie Jean'})
CREATE (m5:musica {Artista: 'Michael Jackson', Lancamento: 1982, caption: 'Beat It'})
CREATE (m6:musica {Artista: 'Jorge & Mateus', Lancamento: 2012, caption: 'Aí Já Era'})
CREATE (m7:musica {Artista: 'Jorge & Mateus', Lancamento: 2012, caption: 'Amor pra Recomeçar'})
CREATE (m8:musica {Artista: 'Daft Punk', Lancamento: 2013, caption: 'Get Lucky'})
CREATE (m9:musica {Artista: 'Daft Punk', Lancamento: 2013, caption: 'Instant Crush'})
CREATE (m10:musica {Artista: 'Chico Buarque', Lancamento: 1971, caption: 'Construção'})
CREATE (m11:musica {Artista: 'Chico Buarque', Lancamento: 1971, caption: 'Deus Lhe Pague'})
CREATE (m12:musica {Artista: 'Arctic Monkeys', Lancamento: 2013, caption: 'Do I Wanna Know?'})
CREATE (m13:musica {Artista: 'Arctic Monkeys', Lancamento: 2013, caption: 'R U Mine?'})
CREATE (m14:musica {Artista: 'Miles Davis', Lancamento: 1959, caption: 'So What'})
CREATE (m15:musica {Artista: 'Miles Davis', Lancamento: 1959, caption: 'Freddie Freeloader'})
CREATE (m16:musica {Artista: 'Anitta', Lancamento: 2022, caption: 'Envolver'})
CREATE (m17:musica {Artista: 'Anitta', Lancamento: 2022, caption: 'Boys Don´t Cry'})
CREATE (m18:musica {Artista: 'Metallica', Lancamento: 1991, caption: 'Enter Sandman'})
CREATE (m19:musica {Artista: 'Metallica', Lancamento: 1991, caption: 'The Unforgiven'})
CREATE (m20:musica {Artista: 'Beyoncé', Lancamento: 2016, caption: 'Formation'})
CREATE (m21:musica {Artista: 'Beyoncé', Lancamento: 2016, caption: 'Sorry'})
CREATE (m22:musica {Artista: 'Coldplay', Lancamento: 2014, caption: 'Magic'})
CREATE (m23:musica {Artista: 'Coldplay', Lancamento: 2014, caption: 'A Sky Full of Stars'})
CREATE (m24:musica {Artista: 'Caetano Veloso', Lancamento: 1972, caption: 'You Dont Know Me'})
CREATE (m25:musica {Artista: 'Caetano Veloso', Lancamento: 1972, caption: 'Nine Out Of Ten'})
CREATE (m26:musica {Artista: 'Kendrick Lamar', Lancamento: 2017, caption: 'HUMBLE.'})
CREATE (m27:musica {Artista: 'Kendrick Lamar', Lancamento: 2017, caption: 'DNA.'})
CREATE (m28:musica {Artista: 'Marilia Mendonça', Lancamento: 2016, caption: 'Infiel'})
CREATE (m29:musica {Artista: 'Marilia Mendonça', Lancamento: 2016, caption: 'Eu Sei de Cor'})
CREATE (m30:musica {Artista: 'Nirvana', Lancamento: 1991, caption: 'Smells Like Teen Spirit'})
CREATE (m31:musica {Artista: 'Nirvana', Lancamento: 1991, caption: 'Come As You Are'})
CREATE (m32:musica {Artista: 'Queen', Lancamento: 1975, caption: 'Bohemian Rhapsody'})
CREATE (m33:musica {Artista: 'Queen', Lancamento: 1975, caption: 'Love of My Life'})
CREATE (m34:musica {Artista: 'Legião Urbana', Lancamento: 1985, caption: 'Eduardo e Mônica'})
CREATE (m35:musica {Artista: 'Legião Urbana', Lancamento: 1986, caption: 'Tempo Perdido'})
CREATE (m36:musica {Artista: 'Pink Floyd', Lancamento: 1973, caption: 'Wish You Were Here'})
CREATE (m37:musica {Artista: 'Pink Floyd', Lancamento: 1973, caption: 'Money'})
CREATE (m38:musica {Artista: 'Rihanna', Lancamento: 2016, caption: 'Work'})
CREATE (m39:musica {Artista: 'Rihanna', Lancamento: 2011, caption: 'We Found Love'})
CREATE (m40:musica {Artista: 'Ed Sheeran', Lancamento: 2017, caption: 'Shape of You'})
CREATE (m41:musica {Artista: 'Ed Sheeran', Lancamento: 2014, caption: 'Thinking Out Loud'})
CREATE (m42:musica {Artista: 'Guns N Roses', Lancamento: 1987, caption: 'Sweet Child O Mine'})
CREATE (m43:musica {Artista: 'Guns N Roses', Lancamento: 1987, caption: 'Paradise City'})
CREATE (m44:musica {Artista: 'Amy Winehouse', Lancamento: 2006, caption: 'Rehab'})
CREATE (m45:musica {Artista: 'Amy Winehouse', Lancamento: 2006, caption: 'Back to Black'})
CREATE (m46:musica {Artista: 'Djavan', Lancamento: 1982, caption: 'Lilás'})
CREATE (m47:musica {Artista: 'Djavan', Lancamento: 1992, caption: 'Oceano'})
CREATE (m48:musica {Artista: 'The Beatles', Lancamento: 1968, caption: 'Hey Jude'})
CREATE (m49:musica {Artista: 'The Beatles', Lancamento: 1969, caption: 'Here Comes The Sun'})
CREATE (m50:musica {Artista: 'Elis Regina', Lancamento: 1974, caption: 'Águas de Março'})

// -----------------------------------------------------
// CRIACAO DOS RELACIONAMENTOS: Musicas -> Albuns
// -----------------------------------------------------
MATCH (m:musica {caption: 'Carry On'}) MATCH (a:album {caption: 'Angels Cry'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Wuthering Heights'}) MATCH (a:album {caption: 'Angels Cry'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Thriller'}) MATCH (a:album {caption: 'Thriller'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Billie Jean'}) MATCH (a:album {caption: 'Thriller'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Beat It'}) MATCH (a:album {caption: 'Thriller'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Aí Já Era'}) MATCH (a:album {caption: 'Aí Já Era'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Amor pra Recomeçar'}) MATCH (a:album {caption: 'Aí Já Era'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Get Lucky'}) MATCH (a:album {caption: 'Random Access Memories'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Instant Crush'}) MATCH (a:album {caption: 'Random Access Memories'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Construção'}) MATCH (a:album {caption: 'Construção'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Deus Lhe Pague'}) MATCH (a:album {caption: 'Construção'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Do I Wanna Know?'}) MATCH (a:album {caption: 'AM'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'R U Mine?'}) MATCH (a:album {caption: 'AM'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'So What'}) MATCH (a:album {caption: 'Kind of Blue'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Freddie Freeloader'}) MATCH (a:album {caption: 'Kind of Blue'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Envolver'}) MATCH (a:album {caption: 'Versions of Me'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Boys Don´t Cry'}) MATCH (a:album {caption: 'Versions of Me'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Enter Sandman'}) MATCH (a:album {caption: 'Metallica (The Black Album)'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'The Unforgiven'}) MATCH (a:album {caption: 'Metallica (The Black Album)'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Formation'}) MATCH (a:album {caption: 'Lemonade'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Sorry'}) MATCH (a:album {caption: 'Lemonade'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Magic'}) MATCH (a:album {caption: 'Ghost Stories'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'A Sky Full of Stars'}) MATCH (a:album {caption: 'Ghost Stories'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'You Dont Know Me'}) MATCH (a:album {caption: 'Transa'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Nine Out Of Ten'}) MATCH (a:album {caption: 'Transa'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'HUMBLE.'}) MATCH (a:album {caption: 'DAMN.'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'DNA.'}) MATCH (a:album {caption: 'DAMN.'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Infiel'}) MATCH (a:album {caption: 'Marilia Mendonça - Ao Vivo'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Eu Sei de Cor'}) MATCH (a:album {caption: 'Marilia Mendonça - Ao Vivo'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Smells Like Teen Spirit'}) MATCH (a:album {caption: 'Nevermind'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Come As You Are'}) MATCH (a:album {caption: 'Nevermind'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)

// (Adicione aqui os MATCH para as musicas restantes, associando ao album correspondente)
// Para simplificar, vamos associar as musicas extras a albuns genéricos ou albuns de exemplo

MATCH (m:musica {caption: 'Bohemian Rhapsody'}) MERGE (a:album {Artista: 'Queen', Lancamento: 1975, caption: 'A Night at the Opera'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Love of My Life'}) MATCH (a:album {caption: 'A Night at the Opera'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Eduardo e Mônica'}) MERGE (a:album {Artista: 'Legião Urbana', Lancamento: 1985, caption: 'Dois'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Tempo Perdido'}) MERGE (a:album {Artista: 'Legião Urbana', Lancamento: 1986, caption: 'Que País É Este'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Wish You Were Here'}) MERGE (a:album {Artista: 'Pink Floyd', Lancamento: 1975, caption: 'Wish You Were Here'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Money'}) MATCH (a:album {caption: 'Wish You Were Here'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Work'}) MERGE (a:album {Artista: 'Rihanna', Lancamento: 2016, caption: 'Anti'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'We Found Love'}) MERGE (a:album {Artista: 'Rihanna', Lancamento: 2011, caption: 'Talk That Talk'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Shape of You'}) MERGE (a:album {Artista: 'Ed Sheeran', Lancamento: 2017, caption: '÷ (Divide)'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Thinking Out Loud'}) MATCH (a:album {caption: '÷ (Divide)'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Sweet Child O Mine'}) MERGE (a:album {Artista: 'Guns N Roses', Lancamento: 1987, caption: 'Appetite for Destruction'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Paradise City'}) MATCH (a:album {caption: 'Appetite for Destruction'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Rehab'}) MERGE (a:album {Artista: 'Amy Winehouse', Lancamento: 2006, caption: 'Back to Black'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Back to Black'}) MATCH (a:album {caption: 'Back to Black'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Lilás'}) MERGE (a:album {Artista: 'Djavan', Lancamento: 1982, caption: 'Luz'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Oceano'}) MERGE (a:album {Artista: 'Djavan', Lancamento: 1992, caption: 'Coisa de Acender'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Hey Jude'}) MERGE (a:album {Artista: 'The Beatles', Lancamento: 1968, caption: 'The Beatles (White Album)'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Here Comes The Sun'}) MERGE (a:album {Artista: 'The Beatles', Lancamento: 1969, caption: 'Abbey Road'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)
MATCH (m:musica {caption: 'Águas de Março'}) MERGE (a:album {Artista: 'Elis Regina', Lancamento: 1974, caption: 'Elis & Tom'}) CREATE (m)-[:ESTA_CONTIDO_EM]->(a)

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

// -----------------------------------------------------
// CRIACAO DOS RELACIONAMENTOS: Usuarios -> Musicas (OUVIU)
// -----------------------------------------------------
// Gerando algumas relações aleatórias para simular o histórico.
// A propriedade 'ouviu' varia de 1 a 15 vezes.

// Usuário 1
MATCH (u:usuario {ID: 10129837465}), (m:musica {caption: 'Carry On'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m)
MATCH (u:usuario {ID: 10129837465}), (m:musica {caption: 'Enter Sandman'}) CREATE (u)-[:OUVIU {ouviu: 3}]->(m)
MATCH (u:usuario {ID: 10129837465}), (m:musica {caption: 'Bohemian Rhapsody'}) CREATE (u)-[:OUVIU {ouviu: 10}]->(m)

// Usuário 2
MATCH (u:usuario {ID: 10238561904}), (m:musica {caption: 'Billie Jean'}) CREATE (u)-[:OUVIU {ouviu: 8}]->(m)
MATCH (u:usuario {ID: 10238561904}), (m:musica {caption: 'Get Lucky'}) CREATE (u)-[:OUVIU {ouviu: 6}]->(m)
MATCH (u:usuario {ID: 10238561904}), (m:musica {caption: 'Shape of You'}) CREATE (u)-[:OUVIU {ouviu: 12}]->(m)

// Usuário 3
MATCH (u:usuario {ID: 10347581236}), (m:musica {caption: 'Construção'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m)
MATCH (u:usuario {ID: 10347581236}), (m:musica {caption: 'Águas de Março'}) CREATE (u)-[:OUVIU {ouviu: 7}]->(m)
MATCH (u:usuario {ID: 10347581236}), (m:musica {caption: 'Oceano'}) CREATE (u)-[:OUVIU {ouviu: 3}]->(m)

// Usuário 4
MATCH (u:usuario {ID: 10456982317}), (m:musica {caption: 'Do I Wanna Know?'}) CREATE (u)-[:OUVIU {ouviu: 15}]->(m)
MATCH (u:usuario {ID: 10456982317}), (m:musica {caption: 'Smells Like Teen Spirit'}) CREATE (u)-[:OUVIU {ouviu: 9}]->(m)
MATCH (u:usuario {ID: 10456982317}), (m:musica {caption: 'Sweet Child O Mine'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m)

// Usuário 5
MATCH (u:usuario {ID: 10567893452}), (m:musica {caption: 'Infiel'}) CREATE (u)-[:OUVIU {ouviu: 20}]->(m)
MATCH (u:usuario {ID: 10567893452}), (m:musica {caption: 'Aí Já Era'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m)
MATCH (u:usuario {ID: 10567893452}), (m:musica {caption: 'Envolver'}) CREATE (u)-[:OUVIU {ouviu: 3}]->(m)

// Usuário 6
MATCH (u:usuario {ID: 10678234569}), (m:musica {caption: 'Formation'}) CREATE (u)-[:OUVIU {ouviu: 6}]->(m)
MATCH (u:usuario {ID: 10678234569}), (m:musica {caption: 'HUMBLE.'}) CREATE (u)-[:OUVIU {ouviu: 8}]->(m)
MATCH (u:usuario {ID: 10678234569}), (m:musica {caption: 'Work'}) CREATE (u)-[:OUVIU {ouviu: 7}]->(m)

// Usuário 7
MATCH (u:usuario {ID: 10789123457}), (m:musica {caption: 'Magic'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m)
MATCH (u:usuario {ID: 10789123457}), (m:musica {caption: 'Thinking Out Loud'}) CREATE (u)-[:OUVIU {ouviu: 11}]->(m)
MATCH (u:usuario {ID: 10789123457}), (m:musica {caption: 'Hey Jude'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m)

// Usuário 8
MATCH (u:usuario {ID: 10890123876}), (m:musica {caption: 'So What'}) CREATE (u)-[:OUVIU {ouviu: 2}]->(m)
MATCH (u:usuario {ID: 10890123876}), (m:musica {caption: 'Rehab'}) CREATE (u)-[:OUVIU {ouviu: 9}]->(m)
MATCH (u:usuario {ID: 10890123876}), (m:musica {caption: 'Back to Black'}) CREATE (u)-[:OUVIU {ouviu: 7}]->(m)

// Usuário 9
MATCH (u:usuario {ID: 10901234785}), (m:musica {caption: 'Tempo Perdido'}) CREATE (u)-[:OUVIU {ouviu: 12}]->(m)
MATCH (u:usuario {ID: 10901234785}), (m:musica {caption: 'Eduardo e Mônica'}) CREATE (u)-[:OUVIU {ouviu: 8}]->(m)
MATCH (u:usuario {ID: 10901234785}), (m:musica {caption: 'Lilás'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m)

// Usuário 10
MATCH (u:usuario {ID: 11012345698}), (m:musica {caption: 'Wish You Were Here'}) CREATE (u)-[:OUVIU {ouviu: 10}]->(m)
MATCH (u:usuario {ID: 11012345698}), (m:musica {caption: 'Money'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m)
MATCH (u:usuario {ID: 11012345698}), (m:musica {caption: 'Paradise City'}) CREATE (u)-[:OUVIU {ouviu: 6}]->(m)

// Usuário 11
MATCH (u:usuario {ID: 11123456789}), (m:musica {caption: 'We Found Love'}) CREATE (u)-[:OUVIU {ouviu: 9}]->(m)
MATCH (u:usuario {ID: 11123456789}), (m:musica {caption: 'Sorry'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m)
MATCH (u:usuario {ID: 11123456789}), (m:musica {caption: 'A Sky Full of Stars'}) CREATE (u)-[:OUVIU {ouviu: 14}]->(m)

// Usuário 12
MATCH (u:usuario {ID: 11234567890}), (m:musica {caption: 'DNA.'}) CREATE (u)-[:OUVIU {ouviu: 7}]->(m)
MATCH (u:usuario {ID: 11234567890}), (m:musica {caption: 'The Unforgiven'}) CREATE (u)-[:OUVIU {ouviu: 3}]->(m)
MATCH (u:usuario {ID: 11234567890}), (m:musica {caption: 'Instant Crush'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m)

// Usuário 13
MATCH (u:usuario {ID: 11345678901}), (m:musica {caption: 'R U Mine?'}) CREATE (u)-[:OUVIU {ouviu: 11}]->(m)
MATCH (u:usuario {ID: 11345678901}), (m:musica {caption: 'Come As You Are'}) CREATE (u)-[:OUVIU {ouviu: 6}]->(m)
MATCH (u:usuario {ID: 11345678901}), (m:musica {caption: 'Wuthering Heights'}) CREATE (u)-[:OUVIU {ouviu: 2}]->(m)

// Usuário 14
MATCH (u:usuario {ID: 11456789012}), (m:musica {caption: 'Deus Lhe Pague'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m)
MATCH (u:usuario {ID: 11456789012}), (m:musica {caption: 'Nine Out Of Ten'}) CREATE (u)-[:OUVIU {ouviu: 3}]->(m)
MATCH (u:usuario {ID: 11456789012}), (m:musica {caption: 'You Dont Know Me'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m)

// Usuário 15
MATCH (u:usuario {ID: 11567890123}), (m:musica {caption: 'Beat It'}) CREATE (u)-[:OUVIU {ouviu: 8}]->(m)
MATCH (u:usuario {ID: 11567890123}), (m:musica {caption: 'Amor pra Recomeçar'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m)
MATCH (u:usuario {ID: 11567890123}), (m:musica {caption: 'Boys Don´t Cry'}) CREATE (u)-[:OUVIU {ouviu: 6}]->(m)

// Usuário 16
MATCH (u:usuario {ID: 11678901234}), (m:musica {caption: 'Freddie Freeloader'}) CREATE (u)-[:OUVIU {ouviu: 1}]->(m)
MATCH (u:usuario {ID: 11678901234}), (m:musica {caption: 'Love of My Life'}) CREATE (u)-[:OUVIU {ouviu: 7}]->(m)
MATCH (u:usuario {ID: 11678901234}), (m:musica {caption: 'Here Comes The Sun'}) CREATE (u)-[:OUVIU {ouviu: 9}]->(m)

// Usuário 17
MATCH (u:usuario {ID: 11789012345}), (m:musica {caption: 'Eu Sei de Cor'}) CREATE (u)-[:OUVIU {ouviu: 13}]->(m)
MATCH (u:usuario {ID: 11789012345}), (m:musica {caption: 'Envolver'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m)
MATCH (u:usuario {ID: 11789012345}), (m:musica {caption: 'Work'}) CREATE (u)-[:OUVIU {ouviu: 6}]->(m)

// Usuário 18
MATCH (u:usuario {ID: 11890123456}), (m:musica {caption: 'Thriller'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m)
MATCH (u:usuario {ID: 11890123456}), (m:musica {caption: 'Get Lucky'}) CREATE (u)-[:OUVIU {ouviu: 8}]->(m)
MATCH (u:usuario {ID: 11890123456}), (m:musica {caption: 'HUMBLE.'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m)

// Usuário 19
MATCH (u:usuario {ID: 11901234567}), (m:musica {caption: 'Smells Like Teen Spirit'}) CREATE (u)-[:OUVIU {ouviu: 10}]->(m)
MATCH (u:usuario {ID: 11901234567}), (m:musica {caption: 'Shape of You'}) CREATE (u)-[:OUVIU {ouviu: 7}]->(m)
MATCH (u:usuario {ID: 11901234567}), (m:musica {caption: 'Bohemian Rhapsody'}) CREATE (u)-[:OUVIU {ouviu: 12}]->(m)

// Usuário 20
MATCH (u:usuario {ID: 12012345678}), (m:musica {caption: 'Carry On'}) CREATE (u)-[:OUVIU {ouviu: 3}]->(m)
MATCH (u:usuario {ID: 12012345678}), (m:musica {caption: 'Águas de Março'}) CREATE (u)-[:OUVIU {ouviu: 5}]->(m)
MATCH (u:usuario {ID: 12012345678}), (m:musica {caption: 'Formation'}) CREATE (u)-[:OUVIU {ouviu: 4}]->(m)

// =====================================================
// (OPCIONAL) CRIACAO DE CONSTRAINTS E INDICES PARA OTIMIZACAO
// Execute estas linhas APOS a criacao dos dados ou antes, para garantir a integridade.
// =====================================================

// Criar constraint de unicidade para o ID do usuario
CREATE CONSTRAINT IF NOT EXISTS FOR (u:usuario) REQUIRE u.ID IS UNIQUE;

// Criar constraint de unicidade para o email do usuario (opcional, mas bom)
CREATE CONSTRAINT IF NOT EXISTS FOR (u:usuario) REQUIRE u.email IS UNIQUE;

// Criar indices para buscas rapidas
CREATE INDEX IF NOT EXISTS FOR (m:musica) ON (m.Artista);
CREATE INDEX IF NOT EXISTS FOR (a:album) ON (a.caption);