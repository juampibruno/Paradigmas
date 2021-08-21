% El is solamente esta permitido usarlo en el caso de que sean cuentas no puedo poner Ej

% Danio is DanioAtaque


% El = esta prohibido usarlo bajo cualquier concepto.

% si quiero que sean iguales le tengo que poner el mismo nombre de variable. Pasa en el caso de ataque especial 

% forall siempre tiene 2 predicados antecendente y conscuente
% forall(antecedente,consecuente).

% Las variables al forall las que quiero que analize todas deben llegar desligadas, es decir no tienen que estar unificadas.
% Se hace con la variable anonima eso.

% En el momento del forall una variable tiene que estar ligada y otra tiene que estar libre.

% En el findall.El tipo necesita llegar ligado ya que sino yo pongo 

% (En la consola)
% cuantosPokemonHayDeUnTipo(Tipo,Cuantos).

% me contesta Cuantos= 8. Ya que serian todos los pokemon ya que no tiene ninguna restriccion en el tipo entonces me los mete a todos adentro de la lista.


Si quiero saber la existencia como por ejemplo tieneAlMenosDosPokemones cuando se trata de 1 o 2 elementos se puede hacer con 

tieneAlMenosDosPokemones(Tipo):-
    pokemon(Pokemon1,Tipo),
    pokemon(Pokemon2,Tipo),
    Pokemon1 \= Pokemon2.

En este caso estaria bien, pero si quiero saber si tiene 3 o mas elementos es mejor utilizar findall porque sino se vuelve muy largo y repetitivo.