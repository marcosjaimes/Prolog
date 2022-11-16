#base de conocimiento

% hechos n.-1
% roberto ve peliculas de suspenso
ve_peliculas(roberto,suspenso).

% jaanai ve peliculas de suspenso
ve_peliculas(jaanai, suspenso).

% abimael ve peliculas de suspenso
ve_peliculas(abimael,suspenso).

% leonardo ve peliculas de romance
ve_peliculas(leonardo,romance).

% miguel ve peliculas de terror
ve_peliculas(miguel,terror).


% hechos n.-2
% jaanai consume palomitas.
consume(jaanai,palomitas).

% roberto consume palomitas.
consume(roberto,palomitas).

% abimael consume maruchan.
consume(abimael,maruchan).

% leonardo consume maruchan.
consume(leonardo,maruchan).

% miguel consume ensalada.
consume(miguel,ensalada).


% hechos n.- 3
% roberto si tiene netflix
% tiene_netflix(roberto,si).

% jaanai si tiene netflix
tiene_netflix(jaanai,si).

% abimael si tiene netflix
tiene_netflix(abimael,si).

% leonardo no tiene netflix
tiene_netflix(leonardo,no).

% miguel si tiene netflix
tiene_netflix(miguel,si).


% hechos n.- 4
% roberto no tiene tiempo libre
tiempo_libre(roberto,no).

% jaanai no tiene tiempo libre
tiempo_libre(jaanai,no).

% abimael no tiene tiempo libre
tiempo_libre(abimael,no).

% leonardo no tiene tiempo libre
tiempo_libre(leonardo,no).

% miguel no tiene tiempo libre
tiempo_libre(miguel,no).


% hechos n.- 5
% abelino escucha musica reggae
escucha_musica(abelino,reggae).

%  jose escucha musica rock
escucha_musica(jose,rock).

%  izmucaneth escucha musica reggae
escucha_musica(izmucaneth,reggae).

% rolando escucha musica rock
escucha_musica(rolando,rock).

%  maldonado escucha musica regional
escucha_musica(maldonado,regional).


% hechos n.- 6
% abelino no tiene spotify
tiene_spotify(abelino,no).

% jose tiene spotify
tiene_spotify(jose,si).

% izmucaneth tiene spotify
tiene_spotify(izmucaneth,si).

% rolando no tiene spotify
tiene_spotify(rolando,no).

% maldonado tiene spotify
tiene_spotify(maldonado,si).


% hechos n.- 7
% abelino no usa audifonos
usa_audifonos(abelino,no).

% jose no usa audifonos
usa_audifonos(jose,no).

% izmucaneth usa audifonos
usa_audifonos(izmucaneth,si).

% rolando usa audifonos
usa_audifonos(rolando,si).

% maldonado no usa audifonos
usa_audifonos(maldonado,no).

% roberto no usa audifonos
usa_audifonos(roberto,no).

% jaanai no usa audifonos
usa_audifonos(jaanai,si).

% abimael no usa audifonos
usa_audifonos(abimael,no).

% leonardo no usa audifonos
usa_audifonos(leonardo,si).

% miguel no usa audifonos
usa_audifonos(miguel,no).


% 1.- Quienes prefieren ver peliculas
mira_pelicula(X):- ve_peliculas(X,_).

% 2.- Quienes prefieren escuchar musica
listen_music(X):- escucha_musica(X,_).

% 3.- Alguien que ve peliculas de suspenso, disfruta velas con palomitas,
% tiene una cuenta de netflix y tiempo libre, tiene una tarde perfecta.
tarde_perfecta(X) :- ve_peliculas(X,suspenso), consume(X,palomitas), tiene_netflix(X,si), tiempo_libre(X,si).

% 4.- Alguien que ve peliculas consumiendo una ensalada, tiene ua vida saludable.
vida_saludable(X):- consume(X,ensalada).

% 5.- Alguien que escucha musica regional, tiene audifonos y la aplicación de spotify
% disfruta el camino a casa.
camino_casa(X):- escucha_musica(X,regional),usa_audifonos(X,si),tiene_spotify(X,si).

% 6.- Alguien es feliz si ve peliculas consumiendo maruchan, tiempo libre y netflix.
es_feliz(X) :- ve_peliculas(X,_),consume(X,maruchan),tiempo_libre(X,si),tiene_netflix(X,si).

% 7.- Unicamente pueden ser amigos quienes tienen los mismos gustos (peliculas, botanas).
amigos(X):- ve_peliculas(X,suspenso),consume(X,palomitas); ve_peliculas(X,suspenso),consume(X,maruchan).


