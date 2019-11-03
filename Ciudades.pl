ciudades:- identifica.

identifica:- retractall(known(_, _, _)), ciudad(X), write('La ciudad capital es '), write(X), nl.
identifica:- write('No puedo identificar la ciudad capital'), nl.

datosIniciales(C, U, I):- continente(CE, [america, africa, asia, europa, oceania]), CE == C, C == america, ubicacion(UE, [norteamerica, centroamerica, antillas, sudamerica]), UE == U,
  idioma(IE, [espaniol, portugues, ingles, frances, ingles_frances, ingles_espaniol, danes, neerlandes, otro]), IE == I.

datosIniciales(C, U, I):- continente(CE, [america, africa, asia, europa, oceania]), CE == C, C == europa, ubicacion(UE, [islas_atlanticas, peninsula_escandinava, paises_del_baltico, paises_del_este, europa_central, paises_del_adriatico, paises_ibericos_y_mediterraneos, paises_pequenios_enclavados_en_otros, paises_asiticos_con_enclaves_en_europa]), UE == U,
  idioma(IE, [aleman, ingles, bulgaro, danes, espaniol, estonia, filandes, frances, griego, neerlandes, hungaro, irlandes, italiano, leton, lituano, maltes, polaco, portugues, rumano, eslovaco, esloveno, sueco, checo, aleman_frances_italiano_romanche, otro]), IE == I.

datosIniciales(C, U, I, P):- continente(CE, [america, africa, asia, europa, oceania]), CE == C, C == america, ubicacion(UE, [norteamerica, centroamerica, antillas, sudamerica]), UE == U,
  idioma(IE, [espaniol, portugues, ingles, frances, ingles_frances, ingles_espaniol, danes, neerlandes, otro]), IE == I,
  pais(U, I, PE), PE == P.

datosIniciales(C, U, I, P):- continente(CE, [america, africa, asia, europa, oceania]), CE == C, C == europa, ubicacion(UE, [norteamerica, centroamerica, antillas, sudamerica]), UE == U,
  idioma(IE, [espaniol, portugues, ingles, frances, ingles_frances, ingles_espaniol, danes, neerlandes, otro]), IE == I,
  pais(U, I, PE), PE == P.


%Lugares de Estados Unidos
lugar(estados_unidos, R, D, E):- pais(estados_unidos), region(RE, [noreste, medio_oeste, sur, oeste]), RE == R, divisionRegion(estados_unidos, R, DE), DE == D, estadoDivision(estados_unidos, R, D, EE), EE == E.

%Lugares de Suiza
lugar(suiza, R, C):- pais(suiza), region(RE, [suiza_alemana, suiza_francesa, suiza_italiana, suiza_romanche, region_bilingue]), RE == R, cantonRegion(suiza, R, CE), CE == C.

%Lugares de Mexico
lugar(mexico, R, E):- pais(mexico), region(RE, [noroeste, noreste, occidente, oriente, centronorte, centrosur, suroeste, sureste]), RE == R, estadoRegion(mexico, R, EE), EE == E.

%Lugares de Guatemala
lugar(guatemala, R, E):- pais(guatemala), region(RE, [metropolitana, norte, nororiental, suroriental, central, suroccidental, noroccidental, peten]), RE == R, estadoRegion(guatemala, R, EE), EE == E.

%Lugares de Panama
lugar(panama, R, E):-pais(panama), region(RE, [metropolitana, occidental, oriental, central]), RE == R, estadoRegion(panama, R, EE), EE == E.

%Lugares de El Salvador
lugar(salvador, Z, E):-pais(salvador), zona(ZE, [occidente, oriental, central, paracentral]), ZE == Z, zonaEstado(salvador, Z, EE), EE == E.

%Lugares de Nicaragua
lugar(nicaragua, R, E):-pais(nicaragua), region(RE, [pacifico, central]), RE == R, estadoRegion(nicaragua, R, EE), EE == E.

%Lugares de CanadÃ¡
lugar(canada, R, PT):- pais(canada), region(RE, [occidente, centro, atlantico, norte]), RE == R, provinciaTerriorioRegion(canada, R, PTE), PTE == PT.

%Lugares de Brasil
lugar(brasil, R, E):- pais(brasil), region(RE, [norte, nordeste, centro_oeste, sudeste, sur]), RE == R, estadoRegion(brasil, R, EE), EE == E.

%Lugares de Chile
lugar(chile, R, E):-pais(chile), region(RE,[arica_y_parinacota, tarapaca, antofagasta, atacama, coquimbo, valparaiso, libertador_general_bernardo, o_higgins, maule, nuble, biobio, araucania, los_rios, los_lagos, aysen_del_general_carlos, magallanes, metropolitana_del_santiago]), RE == R, estadoRegion(chile, R,EE),EE == E.

%Lugares de Venezuela
lugar(venezuela, R, E):- pais(venezuela), region(RE, [los_andes, capital, central,guayana, insular, los_llanos, nororiental, centroccidental, zuliana]), RE == R, estadoRegion(venezuela, R, EE), EE == E.

%Lugares de Guyana Francesa
lugar(guyana_francesa,D,E):-pais(guyana_francesa),distrito(DE,[cayena,saint_laurent_de_maroni]),DE==D,estadoRegion(guyana_francesa,D,EE),EE==E.

%Lugares de Jamaica
lugar(jamaica, C, E):-pais(jamaica), condado(CE, [cornwall, middlesex, surrey]), CE == C, estadoCondado(jamaica, C, EE), EE == E.

%Lugares de San Cristobal y Nieves
lugar(san_cristobal_y_nieves, I, E):-pais(san_cristobal_y_nieves), isla(IE, [san_cristobal, nieves]), IE == I, estadoIsla(san_cristobal_y_nieves, I, EE), EE = E.

%Lugares de Republica Dominicana
lugar(republica_dominicana, P, E):-pais(republica_dominicana), region(PE, [sur, cibao, este]), PE == P, estadoRegion(republica_dominicana, P, EE), EE == E.

%Lugares de Puerto Rico
lugar(puerto_rico, D, E):-pais(puerto_rico), distrito(DE, [san_juan, bayamon, arecibo, aguadilla, ponce, guayama, humacao, carolina]), DE == D, distritoRegion(puerto_rico, D, EE), EE == E.


%Lugares de Groenlandia
lugar(groenlandia, M):-pais(groenlandia), municipio(ME, [sermersooq, qaasuitsap, qeqqata, kujalleq]), ME == M.

%Lugares de Bermudas
lugar(bermudas, P):-pais(bermudas), parroquias(PE, [parroquia_de_sandys, parroquia_de_southampton, parroquia_de_warwikc, parroquia_de_paget, parroquia_de_pembroke, parroquia_de_devonshire, parroquia_de_smith, parroquia_de_hamilton, parroquia_de_saint_gorge]), PE == P.

%Lugares de San Pedro y Miquelon
lugar(san_pedro_y_miquelon, M):-pais(san_pedro_y_miquelon), municipio(ME, [comuna_de_miquelon_langlade, comuna_de_san_pedro]), ME == M.

%Lugares de Belice
lugar(belice, D):-pais(belice), distrito(DE, [belice, cayo, corozal, orange_walk, stann_creek, toledo]), DE == D.

%Lugares de Costa Rica
lugar(costa_rica, P):-pais(costa_rica), provincia(PE, [san_jose, alajuela, cartago, heredia, guanacaste, puntarenas, limon]), PE == P.

%Lugares de Honduras
lugar(honduras, D):-pais(honduras), departamento(DE, [atlantida, colon, comayagua, copan, cortes, choluteca, el_paraiso, francisco_morazan, gracias_a_dios, intibuca, islas_de_la_bahia, la_paz, lempira, ocotepeque, olancho, santa_barbara, valle, lloro]), DE == D.

%Lugares de Argentina
lugar(argentina,P):-pais(argentina),provincia(PE, [buenos_aires, catamarca, chaco, chubut, cordoba, corrientes, entre_rios, formosa, jujuy, la_pampa, la_rioja, mendoza, misiones, neuquen, rio_negro,salta, san_juan, san_luis, santa_cruz, santa_fe, santiago_del_estero, tierra_del_fuego, tucuman]),PE == P.

%Lugares de Bolivia
lugar(bolivia,D):-pais(bolivia), provincia(DE, [beni, chuquisaca, cochabamba, la_paz, oruro, pando, potosi, santa_cruz, tarija]), DE == D.

% Lugares de Colombia
lugar(colombia, D):-pais(colombia), departamento(DE, [amazonas,antioquia, arauca,atlantico, bogota, bolivar, boyaca, caldas, caqueta, casanare, cauca, cesar, choco, cordoba, cundinamarca,guainia, guaviare,huila, la_guajira, magdalena, meta,narino, norte_de_santander, putumayo, quindio, risaralda,san_andres_y_providencia, santander, sucre,tolima, valle_del_cauca, vaupes, vichada]), DE == D.

%Lugares de Ecuador
lugar(ecuador,D):-pais(ecuador), provincia(DE, [azuay, bolivar, canar, carchi, chimborazo, cotopaxi, el_oro, esmeraldas, galapagos, guayas,imbabura, loja, los_rios, manabi, morona_santiago, napo, orellana, pastaza, pichincha, santa_elena, santo_domingo_de_los_tsachilas, sucumbios, tungarahua, zamora_chinchipe]), DE == D.

%Lugares de Guyana
lugar(guyana, D):-pais(guyana), departamento(DE,[barima_waini,pomeroon_supenaam, islas_esequibo_demerara_occidental, demerara_mahaica, mahaica_berbice, berbice_oriental_corentyne,cuyuni_maxaruni, potaro_sipuruni, alto_tacutu_alto,esequibo, alto_demerara_berbice]),DE == D.

% Lugares de Paraguay
lugar(paraguay, D):-pais(paraguay), departamento(DE, [paraguay, cpncepcion, san_pedro, cordillera, guaira, caaguazu, caazapa, itapua, misiones, paraguari, alto_parana, central, neembucu, amambay, canundeyu, presidente_hayes, boqueron, alto_paraguay]), DE == D.

% Lugares de Peru
lugar(peru, D):-pais(peru), departamento(DE, [amazonas, ancash, apurimac, arequipa, ayacucho, cajamarca, callao, cusco, huancavelica, huanuco, ica,junin, la_libertad, lambayeque, lima_metropolitana, lima, loreto, madre_de_dios, moquegua, pasco, piura, puno, san_martin, tacna, tumbes,ucayali]), DE == D.

%Lugares de Surinam
lugar(surinam, D):-pais(surinam), distrito(DE, [brokopondo, commewjine, coronie, marowjine, nickerie,para, paramaribo, saramacca, sipaliwini, wanica]), DE == D.

%Lugares de Uruguay
lugar(uruguay, D):-pais(uruguay), departamento(DE, [artigas, canelones, carro_largo, colonia, durazno, flores, florida, lavalleja, maldonado, maontevideo, paysandu, rio_negro, rivera, rocha, salto, san_jose, soriano, tacuarembo, treinta_y_tres]), DE == D.

%Lugares de islas Georgias del sur
lugar(islas_georgia_del_sur,I):-pais(islas_georgia_del_sur),isla(IE,[annenkov, cooper, grass, pajaro, trinity, pickersgill, bienvenido, willis, negras, aurora, clerke]),IE==I.

%Lugares de islas Sandwich del sur
lugar(islas_sandwich_del_sur,I):-pais(islas_sandwich_del_sur),isla(IE,[traverse, candelarias, centrales, tule_del_sur]),IE==I.

%Lugares de Islas Malvinas-Gran Bretaña
lugar(islas_malvinas_gran_bretania,I):-pais(islas_malvinas_gran_bretania),isla(IE,[rasa_del_oeste, beauchene, soledad]),IE==I.

%Lugares de Antigua y Barbuda
lugar(antigua_y_barbuda, P):- pais(antigua_y_barbuda), parroquias(PE, [saint_george, saint_john, saint_mary, saint_paul, saint_peter, saint_philip]), PE == P.

%Lugares de Trinidad y tobago
lugar(trinidad_y_tobago, R):-pais(trinidad_y_tobago), region(RE, [couva_tabaquite_talparo, diego_martin, penal_debe, princes_town, rio_claro_mayaro, san_juan_lavantille, sangre_grande, siparia, tunapuna_piarco, autonoma_de_tobago]), RE == R.

%Lugares de Las Bahamas
lugar(bahamas, D):-pais(bahamas), distrito(DE, [acklins, islas_berry, bimini, black_point, isla_cat, central_abaco, central_andros, central_ekeuthera, ciudad_de_freeport, islas_de_crooked, east_grand_bahama, exuma, cayo_grande, islas_harbour, hope_town, inagua, isla_larga, cayo_mangrove, mayaguana, isla_de_moore, abaco_norte, andros_norte, eleuthera_norte, isla_ragged, cayo_rum, san_salvador, abaco_sur, andros_sur, ekeuthera_sur, spanish_wells_eleuthera, west_grand_bahama, nueva_providencia]), DE == D.

%Lugares de Barbados
lugar(barbados, P):-pais(barbados), parroquias(PE, [christ_church, saint_andrew, saint_george, saint_james, saint_john, saint_joseph, saint_lucy, saint_michael, saint_peter, saint_philip, saint_thomas]), PE == P.

%Lugares de Cuba
lugar(cuba, P):-pais(cuba), provincia(PE, [pinar_del_rio, artemisa, la_habana, mayabeque, matanzas, cienfuegos, villa_clara, sancti_spiritus, ciego_de_avila, camaguey, las_tunas, granma, holguin, santiago_de_cuba, guantanamo, municipio_especial_isla_de_la_juventud]), PE == P.

%Lugares de Dominica
lugar(dominica, P):-pais(dominica), parroquias(PE, [saint_andrew, saint_david, saint_george, saint_john, saint_joseph, saint_luke, saint_mark, saint_patrick, saint_paul, saint_peter]), PE == P.

%Lugares de San Vicente y las Granadinas
lugar(san_vicente_y_las_granadinas, P):-pais(san_vicente_y_las_granadinas), parroquias(PE, [carlota, granadinas, san_andres, san_david, san_jorge, san_patricio]), PE == P.

%Lugares de Haiti
lugar(haiti, D):-pais(haiti), departamento(DE, [norte, artibonito, centro, grand_anse, nippes, noreste, noroeste, oeste, sudeste, sur]), DE == D.

%Lugares de Santa Lucia
lugar(santa_lucia, D):-pais(santa_lucia), distrito(DE, [anse_la_raye, castries, choiseul, dauphin, dennery, gros_islet, laborie, micoud, praslin, soufriere, vieux_fort]), DE == D.

%Estados de los distritos de Puerto Rico
distritoRegion(puerto_rico, san_juan, E):-
  estado(E, [san_juan, guaynabo, aguas_buenas]),
  pertenece(E, [san_juan, guaynabo, aguas_buenas]).
distritoRegion(puerto_rico, bayamon, E):-
  estado(E, [bayamon, catano, guaynabo, toa_baja, toa_alta]),
  pertenece(E, [bayamon, catano, guaynabo, toa_baja, toa_alta]).
distritoRegion(puerto_rico,arecibo , E):-
  estado(E, [arecibo, barceloneta, camuy, ciales, dorado, florida, hatillo, manati, morovis, quebradillas, vega_alta, vega_baja]),
  pertenece(E, [arecibo, barceloneta, camuy, ciales, dorado, florida, hatillo, manati, morovis, quebradillas, vega_alta, vega_baja]).
distritoRegion(puerto_rico, aguadilla, E):-
  estado(E, [aguada, aguadilla, anasco, cabo_rojo, hormigueros, isabela, las_marias, mayaguez, moca, rincon, san_german, san_sebastian]),
  pertenece(E, [aguada, aguadilla, anasco, cabo_rojo, hormigueros, isabela, las_marias, mayaguez, moca, rincon, san_german, san_sebastian]).
distritoRegion(puerto_rico, ponce, E):-
  estado(E, [adjuntas, guanica, guanayilla, jayuya, lajas, lares, maricao, panuelas, ponce, sabana_grande, utuado, yauco, juana_diaz]),
  pertenece(E, [adjuntas, guanica, guanayilla, jayuya, lajas, lares, maricao, panuelas, ponce, sabana_grande, utuado, yauco, juana_diaz]).
distritoRegion(puerto_rico, guayama, E):-
  estado(E, [arroyo, aibonito, barranquitas, cayey, cidra, coamo, comerio, corozal, guayama, juana_diaz, naranjito, orocovis, salinas, santa_isabel, villalba]),
  pertenece(E, [arroyo, aibonito, barranquitas, cayey, cidra, coamo, comerio, corozal, guayama, juana_diaz, naranjito, orocovis, salinas, santa_isabel, villalba]).
distritoRegion(puerto_rico, humacao, E):-
  estado(E, [caguas, gurabo, humacao, juncos, las_piedras, maunabo, naguabo, patillas, san_lorenzo, yabucoa]),
  pertenece(E, [caguas, gurabo, humacao, juncos, las_piedras, maunabo, naguabo, patillas, san_lorenzo, yabucoa]).
distritoRegion(puerto_rico, carolina, E):-
  estado(E, [canovanas, carolina, ceiba, culebra, fajardo, loiza, luquillo, rio_grande, trujillo_alto, vieques]),
  pertenece(E, [canovanas, carolina, ceiba, culebra, fajardo, loiza, luquillo, rio_grande, trujillo_alto, vieques]).

%Estados de las zonas de El Salvador
zonaEstado(salvador, occidente, E):-
  estado(E, [ahuachapan, santa_ana, sonsonate]),
  pertenece(E, [ahuachapan, santa_ana, sonsonate]).
zonaEstado(salvador, oriental, E):-
  estado(E, [usulutan, san_miguel, morazan, la_union]),
  pertenece(E, [usulutan, san_miguel, morazan, la_union]).
zonaEstado(salvador, central, E):-
  estado(E, [la_libertad, chalatenango, cuscatlan, san_salvador]),
  pertenece(E, [la_libertad, chalatenango, cuscatlan, san_salvador]).
zonaEstado(salvador, paracentral, E):-
  estado(E, [la_paz, cabanas, san_vicente]),
  pertenece(E, [la_paz, cabanas, san_vicente]).

%Estados de los condados de Jamaica
estadoCondado(jamaica, cornwall, E):-
  estado(E, [hanover, saint_elizabeth, saint_james, trelaway, westmoreland]),
  pertenece(E, [hanover, saint_elizabeth, saint_james, trelaway, westmoreland]).
estadoCondado(jamaica, middlesex, E):-
  estado(E, [clarendon, manchester, saint_ann, saint_catherine, saint_mary]),
  pertenece(E, [clarendon, manchester, saint_ann, saint_catherine, saint_mary]).
estadoCondado(jamaica, surrey, E):-
  estado(E, [kingston, portland, saint_andrew, saint_thomas]),
  pertenece(E, [kingston, portland, saint_andrew, saint_thomas]).

%estados de San Cristobal y Nieves
estadoIsla(san_cristobal_y_nieves, san_cristobal, E):-
  estado(E, [christ_church_nichola_town, saint_anne_sandy_point, saint_george_basseterre, saint_john_capisterre, saint_mary_cayon, saint_paul_capisterre, saint_peter_basseterre, saint_thomas_middle_island, trinity_palmetto_point]),
  pertenece(E, [christ_church_nichola_town, saint_anne_sandy_point, saint_george_basseterre, saint_john_capisterre, saint_mary_cayon, saint_paul_capisterre, saint_peter_basseterre, saint_thomas_middle_island, trinity_palmetto_point]).
estadoIsla(san_cristobal_y_nieves, nieves, E):-
  estado(E, [saint_george_gingerland, saint_james_windward, saint_john_figtree, saint_paul_charlestown, saint_thomas_lowland]),
  pertenece(E, [saint_george_gingerland, saint_james_windward, saint_john_figtree, saint_paul_charlestown, saint_thomas_lowland]).

%Estados de Republica Dominicana
estadoRegion(republica_dominicana, sur, E):-
  estado(E, [azua, bahoruco, barahona, elias_pinia, independencia, pedernales, peravia, san_cristobal, san_jose_de_ocoa, san_juan]),
  pertenece(E, [azua, bahoruco, barahona, elias_pinia, independencia, pedernales, peravia, san_cristobal, san_jose_de_ocoa, san_juan]).
estadoRegion(republica_dominicana, cibao, E):-
  estado(E, [dajabon, duarte, espaillat, hermanas_maribal, la_vega, maria_trinidad_sanchez, monsenior_nouel, monte_cristi, puerto_plata, samana, sanchez_ramirez, santiago, santiago_rodriguez, valverde]),
  pertenece(E, [dajabon, duarte, espaillat, hermanas_maribal, la_vega, maria_trinidad_sanchez, monsenior_nouel, monte_cristi, puerto_plata, samana, sanchez_ramirez, santiago, santiago_rodriguez, valverde]).
estadoRegion(republica_dominicana, este, E):-
  estado(E, [distrito_nacional, el_seibo, hato_mayor, la_altagracia, la_romana, monte_plata, san_pedro_de_macoris, santo_domingo]),
  pertenece(E, [distrito_nacional, el_seibo, hato_mayor, la_altagracia, la_romana, monte_plata, san_pedro_de_macoris, santo_domingo]).


%Estados de las regiones de Guatemala
estadoRegion(guatemala, metropolitana, E):-
  estado(E, [guatemala]),
  pertenece(E, [guatemala]).
estadoRegion(guatemala, norte, E):-
  estado(E, [alta_verapaz, baja_verapaz]),
  pertenece(E, [alta_verapaz, baja_verapaz]).
estadoRegion(guatemala, nororiental, E):-
  estado(E, [chiquimula, el_progreso, izabal, zacapa]),
  pertenece(E, [chiquimula, el_progreso, izabal, zacapa]).
estadoRegion(guatemala, suroriental, E):-
  estado(E, [jutiapa, jalapa, santa_rosa]),
  pertenece(E, [jutiapa, jalapa, santa_rosa]).
estadoRegion(guatemala, central, E):-
  estado(E, [chimaltenango, sacatepequez, escuintla]),
  pertenece(E, [chimaltenango, sacatepequez, escuintla]).
estadoRegion(guatemala, suroccidental, E):-
  estado(E, [quetzaltenango, retalhuleu, san_marcos, suchitepequez, solola, totonicapan]),
  pertenece(E, [quetzaltenango, retalhuleu, san_marcos, suchitepequez, solola, totonicapan]).
estadoRegion(guatemala, noroccidental, E):-
  estado(E, [huehuetenango, quiche]),
  pertenece(E, [huehuetenango, quiche]).
estadoRegion(guatemala, peten, E):-
  estado(E, [peten]),
  pertenece(E, [peten]).

%Estados de las regiones de Panama
estadoRegion(panama, metropolitana, E):-
  estado(E, [panama, colon]),
  pertenece(E, [panama, colon]).
estadoRegion(panama, occidental, E):-
  estado(E, [bocas_del_toro, chiriqui, ngabe_bugle]),
  pertenece(E, [bocas_del_toro, chiriqui, ngabe_bugle]).
estadoRegion(panama, oriental, E):-
  estado(E, [darien, kuna_de_wargandi, kuna_de_madugandi, embera_wounaan, guna_yala]),
  pertenece(E, [darien, kuna_de_wargandi, kuna_de_madugandi, embera_wounaan, guna_yala]).
estadoRegion(panama, central, E):-
  estado(E, [los_santos, cocle, veraguas, herrera]),
  pertenece(E, [los_santos, cocle, veraguas, herrera]).

%Estados de las regiones de Nicaragua
estadoRegion(nicaragua, pacifico, E):-
  estado(E, [carazo, chinandega, granada, leon, managua, masaya, rivas]),
  pertenece(E, [carazo, chinandega, granada, leon, managua, masaya, rivas]).
estadoRegion(nicaragua, central, E):-
  estado(E, [boaco, chontales, esteli, jinotega, rio_san_juan, madriz, matagalpa, nueva_segovia]),
  pertenece(E, [boaco, chontales, esteli, jinotega, rio_san_juan, madriz, matagalpa, nueva_segovia]).

%Estados de las regiones de Brasil
estadoRegion(brasil, norte, E):-
  estado(E, [acre, amapa, amazonas, para, rondonia, roraima, tocantins]),
  pertenece(E,[acre, amapa, amazonas, para, rondonia, roraima, tocantins]).
estadoRegion(brasil, nordeste, E):-
  estado(E, [alagoas, bahia, ceara, maranhao, paraiba, pernambuco, piaui, rio_grande_del_norte, sergipe]),
  pertenece(E,[alagoas, bahia, ceara, maranhao, paraiba, pernambuco, piaui, rio_grande_del_norte, sergipe]).
estadoRegion(brasil, centro_oeste, E):-
  estado(E,[distrito_federal, goias, mato_grosso, mato_grosso_del_sur]),
  pertenece(E,[distrito_federal, goias, mato_grosso, mato_grosso_del_sur]).
estadoRegion(brasil, sudeste, E):-
  estado(E,[espiritu_santo, minas_gerais, rio_de_janeiro, sao_paulo]),
  pertenece(E,[espiritu_santo, minas_gerais, rio_de_janeiro, sao_paulo]).
estadoRegion(brasil, sur, E):-
  estado(E, [parana, rio_grande_del_sur, santa_catarina]),
  pertenece(E,[parana, rio_grande_del_sur, santa_catarina]).

%Estados de las regiones de Chile
estadoRegion(chile, arica_y_parinacota, E):-
  estado(E, [arica, parinacota]),
  pertenece(E,[arica, parinacota]).
estadoRegion(chile, tarapaca, E):-
  estado(E, [iquique, tamarugal]),
  pertenece(E,[iquique, tamarugal]).
estadoRegion(chile, antofagasta, E):-
  estado(E, [antofagasta, el_loa, tocopilla]),
  pertenece(E,[antofagasta, el_loa, tocopilla]).
estadoRegion(chile, atacama, E):-
  estado(E, [chanaral, copiapo, huasco]),
  pertenece(E,[chanaral, copiapo, huasco]).
estadoRegion(chile, coquimbo, E):-
  estado(E, [elqui, choapa, limari]),
  pertenece(E,[elqui, choapa, limari]).
estadoRegion(chile, valparaiso, E):-
  estado(E,[isla_de_pascua, los_andes,marga, petorca, quillota,sanantonio, san_felipe_de_aconcagua, valparaiso]),
  pertenece(E,[isla_de_pascua, los_andes,marga, petorca, quillota,sanantonio, san_felipe_de_aconcagua, valparaiso]).
estadoRegion(chile, libertador_general_bernardo, E):-
  estado(E,[cachapoal]),
  pertenece(E,[cachapoal]).
estadoRegion(chile, o_higgins, E):-
  estado(E,[cardenal_caro,colchagua]),
  pertenece(E,[cardenal_caro,colchagua]).
estadoRegion(chile, maule, E):-
  estado(E,[cauquenes,curico, linares, talca]),
  pertenece(E,[cauquenes,curico, linares, talca]).
estadoRegion(chile, nuble, E):-
  estado(E,[itata,diguillin, punilla]),
  pertenece(E,[itata,diguillin, punilla]).
estadoRegion(chile, biobio, E):-
  estado(E,[auraco,biobio, concepcion, nuble]),
  pertenece(E,[auraco,biobio, concepcion, nuble]).
estadoRegion(chile, araucania, E):-
  estado(E,[cautin,malleco]),
  pertenece(E,[cautin,malleco]).
estadoRegion(chile, los_rios, E):-
  estado(E,[ranco, valdivia]),
  pertenece(E,[ranco, valdivia]).
estadoRegion(chile, los_lagos, E):-
  estado(E,[chiloe, llanquihue, osorno, palena]),
  pertenece(E,[chiloe, llanquihue, osorno, palena]).
estadoRegion(chile, aysen_del_general_carlos, E):-
  estado(E,[aysen, capitan_prat, coyhaique, general_carrera]),
  pertenece(E,[aysen, capitan_prat, coyhaique, general_carrera]).
estadoRegion(chile, magallanes, E):-
  estado(E,[antartica_chilena, magallanes, tierra_del_fuego, ultima_esperanza]),
  pertenece(E,[antartica_chilena, magallanes, tierra_del_fuego, ultima_esperanza]).
estadoRegion(chile, metropolitana_de_santiago, E):-
  estado(E,[cahcabuco, cordillera, maipo, melipilla, santiago, talagante]),
  pertenece(E,[cahcabuco, cordillera, maipo, melipilla, santiago, talagante]).

%Estados de las regiones de Venezuela
estadoRegion(venezuela, los_andes, E):-
  estado(E, [merida,trujillo, tachira, barinas, municipio_paez]),
  pertenece(E,[merida,trujillo, tachira, barinas, municipio_paez]).
estadoRegion(venezuela, capital, E):-
  estado(E, [miranda,vargas, distrito_capital]),
  pertenece(E,[miranda,vargas, distrito_capital]).
estadoRegion(venezuela, central, E):-
  estado(E, [aragua,carabobo, cojedes]),
  pertenece(E,[aragua,carabobo, cojedes]).
estadoRegion(venezuela, guayana, E):-
  estado(E, [bolivar,amazonas, delta_amacuro]),
  pertenece(E,[bolivar,amazonas, delta_amacuro]).
estadoRegion(venezuela, insular, E):-
  estado(E, [nueva_esparta,dependencias_federales]),
  pertenece(E,[nueva_esparta,dependencias_federales]).
estadoRegion(venezuela, los_llanos, E):-
  estado(E, [guarico,apure]),
  pertenece(E,[guarico,apure]).
estadoRegion(venezuela, nororiental, E):-
  estado(E, [anzoategui,monagas, sucre]),
  pertenece(E,[anzoategui,monagas, sucre]).
estadoRegion(venezuela, centroccidental, E):-
  estado(E, [falcon,lara, portuguesa, yaracuy]),
  pertenece(E,[falcon,lara, portuguesa, yaracuy]).
estadoRegion(venezuela, zuliana, E):-
  estado(E, [zuliana]),
  pertenece(E,[zuliana]).

%Distritos de Guyana Francesa
estadoRegion(guyana_francesa,cayena,E):-
 estado(E,[approuague_kaw, cayena_noroeste, cayena_noreste, cayena_suroeste, cayena_centro, cayena_sureste, iracoubo, kourou, macouria, matoury, montsibery_tonnegrande, remire_montjoly, roura, saint_georges_de_ioyapock, sinnamary]),
  pertenece(E,[approuague_kaw, cayena_noroeste, cayena_noreste, cayena_suroeste, cayena_centro, cayena_sureste, iracoubo, kourou, macouria, matoury, montsibery_tonnegrande, remire_montjoly, roura, saint_georges_de_ioyapock, sinnamary]).
estadoRegion(guyana_francesa,saint_laurent_de_maroni,E):-
 estado(E,[mana, maripasoula,saint_laurent_de_maroni]),
 pertenece(E,[mana, maripasoula,saint_laurent_de_maroni]).

%Cantones de las regiones de Suiza
cantonRegion(suiza, suiza_francesa, C):-
  canton(C, [ginebra, jura, neuchatel, valais, vaud, friburgo, berna]),
  pertenece(C, [ginebra, jura, neuchatel, valais, vaud, friburgo, berna]).


%Estados de las regiones de MÃ©xico
estadoRegion(mexico, noroeste, E):-
  estado(E, [baja_california, baja_california_sur, chihuahua, durango, sinaloa, sonora]),
  pertenece(E, [baja_california, baja_california_sur, chihuahua, durango, sinaloa, sonora]).
estadoRegion(mexico, noreste, E):-
  estado(E, [coahuila, nuevo_leon, tamaulipas]),
  pertenece(E, [coahuila, nuevo_leon, tamaulipas]).
estadoRegion(mexico, occidente, E):-
  estado(E, [nayarit, jalisco, colima, michoacan_de_ocampo]),
  pertenece(E, [nayarit, jalisco, colima, michoacan_de_ocampo]).
estadoRegion(mexico, oriente, E):-
  estado(E, [puebla, veracruz, tlaxcala, hidalgo]),
  pertenece(E, [puebla, veracruz, tlaxcala, hidalgo]).
estadoRegion(mexico, centronorte, E):-
  estado(E, [aguascalientes, guanajuato, san_luis_potosi, zacatecas, queretaro]),
  pertenece(E, [aguascalientes, guanajuato, san_luis_potosi, zacatecas, queretaro]).
estadoRegion(mexico, centrosur, E):-
  estado(E, [morelos, estado_de_mexico, mexico_df]),
  pertenece(E, [morelos, estado_de_mexico, mexico_df]).
estadoRegion(mexico, suroeste, E):-
  estado(E, [guerrero, oaxaca, chiapas]),
  pertenece(E, [guerrero, oaxaca, chiapas]).
estadoRegion(mexico, sureste, E):-
  estado(E, [tabasco, campeche, quintana_roo, yucatan]),
  pertenece(E, [tabasco, campeche, quintana_roo, yucatan]).

%Provincias y territorios de las regiones de CanadÃ¡
provinciaTerriorioRegion(canada, occidente, P):-
  provincia(P, [columbia_britanica, alberta, saskatchewan, manitoba]),
  pertenece(P, [columbia_britanica, alberta, saskatchewan, manitoba]).
provinciaTerriorioRegion(canada, centro, P):-
  provincia(P, [ontario, quebec]),
  pertenece(P, [ontario, quebec]).
provinciaTerriorioRegion(canada, atlantico, P):-
  provincia(P, [nuevo_brunswick, isla_del_principe_eduardo, nueva_escocia, terranova_y_labrador]),
  pertenece(P, [nuevo_brunswick, isla_del_principe_eduardo, nueva_escocia, terranova_y_labrador]).
provinciaTerriorioRegion(canada, norte, T):-
  territorio(T, [territorios_del_noroeste, nunavut, yukon]),
  pertenece(T, [territorios_del_noroeste, nunavut, yukon]).

%Divisiones de las regiones de Estados Unidos
divisionRegion(estados_unidos, noreste, D):-
  division(D, [nueva_inglaterra, atlantico_medio]),
  pertenece(D, [nueva_inglaterra, atlantico_medio]).
divisionRegion(estados_unidos, medio_oeste, D):-
  division(D, [centro_noreste, centro_noroeste]),
  pertenece(D, [centro_noreste, centro_noroeste]).
divisionRegion(estados_unidos, sur, D):-
  division(D, [atlantico_sur, centro_sureste, centro_suroeste]),
  pertenece(D, [atlantico_sur, centro_sureste, centro_suroeste]).
divisionRegion(estados_unidos, oeste, D):-
  division(D, [montanias_rocosas, pacifico]),
  pertenece(D, [montanias_rocosas, pacifico]).

%Estados de las divisiones de las regiones de Estados Unidos
estadoDivision(estados_unidos, noreste, nueva_inglaterra, E):-
  estado(E, [maine, nuevo_hampshire, vermont, massachusetts, rhode_island, connecticut]),
  pertenece(E, [maine, nuevo_hampshire, vermont, massachusetts, rhode_island, connecticut]), !.
estadoDivision(estados_unidos, noreste, atlantico_medio, E):-
  estado(E, [nueva_york, pensilvania, nueva_jersey]),
  pertenece(E, [nueva_york, pensilvania, nueva_jersey]), !.
estadoDivision(estados_unidos, medio_oeste, centro_noreste, E):-
  estado(E, [wisconsin, michigan, illinois, indiana, ohio]),
  pertenece(E, [wisconsin, michigan, illinois, indiana, ohio]).
estadoDivision(estados_unidos, medio_oeste, centro_noroeste, E):-
  estado(E, [dakota_del_norte, dakota_del_sur, nebraska, kansas, minnesota, iowa, misuri]),
  pertenece(E, [dakota_del_norte, dakota_del_sur, nebraska, kansas, minnesota, iowa, misuri]).
estadoDivision(estados_unidos, sur, atlantico_sur, E):-
  estado(E, [delaware, maryland, distrito_de_columbia, virginia, virginia_occidental, carolina_del_norte, carolina_del_sur, georgia, florida]),
  pertenece(E, [delaware, maryland, distrito_de_columbia, virginia, virginia_occidental, carolina_del_norte, carolina_del_sur, georgia, florida]).
estadoDivision(estados_unidos, sur, centro_sureste, E):-
  estado(E, [kentucky, tennessee, misisipi, alabama]),
  pertenece(E, [kentucky, tennessee, misisipi, alabama]).
estadoDivision(estados_unidos, sur, centro_suroeste, E):-
  estado(E, [oklahoma, texas, arkansas, luisiana]),
  pertenece(E, [oklahoma, texas, arkansas, luisiana]).
estadoDivision(estados_unidos, oeste, montanias_rocosas, E):-
  estado(E, [idaho, montana, wyoming, nevada, utah, colorado, arizona, nuevo_mexico]),
  pertenece(E, [idaho, montana, wyoming, nevada, utah, colorado, arizona, nuevo_mexico]).
estadoDivision(estados_unidos, oeste, pacifico, E):-
  estado(E, [alaska, washington, oregon, california, hawai]),
  pertenece(E, [alaska, washington, oregon, california, hawai]).

%Ciudades capitales de Suiza
ciudad(lausana):- datosIniciales(europa, europa_central, aleman_frances_italiano_romanche), lugar(suiza, suiza_francesa, vaud).

%Ciudades capitales de MÃ©xico
ciudad(aguascalientes):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, centronorte, aguascalientes).
ciudad(mexicali):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, noroeste, baja_california).
ciudad(la_paz):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, noroeste, baja_california_sur).
ciudad(san_francisco_de_campeche):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, sureste, campeche).
ciudad(chihuahua):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, noroeste, chihuahua).
ciudad(tuxtla_gutierrez):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, suroeste, chiapas).
ciudad(saltillo):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, noreste, coahuila).
ciudad(colima):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, occidente, colima).
ciudad(victoria_de_durango):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, noroeste, durango).
ciudad(guanajuato):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, centronorte, guanajuato).
ciudad(chilpancingo_de_los_bravo):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, suroeste, guerrero).
ciudad(pachuca_de_soto):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, oriente, hidalgo).
ciudad(guadalajara):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, occidente, jalisco).
ciudad(toluca_de_lerdo):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, centrosur, estado_de_mexico).
ciudad(morelia):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, occidente, michoacan_de_ocampo).
ciudad(cuernavaca):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, centrosur, morelos).
ciudad(tepic):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, occidente, nayarit).
ciudad(monterrey):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, noreste, nuevo_leon).
ciudad(oaxaca_de_juarez):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, suroeste, oaxaca).
ciudad(puebla_de_zaragoza):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, oriente, puebla).
ciudad(santiago_de_queretaro):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, centronorte, queretaro).
ciudad(chetumal):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, sureste, quintana_roo).
ciudad(san_luis_potosi):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, centronorte, san_luis_potosi).
ciudad(culiacan_de_rosales):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, noroeste, sinaloa).
ciudad(hermosillo):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, noroeste, sonora).
ciudad(villahermosa):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, sureste, tabasco).
ciudad(ciudad_victoria):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, noreste, tamaulipas).
ciudad(tlaxcala_de_xicohtencatl):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, oriente, tlaxcala).
ciudad(xalapa_enriquez):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, oriente, veracruz).
ciudad(merida):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, sureste, yucatan).
ciudad(zacatecas):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, centronorte, zacatecas).
ciudad(ciudad_de_mexico):- datosIniciales(america, norteamerica, espaniol), lugar(mexico, centrosur, mexico_df).

%Ciudades capitales de Estados Unidos
ciudad(augusta):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, noreste, nueva_inglaterra, maine).
ciudad(concord):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, noreste, nueva_inglaterra, nuevo_hampshire).
ciudad(montpelier):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, noreste, nueva_inglaterra, vermont).
ciudad(boston):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, noreste, nueva_inglaterra, massachusetts).
ciudad(providence):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, noreste, nueva_inglaterra, rhode_island).
ciudad(hartford):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, noreste, nueva_inglaterra, connecticut).
ciudad(nueva_york):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, noreste, atlantico_medio, nueva_york).
ciudad(harrisburg):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, noreste, atlantico_medio, pensilvania).
ciudad(trenton):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, noreste, atlantico_medio, nueva_jersey).
ciudad(madison):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, medio_oeste, centro_noreste, wisconsin).
ciudad(lansing):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, medio_oeste, centro_noreste, michigan).
ciudad(springfield):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, medio_oeste, centro_noreste, illinois).
ciudad(indianapolis):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, medio_oeste, centro_noreste, indiana).
ciudad(columbus):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, medio_oeste, centro_noreste, ohio).
ciudad(bismarck):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, medio_oeste, centro_noroeste, dakota_del_norte).
ciudad(pierre):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, medio_oeste, centro_noroeste, dakota_del_sur).
ciudad(lincoln):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, medio_oeste, centro_noroeste, nebraska).
ciudad(topeka):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, medio_oeste, centro_noroeste, kansas).
ciudad(saint_paul):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, medio_oeste, centro_noroeste, minnesota).
ciudad(des_moines):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, medio_oeste, centro_noroeste, iowa).
ciudad(jefferson_city):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, medio_oeste, centro_noroeste, misuri).
ciudad(dover):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, atlantico_sur, delaware).
ciudad(annapolis):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, atlantico_sur, maryland).
ciudad(washington_d_c):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, atlantico_sur, distrito_de_columbia).
ciudad(richmond):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, atlantico_sur, virginia).
ciudad(charleston):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, atlantico_sur, virginia_occidental).
ciudad(raleigh):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, atlantico_sur, carolina_del_norte).
ciudad(columbia):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, atlantico_sur, carolina_del_sur).
ciudad(atlanta):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, atlantico_sur, georgia).
ciudad(tallahassee):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, atlantico_sur, florida).
ciudad(frankfort):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, centro_sureste, kentucky).
ciudad(nashville):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, centro_sureste, tennessee).
ciudad(jackson):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, centro_sureste, misisipi).
ciudad(montgomery):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, centro_sureste, alabama).
ciudad(oklahoma_city):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, centro_suroeste, oklahoma).
ciudad(austin):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, centro_suroeste, texas).
ciudad(little_rock):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, centro_suroeste, arkansas).
ciudad(baton_rouge):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, sur, centro_suroeste, luisiana).
ciudad(boise):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, oeste, montanias_rocosas, idaho).
ciudad(helena):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, oeste, montanias_rocosas, montana).
ciudad(cheyenne):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, oeste, montanias_rocosas, wyoming).
ciudad(carson_city):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, oeste, montanias_rocosas, nevada).
ciudad(salt_lake_city):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, oeste, montanias_rocosas, utah).
ciudad(denver):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, oeste, montanias_rocosas, colorado).
ciudad(phoenix):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, oeste, montanias_rocosas, arizona).
ciudad(santa_fe):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, oeste, montanias_rocosas, nuevo_mexico).
ciudad(juneau):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, oeste, pacifico, alaska).
ciudad(olympia):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, oeste, pacifico, washington).
ciudad(salem):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, oeste, pacifico, oregon).
ciudad(sacramento):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, oeste, pacifico, california).
ciudad(honolulu):- datosIniciales(america, norteamerica, ingles), lugar(estados_unidos, oeste, pacifico, hawai).

%Ciudades capitales de CanadÃ¡
ciudad(victoria):- datosIniciales(america, norteamerica, ingles_frances), lugar(canada, occidente, columbia_britanica).
ciudad(edmonton):- datosIniciales(america, norteamerica, ingles_frances), lugar(canada, occidente, alberta).
ciudad(regina):- datosIniciales(america, norteamerica, ingles_frances), lugar(canada, occidente, saskatchewan).
ciudad(winnipeg):- datosIniciales(america, norteamerica, ingles_frances), lugar(canada, occidente, manitoba).
ciudad(toronto):- datosIniciales(america, norteamerica, ingles_frances), lugar(canada, centro, ontario).
ciudad(quebec):- datosIniciales(america, norteamerica, ingles_frances), lugar(canada, centro, quebec).
ciudad(fredericton):- datosIniciales(america, norteamerica, ingles_frances), lugar(canada, atlantico, nuevo_brunswick).
ciudad(charlottetown):- datosIniciales(america, norteamerica, ingles_frances), lugar(canada, atlantico, isla_del_principe_eduardo).
ciudad(halifax):- datosIniciales(america, norteamerica, ingles_frances), lugar(canada, atlantico, nueva_escocia).
ciudad(san_juan_de_terranova):- datosIniciales(america, norteamerica, ingles_frances), lugar(canada, atlantico, terranova_y_labrador).
ciudad(whitehorse):- datosIniciales(america, norteamerica, ingles_frances), lugar(canada, norte, yukon).
ciudad(yellowknife):- datosIniciales(america, norteamerica, ingles_frances), lugar(canada, norte, territorios_del_noroeste).
ciudad(iqaluit):- datosIniciales(america, norteamerica, ingles_frances), lugar(canada, norte, nunavut).

%Ciudades capitales de Guatemala
ciudad(guatemala):- datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, metropolitana, guatemala).

%Ciudades capitales de Groanlandia
ciudad(nuuk):- datosIniciales(america, norteamerica, danes), lugar(groenlandia, sermersooq).
ciudad(ilulissat):-datosIniciales(america, norteamerica, danes), lugar(groenlandia, qaasuitsap).
ciudad(sisimiut):-datosIniciales(america, norteamerica, danes), lugar(groenlandia, qeqqata).
ciudad(qaqortoq):-datosIniciales(america, norteamerica, danes), lugar(groenlandia, kujalleq).

%Ciudades de Berrmudas
ciudad(no_tiene_capital):-datosIniciales(america, norteamerica, ingles), lugar(bermudas, parroquia_de_sandys).
ciudad(no_tiene_capital):-datosIniciales(america, norteamerica, ingles), lugar(bermudas, parroquia_de_southampton).
ciudad(no_tiene_capital):-datosIniciales(america, norteamerica, ingles), lugar(bermudas, parroquia_de_warwikc).
ciudad(no_tiene_capital):-datosIniciales(america, norteamerica, ingles), lugar(bermudas, parroquia_de_paget).
ciudad(no_tiene_capital):-datosIniciales(america, norteamerica, ingles), lugar(bermudas, parroquia_de_pembroke).
ciudad(no_tiene_capital):-datosIniciales(america, norteamerica, ingles), lugar(bermudas, parroquia_de_devonshire).
ciudad(no_tiene_capital):-datosIniciales(america, norteamerica, ingles), lugar(bermudas, parroquia_de_smith).
ciudad(no_tiene_capital):-datosIniciales(america, norteamerica, ingles), lugar(bermudas, parroquia_de_hamilton).
ciudad(no_tiene_capital):-datosIniciales(america, norteamerica, ingles), lugar(bermudas, parroquia_de_saint_gorge).

%Ciudades de San Pedro y Miquelon
ciudad(miquelon):-datosIniciales(america, norteamerica, frances), lugar(san_pedro_y_miquelon, comuna_de_miquelon_langlade).
ciudad(san_pedro):-datosIniciales(america, norteamerica, frances), lugar(san_pedro_y_miquelon, comuna_de_miquelon_san_pedro).

%Ciudades de Belice
ciudad(ciudad_de_belice):-datosIniciales(america, centroamerica, ingles), lugar(belice, belice).
ciudad(san_ignacio):-datosIniciales(america, centroamerica, ingles), lugar(belice, cayo).
ciudad(corozal_town):-datosIniciales(america, centroamerica, ingles), lugar(belice, corozal).
ciudad(orange_walk_town):-datosIniciales(america, centroamerica, ingles), lugar(belice, orange_walk).
ciudad(dangriga):-datosIniciales(america, centroamerica, ingles), lugar(belice, stann_creek).
ciudad(punta_gorda):-datosIniciales(america, centroamerica, ingles), lugar(belice, toledo).

%Ciudades de Costa Rica
ciudad(san_jose):-datosIniciales(america, centroamerica, espaniol, costa_rica), lugar(costa_rica, san_jose).
ciudad(alajuela):-datosIniciales(america, centroamerica, espaniol, costa_rica), lugar(costa_rica, alajuela).
ciudad(cartago):-datosIniciales(america, centroamerica, espaniol, costa_rica), lugar(costa_rica, cartago).
ciudad(heredia):-datosIniciales(america, centroamerica, espaniol, costa_rica), lugar(costa_rica, heredia).
ciudad(liberia):-datosIniciales(america, centroamerica, espaniol, costa_rica), lugar(costa_rica, guanacaste).
ciudad(puntarenas):-datosIniciales(america, centroamerica, espaniol, costa_rica), lugar(costa_rica, puntarenas).
ciudad(limon):-datosIniciales(america, centroamerica, espaniol, costa_rica), lugar(costa_rica, limon).

%Ciudades de El Salvador
ciudad(ahuachapan):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, occidente, ahuachapan).
ciudad(santa_ana):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, occidente, santa_ana).
ciudad(sonsonate):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, occidente, sonsonate).
ciudad(usulutan):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, oriental, usulutan).
ciudad(san_miguel):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, oriental, san_miguel).
ciudad(san_francisco):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, oriental, morazan).
ciudad(la_union):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, oriental, la_union).
ciudad(santa_tecla):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, central, la_libertad).
ciudad(chalatenango):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, central, chalatenango).
ciudad(cojutepeque):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, central, cuscatlan).
ciudad(san_salvador):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, central, san_salvador).
ciudad(zacatecoluca):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, paracentral, la_paz).
ciudad(sensuntepeque):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, paracentral, cabanas).
ciudad(san_vicente):-datosIniciales(america, centroamerica, espaniol, salvador), lugar(salvador, paracentral, san_vicente).

%ciudades de Honduras
ciudad(la_ceiba):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, atlantida).
ciudad(trujillo):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, colon).
ciudad(comayagua):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, comayagua).
ciudad(santa_rosa_de_copan):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, copan).
ciudad(san_pedro_sula):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, cortes).
ciudad(chuloteca):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, chuloteca).
ciudad(yuscaran):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, el_paraiso).
ciudad(distrito_central):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, francisco_morazan).
ciudad(puerto_lempira):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, gracias_a_dios).
ciudad(la_esperanza):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, intibuca).
ciudad(roatan):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, islas_de_la_bahia).
ciudad(la_paz):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, la_paz).
ciudad(gracias):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, lempira).
ciudad(nueva_ocotepeque):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, ocotepeque).
ciudad(juticalpa):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, olancho).
ciudad(santa_barbara):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, santa_barbara).
ciudad(nacaome):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, valle).
ciudad(yoro):-datosIniciales(america, centroamerica, espaniol), lugar(honduras, yoro).

%Ciudades de Nicaragua
ciudad(jinotepe):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, pacifico, carazo).
ciudad(chinandega):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, pacifico, chinandega).
ciudad(granada):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, pacifico, granada).
ciudad(leon):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, pacifico, leon).
ciudad(santiago_de_managua):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, pacifico, managua).
ciudad(masaya):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, pacifico, masaya).
ciudad(rivas):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, pacifico, rivas).
ciudad(boaco):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, central, boaco).
ciudad(juigalpa):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, central, chontales).
ciudad(esteli):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, central, esteli).
ciudad(jinotega):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, central, jinotega).
ciudad(san_carlos):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, central, rio_san_juan).
ciudad(somoto):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, central, madriz).
ciudad(matagalpa):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, central, matagalpa).
ciudad(ocotal):-datosIniciales(america, centroamerica, espaniol, nicaragua), lugar(nicaragua, central, nueva_segovia).

%Ciudades de Panama
ciudad(bocas_de_toro):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, occidental, bocas_del_toro).
ciudad(penonome):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, central, cocle).
ciudad(colon):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, metropolitana, colon).
ciudad(san_jose_de_david):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, occidental, chiriqui).
ciudad(la_palma):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, oriental, darien).
ciudad(chitre):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, central, herrera).
ciudad(las_tablas):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, central, los_santos).
ciudad(panama):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, metropolitana, panama).
ciudad(santiago):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, central, veraguas).
ciudad(union_choco):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, oriental, embera_wounaan).
ciudad(el_porvenir):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, oriental, guna_yala).
ciudad(llano_tugri):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, occidental, ngabe_bugle).
ciudad(akua_yala):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, oriental, kuna_de_madugandi).
ciudad(morti):-datosIniciales(america, centroamerica, espaniol, panama), lugar(panama, oriental, kuna_de_wargandi).

%Ciudades de Guatemala
ciudad(coban):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, norte, alta_verapaz).
ciudad(salama):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, norte, baja_verapaz).
ciudad(chimaltenango):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, central, chimaltenango).
ciudad(chiquimula):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, nororiental, chiquimula).
ciudad(flores):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, peten, peten).
ciudad(guastatoya):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, nororiental, el_progreso).
ciudad(santa_cruz_del_quiche):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, noroccidental, quiche).
ciudad(escuintla):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, central, escuintla).
ciudad(ciudad_de_guatemala):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, metropolitana, guatemala).
ciudad(huehuetenango):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, noroccidental, huehuetenango).
ciudad(puerto_barrios):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, nororiental, izabal).
ciudad(jalapa):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, suroriental, jalapa).
ciudad(jutiapa):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, suroriental, jutiapa).
ciudad(quetzaltenango):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, suroccidental, quetzaltenango).
ciudad(retalhuleu):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, suroccidental, retalhuleu).
ciudad(la_antigua_guatemala):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, central, sacatepequez).
ciudad(san_marcos):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, suroccidental, san_marcos).
ciudad(cuilapa):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, suroriental, santa_rosa).
ciudad(solola):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, suroccidental, solola).
ciudad(mazatenango):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, suroccidental, suchitepequez).
ciudad(totonicapan):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, suroccidental, totonicapan).
ciudad(zacapa):-datosIniciales(america, centroamerica, espaniol, guatemala), lugar(guatemala, nororiental, zacapa).

%Ciudades capitales de Argentina
ciudad(la_plata):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, buenos_aires).
ciudad(san_fernando_del_valle_de_catamarca):-datosIniciales(america, sudamerica, espaniol, argentina),lugar(argentina, catamarca).
ciudad(resistencia):-datosIniciales(america, sudamerica, espaniol, argentina),lugar(argentina,chaco).
ciudad(rawson):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, chubut).
ciudad(cordoba):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, cordoba).
ciudad(corrientes):-datosIniciales(america, sudamerica, espaniol, argentina),lugar(argentina,corrientes).
ciudad(parana):-datosIniciales(america, sudamerica, espaniol,argentina),lugar(argentina, entre_rios).
ciudad(formosa):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, formosa).
ciudad(san_salvador_de_jujuy):-datosIniciales(america, sudamerica, espaniol, argentina),lugar(argentina, jujuy).
ciudad(santa_rosa):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, la_pampa).
ciudad(la_rioja):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, la_rioja).
ciudad(mendoza):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, mendoza).
ciudad(posadas):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, misiones).
ciudad(neuquen):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, neuquen).
ciudad(viedma):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina,rio_negro).
ciudad(salta):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, salta).
ciudad(san_juan):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, san_juan).
ciudad(san_luis):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, san_luis).
ciudad(rio_gallegos):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, santa_cruz).
ciudad(santa_fe):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, santa_fe).
ciudad(santiago_del_estero):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, santiago_del_estero).
ciudad(ushuaia):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, tierra_del_fuego).
ciudad(san_miguel_de_tucuman):-datosIniciales(america, sudamerica, espaniol, argentina), lugar(argentina, tucuman).

%ciudades capitales de Bolivia
ciudad(trinidad):-datosIniciales(america, sudamerica, espaniol, bolivia), lugar(bolivia,beni).
ciudad(sucre):-datosIniciales(america, sudamerica, espaniol, bolivia),lugar(bolivia, chuquisaca).
ciudad(cochabamba):-datosIniciales(america, sudamerica,espaniol, bolivia), lugar(bolivia, cochabamba).
ciudad(la_paz):-datosIniciales(america, sudamerica, espaniol, bolivia), lugar(bolivia,la_paz).
ciudad(oruro):-datosIniciales(america, sudamerica, espaniol, bolivia), lugar(bolivia,oruro).
ciudad(cobija):-datosIniciales(america, sudamerica, espaniol, bolivia), lugar(bolivia,pando).
ciudad(potosi):-datosIniciales(america, sudamerica, espaniol, bolivia), lugar(bolivia,potosi).
ciudad(santa_cruz_de_la_sierra):-datosIniciales(america, sudamerica, espaniol, bolivia), lugar(bolivia,santa_cruz).
ciudad(tarija):-datosIniciales(america, sudamerica, espaniol, bolivia), lugar(bolivia,tarija).

%Ciudades capitales de Brasil
ciudad(rio_branco):- datosIniciales(america, sudamerica, portugues), lugar(brasil, norte, acre).
ciudad(macapa):- datosIniciales(america, sudamerica, portugues), lugar(brasil, norte, amapa).
ciudad(manaus):- datosIniciales(america, sudamerica, portugues), lugar(brasil, norte, amazonas).
ciudad(belem):- datosIniciales(america, sudamerica, portugues), lugar(brasil, norte, para).
ciudad(porto_velho):- datosIniciales(america, sudamerica, portugues), lugar(brasil, norte, rondonia).
ciudad(boa_vista):- datosIniciales(america, sudamerica, portugues), lugar(brasil, norte, roraima).
ciudad(palamas):- datosIniciales(america, sudamerica, portugues), lugar(brasil, norte, tocantins).
ciudad(maceio):- datosIniciales(america, sudamerica, portugues), lugar(brasil, nordeste, alagoas).
ciudad(salvador):- datosIniciales(america, sudamerica, portugues), lugar(brasil, nordeste, bahia).
ciudad(fortaleza):- datosIniciales(america, sudamerica, portugues), lugar(brasil, nordeste, ceara).
ciudad(sao_luis):- datosIniciales(america, sudamerica, portugues), lugar(brasil, nordeste, maranhao).
ciudad(joao_pessoa):- datosIniciales(america, sudamerica, portugues), lugar(brasil, nordeste, paraiba).
ciudad(recife):- datosIniciales(america, sudamerica, portugues), lugar(brasil, nordeste, pernambuco).
ciudad(teresina):- datosIniciales(america, sudamerica, portugues), lugar(brasil, nordeste, piaui).
ciudad(natal):- datosIniciales(america, sudamerica, portugues), lugar(brasil, nordeste, rio_grande_del_norte).
ciudad(aracaju):- datosIniciales(america, sudamerica, portugues), lugar(brasil, nordeste, sergipe).
ciudad(brasilia):- datosIniciales(america, sudamerica, portugues), lugar(brasil, centro_oeste, distrito_federal).
ciudad(goiania):- datosIniciales(america, sudamerica, portugues), lugar(brasil, centro_oeste, goias).
ciudad(cuiaba):- datosIniciales(america, sudamerica, portugues), lugar(brasil, centro_oeste, mato_grosso).
ciudad(campo_grande):- datosIniciales(america, sudamerica, portugues), lugar(brasil, centro_oeste, mato_grosso_del_sur).
ciudad(vitoria):- datosIniciales(america, sudamerica, portugues), lugar(brasil, sudeste, espiritu_santo).
ciudad(belo_horizonte):- datosIniciales(america, sudamerica, portugues), lugar(brasil, sudeste, minas_gerais).
ciudad(rio_de_janeiro):- datosIniciales(america, sudamerica, portugues), lugar(brasil, sudeste, rio_de_janeiro).
ciudad(sao_paulo):- datosIniciales(america, sudamerica, portugues), lugar(brasil, sudeste, sao_paulo).
ciudad(curitiba):- datosIniciales(america, sudamerica, portugues), lugar(brasil, sur, parana).
ciudad(porto_alegre):- datosIniciales(america, sudamerica, portugues), lugar(brasil, sur, rio_grande_del_sur).
ciudad(florianopolis):- datosIniciales(america, sudamerica, portugues), lugar(brasil, sur, santa_catarina).

%Ciudades capitales de Chile
ciudad(arica):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile, arica_y_parinacota, arica).
ciudad(putre):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile, arica_y_parinacota, parinacota).
ciudad(iquique):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile, tarapaca,iquique).
ciudad(pozo_almonte):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile, tarapaca,tamarugal).
ciudad(antofagasta):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,antofagasta,antofagasta ).
ciudad(calama):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,antofagasta,el_loa ).
ciudad(tocopilla):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,antofagasta,tocopilla ).
ciudad(chanaral):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,atacama,chanaral ).
ciudad(copiapo):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,atacama, copiapo).
ciudad(vallenar):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,atacama,huasco).
ciudad(coquimbo):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,coquimbo,elqui).
ciudad(illapel):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,coquimbo,choapa).
ciudad(ovalle):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,coquimbo,limari).
ciudad(hanga_roa):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,valparaiso,isla_de_pascua).
ciudad(los_andes):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,valparaiso,los_andes).
ciudad(quilpue):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,valparaiso,marga).
ciudad(la_ligua):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,valparaiso,petorca).
ciudad(quillota):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,valparaiso,quillota).
ciudad(san_antonio):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,valparaiso,san_antonio).
ciudad(san_felipe):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,valparaiso,san_felipe_de_aconcagua).
ciudad(valparaiso):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,valparaiso, valparaiso).
ciudad(rancagua):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,libertador_general_bernardo, cachapoal).
ciudad(pichilemu):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,o_higgins, cardenal_caro).
ciudad(san_fernando):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,o_higgins, colchagua).
ciudad(cauquenes):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,maule,cauquenes ).
ciudad(curico):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,maule,curico ).
ciudad(linares):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,maule,linares ).
ciudad(talca):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,maule,talca ).
ciudad(quirihue):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,nuble,itata ).
ciudad(bulnes):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,nuble,diguillin).
ciudad(san_carlos):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,nuble,punilla).
ciudad(lebu):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,biobio,auraco).
ciudad(los_angeles):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,biobio,biobio).
ciudad(concepcion):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,biobio,concepcion).
ciudad(chillan):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,biobio,nuble).
ciudad(temuco):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,araucania,cautin).
ciudad(angol):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,araucania,malleco).
ciudad(la_union):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,los_rios,ranco).
ciudad(valdivia):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,los_rios,valdivia).
ciudad(castro):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,los_lagos,chiloe).
ciudad(puerto_montt):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,los_lagos,llanquihue).
ciudad(osorno):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,los_lagos,osorno).
ciudad(chaiten):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,los_lagos,palena).
ciudad(puerto_williams):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,magallanes,antartica_chiena).
ciudad(punhta_arenas):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,magallanes,magallanes).
ciudad(porvenir):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,magallanes,tierra_de_fuego).
ciudad(puerto_natales):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,magallanes,ultima_esperanza).
ciudad(colina):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,metropolitana_de_santiago,cahcabuco).
ciudad(puente_alto):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,metropolitana_de_santiago,cordillera).
ciudad(san_bernardo):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,metropolitana_de_santiago,maipo).
ciudad(melipilla):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,metropolitana_de_santiago,melipilla).
ciudad(santiago):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,metropolitana_de_santiago,santiago).
ciudad(talagante):- datosIniciales(america, sudamerica, espaniol, chile), lugar(chile,metropolitana_de_santiago,talagante).

%Ciudades Capitales de Colombia
ciudad(leticia):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,amazonas).
ciudad(medellin):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,antioquia).
ciudad(arauca):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,arauca).
ciudad(barranquilla):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,atlantico).
ciudad(bogota):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,bogota).
ciudad(cartagena_de_indias):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,bolivar).
ciudad(tunja):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,boyaca).
ciudad(manizalez):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,caldas).
ciudad(florencias):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,caqueta).
ciudad(yopal):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,casanare).
ciudad(popayan):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,cauca).
ciudad(valledupar):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,cesar).
ciudad(quibdo):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,choco).
ciudad(monteria):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,cordoba).
ciudad(bogota):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,cundinamarca).
ciudad(inirida):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,guainia).
ciudad(san_jose_del_guaviare):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,guaviare).
ciudad(neiva):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,huila).
ciudad(riohacha):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,la_guajira).
ciudad(santa_marta):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,magdalena).
ciudad(villavicencio):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,meta).
ciudad(pasto):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,narino).
ciudad(san_jose_de_cucuta):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,norte_de_santander).
ciudad(mocoa):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,putumayo).
ciudad(armenia):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,quindio).
ciudad(pereira):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,risaralda).
ciudad(san_andres):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,san_andres_y_providencia).
ciudad(bucaramanga):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,santander).
ciudad(sincelejo):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,sucre).
ciudad(ibague):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,tolima).
ciudad(cali):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,valle_del_cauca).
ciudad(mitu):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,vaupes).
ciudad(puerto_carreno):-datosIniciales(america,sudamerica,espaniol, colombia), lugar(colombia,vichada).

%Ciudades capitales de Ecuador
ciudad(cuenca):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, azuay).
ciudad(guaranda):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, bolivar).
ciudad(azogues):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, canar).
ciudad(tulcan):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, carchi).
ciudad(riobamba):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, chimborazo).
ciudad(latacunga):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, cotopaxi).
ciudad(machala):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, el_oro).
ciudad(esmeraldas):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador,esmeraldas).
ciudad(puerto_baquerizo_moreno):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, galapagos).
ciudad(guayaquil):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, guayas).
ciudad(ibarra):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, imbabura).
ciudad(loja):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, loja).
ciudad(babahoyo):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, los_rios).
ciudad(portoviejo):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, manabi).
ciudad(macas):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, morona_santiago).
ciudad(tena):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, napo).
ciudad(francisco_de_orellana):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, orellana).
ciudad(puyo):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, pastaza).
ciudad(quito):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, pichincha).
ciudad(santa_elena):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, santa_elena).
ciudad(santo_domingo):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, santo_domingo_de_los_tsachilas).
ciudad(nueva_loja):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, sucumbios).
ciudad(ambato):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, tungurahua).
ciudad(zamora):-datosIniciales(america, sudamerica, espaniol, ecuador), lugar(ecuador, zamora_chinchipe).

%Ciudades capitales de Guyana
ciudad(mabaruma):-datosIniciales(america, sudamerica ,ingles ), lugar(guyana, barima_waini).
ciudad(anna_regina):-datosIniciales(america, sudamerica, ingles ), lugar(guyana, pomeroon_supenaam).
ciudad(vreed_en_hoop):-datosIniciales(america, sudamerica, ingles), lugar(guyana, islas_esequibo_demerara_occidental).
ciudad(paradise):-datosIniciales(america, sudamerica, ingles), lugar(guyana, demerara_mahaica).
ciudad(fort_wellington):-datosIniciales(america, sudamerica, ingles ), lugar(guyana, mahaica_berbice).
ciudad(nueva_amsterdam):-datosIniciales(america, sudamerica, ingles ), lugar(guyana, berbice_oriental_corentyne).
ciudad(bartica):-datosIniciales(america, sudamerica, ingles), lugar(guyana, cuyuni_maxaruni).
ciudad(mahdia):-datosIniciales(america, sudamerica, ingles), lugar(guyana, potaro_sipuruni).
ciudad(lethem):-datosIniciales(america, sudamerica, ingles), lugar(guyana, alto_tacutu_alto).
ciudad(esequibo):-datosIniciales(america, sudamerica, ingles), lugar(guyana,esequibo).
ciudad(linden):-datosIniciales(america, sudamerica, ingles), lugar(guyana, alto_demerara_berbice).

%ciudades capitales de Paraguay
ciudad(asuncion):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, paraguay).
ciudad(concepcion):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay,concepcion ).
ciudad(san_pedro_de_ycuamandiyu):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, san_pedro).
ciudad(caacupe):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, cordillera).
ciudad(villarrica):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, guaira).
ciudad(coronel_oviedo):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, caaguazu).
ciudad(caazapa):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay,caazapa ).
ciudad(encarnacion):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, itapua).
ciudad(san_juan_bautista):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, misiones).
ciudad(paraguari):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, paraguari).
ciudad(ciudad_de_este):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, alto_parana).
ciudad(aregua):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, central).
ciudad(pilar):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, neembucu).
ciudad(pedro_juan_caballero):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, amambay).
ciudad(salto_del_guaira):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, canundeyu).
ciudad(villa_hayes):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, presidente_hayes).
ciudad(filadenfia):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, boqueron).
ciudad(fuerte_olimpo):-datosIniciales(america, sudamerica, espaniol,paraguay), lugar(paraguay, alto_paraguay).

%ciudades capitales de Peru
ciudad(chachapoyas):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru, amazonas).
ciudad(huaraz):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru, ancash).
ciudad(abancay):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru, apurimac).
ciudad(arequipa):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,arequipa ).
ciudad(ayacucho):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,ayacucho).
ciudad(cajamarca):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,cajamarca ).
ciudad(callao):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,callao ).
ciudad(cuzco):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru, cusco).
ciudad(huancavelica):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,huancavelica ).
ciudad(huanuco):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,huanuco ).
ciudad(ica):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,ica).
ciudad(huancayo):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru, junin).
ciudad(trujillo):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru, la_libertad).
ciudad(chiclayo):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru, lambayeque).
ciudad(lima):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru, lima_metropolitana).
ciudad(huacho):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru, lima).
ciudad(iquitos):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru, loreto).
ciudad(puerto_maldonado):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru, madre_de_dios).
ciudad(moquegua):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,moquegua ).
ciudad(cerro_de_pasco):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru, pasco).
ciudad(piura):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,piura).
ciudad(puno):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,puno).
ciudad(moyobamba):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,san_martin).
ciudad(tacna):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,tacna).
ciudad(tumbes):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,tumbes).
ciudad(pucallpa):-datosIniciales(america, sudamerica, espaniol,peru), lugar(peru,ucayali).

%Ciudades capitales de Surinam
ciudad(brokopondo):-datosIniciales(america, sudamerica ,neerlandes ), lugar(surinam, brokopondo).
ciudad(nueva_amsterdam):-datosIniciales(america, sudamerica ,neerlandes ), lugar(surinam, commewjine).
ciudad(totness):-datosIniciales(america, sudamerica ,neerlandes ), lugar(surinam, coronie).
ciudad(albina):-datosIniciales(america, sudamerica ,neerlandes ), lugar(surinam, marowjine).
ciudad(nieuw_nickerie):-datosIniciales(america, sudamerica ,neerlandes ), lugar(surinam, nickerie).
ciudad(onverwacht):-datosIniciales(america, sudamerica ,neerlandes ), lugar(surinam, para).
ciudad(paramaribo):-datosIniciales(america, sudamerica ,neerlandes ), lugar(surinam,paramaribo).
ciudad(groningen):-datosIniciales(america, sudamerica ,neerlandes ), lugar(surinam, saramacca).
ciudad(sipaliwini):-datosIniciales(america, sudamerica ,neerlandes ), lugar(surinam,sipaliwini).
ciudad(lelydorp):-datosIniciales(america, sudamerica ,neerlandes ), lugar(surinam, wanica).

%ciudades capitales de Uruaguay
ciudad(artigas):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,artigas).
ciudad(canelones):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,canelones).
ciudad(melo):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,carro_largo).
ciudad(colonia_del_sacramento):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,colonia).
ciudad(durazno):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,durazno).
ciudad(trinidad):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,flores).
ciudad(florida):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,florida).
ciudad(minas):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,lavalleja).
ciudad(maldonado):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,maldonado).
ciudad(montevideo):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,montevideo).
ciudad(paysandu):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,paysandu).
ciudad(fray_bentos):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,rio_negro).
ciudad(rivera):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,rivera).
ciudad(rocha):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,rocha).
ciudad(salto):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,salto).
ciudad(san_jose_de_mayo):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,san_jose).
ciudad(mercedes):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,soriano).
ciudad(tacuarembo):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,tacuarembo).
ciudad(treinta_y_tres):-datosIniciales(america, sudamerica, espaniol,uruguay), lugar(uruguay,treinta_y_tres).

%Ciudades capitales de Venezuela
ciudad(merida):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, los_andes, merida).
ciudad(trujillo):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, los_andes,trujillo ).
ciudad(san_cristobal):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, los_andes, tachira).
ciudad(barinas):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, los_andes,barinas).
ciudad(guasdualito):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, los_andes, municipio_paez).
ciudad(los_teques):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, capital, miranda).
ciudad(la_guaira):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, capital, vargas).
ciudad(caracas):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, capital, distrito_capital).
ciudad(maracay):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, central, aragua).
ciudad(valencia):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, central, carabobo).
ciudad(san_carlos_de_austria):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, central, cojedes).
ciudad(ciudad_bolivar):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, guayana, bolivar).
ciudad(puerto_ayacucho):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, guayana, amazonas).
ciudad(tucupita):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, guayana, delta_amacuro).
ciudad(la_asuncion):- datosIniciales(america, sudamerica, espaniol, venezuela), lugar(venezuela, insular, nueva_esparta).
ciudad(gran_roque):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, insular, dependencias_federales).
ciudad(san_juan_de_los_morros):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, los_llanos, guarico).
ciudad(san_fernando_de_apure):- datosIniciales(america,sudamerica, espaniol, venezuela), lugar(venezuela, los_llanos, apure).
ciudad(barcelona):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, nororiental, anzoategui).
ciudad(maturin):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, nororiental, monagas).
ciudad(cumana):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, nororiental, sucre).
ciudad(coro):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, centroccidental, falcon).
ciudad(barquisimeto):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, centroccidental, lara).
ciudad(guanare):- datosIniciales(america,sudamerica , espaniol, venezuela), lugar(venezuela, centroccidental, portuguesa).
ciudad(san_felipe):- datosIniciales(america, sudamerica, espaniol, venezuela), lugar(venezuela, centroccidental, yaracuy).
ciudad(maracaibo):- datosIniciales(america, sudamerica, espaniol, venezuela), lugar(venezuela, zuliana, zuliana).

%Ciudades de Guyana Francesa
ciudad(regina):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,approuague_kaw).
ciudad(cayena):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,cayena_noroeste).
ciudad(cayena):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,cayena_noreste).
ciudad(cayena):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,cayena_suroeste).
ciudad(cayena):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,cayena_centro).
ciudad(cayena):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,cayena_sureste).
ciudad(iracoubo):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,iracoubo).
ciudad(kourou):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,kourou).
ciudad(macouria):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,macouria).
ciudad(matoury):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,matoury).
ciudad(montsibery_tonnegrande):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,montsibery_tonnegrande).
ciudad(remire_montjoly):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,remire_montjoly).
ciudad(roura):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,roura).
ciudad(saint_georges_de_ioyapock):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,saint_georges_de_ioyapock).
ciudad(sinnamary):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,cayena,sinnamary).
ciudad(mana):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,saint_laurent_de_maroni,mana).
ciudad(maripasoula):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,saint_laurent_de_maroni,maripasoula).
ciudad(asaint_laurent_de_maroni):-datosIniciales(america,sudamerica,frances),lugar(guyana_francesa,saint_laurent_de_maroni,saint_laurent_de_maroni).

%Ciudades de islas Georgia del sur
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_georgia_del_sur,annenkov).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_georgia_del_sur,cooper).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_georgia_del_sur,grass).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_georgia_del_sur,pajaro).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_georgia_del_sur,trinity).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_georgia_del_sur,pickersgill).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_georgia_del_sur,bienvenido).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_georgia_del_sur,willis).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_georgia_del_sur,negras).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(georgia_del_sur,aurora).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(georgia_del_sur,clerke).

%Ciudades de islas Sandwich del sur
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_sandwich_del_sur,traverse).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_sandwich_del_sur,candelarias).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_sandwich_del_sur,centrales).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_sandwich_del_sur,tule_del_sur).

%Ciudades de Islas Malvinas-Gran Bretaña
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_malvinas_gran_bretania,rasa_del_oeste).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_malvinas_gran_bretania,beauchene).
ciudad(null):-datosIniciales(america,sudamerica ,ingles),lugar(islas_malvinas_gran_bretania,soledad).



%Ciudades de Republica Dominicana
ciudad(azua_de_compostela):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,sur,azua).
ciudad(neiba):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,sur,bahoruco).
ciudad(santa_cruz_de_barahona):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,sur,barahona).
ciudad(comendador):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,sur,elias_pinia).
ciudad(jimani):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,sur,independencia).
ciudad(pedernales):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,sur,pedernales).
ciudad(bani):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,sur,peravia).
ciudad(san_cristobal):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,sur,san_cristobal).
ciudad(san_jose_de_ocoa):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,sur,san_jose_de_ocoa).
ciudad(san_juan):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,sur,san_juan).

ciudad(dajabon):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao,dajabon).
ciudad(san_francisco_de_macoris):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao,duarte).
ciudad(moca):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao,espaillat).
ciudad(salcedo):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao,hermanas_mirabal).
ciudad(concepcion_de_la_vega):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao,la_vega).
ciudad(nagua):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao,maria_trinidad_sanchez).
ciudad(bonao):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao,monsenior_nouel).
ciudad(san_fernando_de_monte_cristi):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao,monte_cristi).
ciudad(san_felipe_de_puerto_plata):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao, puerto_plata).
ciudad(santa_barbara_de_samana):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao,samana).
ciudad(cotui):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao,sanchez_ramirez).
ciudad(santiago_de_los_caballeros):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao,santiago).
ciudad(san_ignacio_de_sabaneta):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao,santiago_rodriguez).
ciudad(san_ignacio_de_sabane):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,cibao,valverde).

ciudad(santo_domingo_de_guzman):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,este,distrito_nacional).
ciudad(santa_cruz_de_el_seibo):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,este,el_seibo).
ciudad(hato_mayor_del_rey):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,este,hato_mayor).
ciudad(salvaleon_de_higuey):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,este,la_altagracia).
ciudad(la_romana):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,este,la_romana).
ciudad(monte_plata):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,este,monte_plata).
ciudad(san_pedro_de_macorís):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,este,san_pedro_de_macoris).
ciudad(santo_domingo_este):-datosIniciales(america,antillas,espaniol,republica_dominicana),lugar(republica_dominicana,este,santo_domingo).



%Ciudades de Antigua y Barbuda
ciudad(piggotts):-datosIniciales(america,antillas,ingles, antigua_y_barbuda),lugar(antigua_y_barbuda,saint_george).
ciudad(saint_johns):-datosIniciales(america,antillas,ingles, antigua_y_barbuda),lugar(antigua_y_barbuda,saint_john).
ciudad(bolands):-datosIniciales(america,antillas,ingles, antigua_y_barbuda),lugar(antigua_y_barbuda,saint_mary).
ciudad(nelsons):-datosIniciales(america,antillas,ingles, antigua_y_barbuda),lugar(antigua_y_barbuda,saint_paul).
ciudad(dockyard):-datosIniciales(america,antillas,ingles, antigua_y_barbuda),lugar(antigua_y_barbuda,saint_peter).
ciudad(carlisle):-datosIniciales(america,antillas,ingles, antigua_y_barbuda),lugar(antigua_y_barbuda,saint_philip).

%Ciudades de Trinidad y Tobago
ciudad(couva):-datosIniciales(america,antillas,ingles, trinidad_y_tobago),lugar(trinidad_y_tobago,couva_tabaquite_talparo).
ciudad(petit_valley):-datosIniciales(america,antillas,ingles, trinidad_y_tobago),lugar(trinidad_y_tobago,diego_martin).
ciudad(penal):-datosIniciales(america,antillas,ingles, trinidad_y_tobago),lugar(trinidad_y_tobago,penal_debe).
ciudad(princes_town):-datosIniciales(america,antillas,ingles, trinidad_y_tobago),lugar(trinidad_y_tobago,princes_town).
ciudad(rio_claro):-datosIniciales(america,antillas,ingles, trinidad_y_tobago),lugar(trinidad_y_tobago,rio_claro_mayaro).
ciudad(aranguez):-datosIniciales(america,antillas,ingles, trinidad_y_tobago),lugar(trinidad_y_tobago,san_juan_lavantille).
ciudad(sangre_grande):-datosIniciales(america,antillas,ingles, trinidad_y_tobago),lugar(trinidad_y_tobago,sangre_grande).
ciudad(siparia):-datosIniciales(america,antillas,ingles, trinidad_y_tobago),lugar(trinidad_y_tobago,siparia).
ciudad(tunapuna):-datosIniciales(america,antillas,ingles, trinidad_y_tobago),lugar(trinidad_y_tobago,tunapuna).
ciudad(scarborough):-datosIniciales(america,antillas,ingles, trinidad_y_tobago),lugar(trinidad_y_tobago,autonoma_de_tobago).

%Ciudades de Bahamas
ciudad(mason_bay):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,acklins).
ciudad(berry_islands):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,islas_berry).
ciudad(alice_town):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,bimini).
ciudad(black_point):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,black_point).
ciudad(the_bight):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,isla_cat).
ciudad(marsh_harbour):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,central_abaco).
ciudad(fresh_creek):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,central_andros).
ciudad(governors_harbour):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,central_ekeuthera).
ciudad(freeport):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,cuidad_de_freeport).
ciudad(moss_town):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,isla_de_crooked).
ciudad(high_rock):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,east_grand_bahama).
ciudad(null):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,exuma).
ciudad(abaco):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,cayo_grande).
ciudad(eleuthera):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,isla_harbour).
ciudad(abaco):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,hope_town).
ciudad(matthew_town):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,inagua).
ciudad(clarence_town):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,isla_larga).
ciudad(andros):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,cayo_mangrove).
ciudad(abrahams_bay):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,mayaguana).
ciudad(abaco):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,isla_de_moore).
ciudad(coopers_town):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,abaco_norte).
ciudad(nicholls_town):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,andros_norte).
ciudad(upper_bogue):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,eleuthera_norte).
ciudad(george_town):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,isla_ragged).
ciudad(cockburn_town):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,cayo_rum).
ciudad(null):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,san_salvador).
ciudad(sandy_point):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,abaco_sur).
ciudad(kemps_bay):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,andros_sur).
ciudad(rock_sound):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,ekeuthera_sur).
ciudad(lower_bogue):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,spanish_wells_eleuthera).
ciudad(eight_mile_rock):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,west_grand_bahama).
ciudad(nassau):-datosIniciales(america,antillas,ingles, bahamas),lugar(bahamas,nueva_providencia).

%Ciudades de Barbados
ciudad(oistins):-datosIniciales(america,antillas,ingles, barbados),lugar(barbados,christ_church).
ciudad(belleplaine):-datosIniciales(america,antillas,ingles,barbados),lugar(barbados,saint_andrew).
ciudad(the_glebe):-datosIniciales(america,antillas,ingles,barbados),lugar(barbados,saint_george).
ciudad(holetown):-datosIniciales(america,antillas,ingles,barbados),lugar(barbados,saint_james).
ciudad(john):-datosIniciales(america,antillas,ingles,barbados),lugar(barbados,saint_john).
ciudad(bathsheba):-datosIniciales(america,antillas,ingles,barbados),lugar(barbados,saint_joseph).
ciudad(checker_hall):-datosIniciales(america,antillas,ingles,barbados),lugar(barbados,saint_lucy).
ciudad(bridgetown):-datosIniciales(america,antillas,ingles,barbados),lugar(barbados,saint_michael).
ciudad(speighstown):-datosIniciales(america,antillas,ingles,barbados),lugar(barbados,saint_peter).
ciudad(six_cross_roads):-datosIniciales(america,antillas,ingles,barbados),lugar(barbados,saint_philip).
ciudad(sturges):-datosIniciales(america,antillas,ingles,barbados),lugar(barbados,saint_thomas).

%Ciudades de Cuba
ciudad(pinar_del_rio):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,pinar_del_rio).
ciudad(artemisa):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,artemisa).
ciudad(la_habana):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,la_habana).
ciudad(san_jose_de_las_lajas):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,mayabeque).
ciudad(matanzas):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,matanzas).
ciudad(cienfuegos):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,cienfuegos).
ciudad(santa_clara):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,villa_clara).
ciudad(sancti_spiritus):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,sancti_spiritus).
ciudad(ciego_de_avila):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,ciego_de_avila).
ciudad(camaguey):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,camaguey).
ciudad(las_tunas):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,las_tunas).
ciudad(bayamo):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,granma).
ciudad(holguin):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,holguin).
ciudad(santiago_de_cuba):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,santiago_de_cuba).
ciudad(guantanamo):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,guantanamo).
ciudad(nueva_gerona):-datosIniciales(america,antillas,espaniol,cuba),lugar(cuba,municipio_especial_isla_de_la_juventud).

%Ciudades de Dominica
ciudad(wesley):-datosIniciales(america,antillas,ingles,dominica),lugar(dominica,saint_andrew).
ciudad(rosalie):-datosIniciales(america,antillas,ingles,dominica),lugar(dominica,saint_david).
ciudad(roseau):-datosIniciales(america,antillas,ingles,dominica),lugar(dominica,saint_george).
ciudad(portmouth):-datosIniciales(america,antillas,ingles,dominica),lugar(dominica,saint_john).
ciudad(saint_joseph):-datosIniciales(america,antillas,ingles,dominica),lugar(dominica,saint_joseph).
ciudad(pointe_michel):-datosIniciales(america,antillas,ingles,dominica),lugar(dominica,saint_luke).
ciudad(soufriere):-datosIniciales(america,antillas,ingles,dominica),lugar(dominica,saint_mark).
ciudad(grand_bay):-datosIniciales(america,antillas,ingles,dominica),lugar(dominica,saint_patrick).
ciudad(pont_cassé):-datosIniciales(america,antillas,ingles,dominica),lugar(dominica,saint_paul).
ciudad(colihaut):-datosIniciales(america,antillas,ingles,dominica),lugar(dominica,saint_peter).

%Ciudades de San Vicente y las Granadinas
ciudad(georgetown):-datosIniciales(america,antillas,ingles_espaniol,san_vicente_y_las_granadinas),lugar(san_vicente_y_las_granadinas,carlota).
ciudad(port_elizabeth):-datosIniciales(america,antillas,ingles_espaniol,san_vicente_y_las_granadinas),lugar(san_vicente_y_las_granadina,granadinas).
ciudad(layou):-datosIniciales(america,antillas,ingles_espaniol,san_vicente_y_las_granadinas),lugar(san_vicente_y_las_granadinas,san_andres).
ciudad(chateaubelair):-datosIniciales(america,antillas,ingles_espaniol,san_vicente_y_las_granadinas),lugar(san_vicente_y_las_granadinas,san_david).
ciudad(kingstiwn):-datosIniciales(america,antillas,ingles_espaniol,san_vicente_y_las_granadinas),lugar(san_vicente_y_las_granadinas,san_jorge).
ciudad(barraoallie):-datosIniciales(america,antillas,ingles_espaniol,san_vicente_y_las_granadinas),lugar(san_vicente_y_las_granadinas,san_patricio).

%Ciudades de Haiti
ciudad(cabo_haitiano):-datosIniciales(america,antillas,frances,haiti),lugar(haiti,norte).
ciudad(gonaives):-datosIniciales(america,antillas,frances,haiti),lugar(haiti,artibonito).
ciudad(hincha):-datosIniciales(america,antillas,frances,haiti),lugar(haiti,centro).
ciudad(jérémie):-datosIniciales(america,antillas,frances,haiti),lugar(haiti,grand_anse).
ciudad(miragoane):-datosIniciales(america,antillas,frances,haiti),lugar(haiti,nippes).
ciudad(fort_liberte):-datosIniciales(america,antillas,frances,haiti),lugar(haiti,noreste).
ciudad(port_de_paix):-datosIniciales(america,antillas,frances,haiti),lugar(haiti,noroeste).
ciudad(puerto_principe):-datosIniciales(america,antillas,frances,haiti),lugar(haiti,oeste).
ciudad(jacmel):-datosIniciales(america,antillas,frances,haiti),lugar(haiti,sudeste).
ciudad(los_cayos):-datosIniciales(america,antillas,frances,haiti),lugar(haiti,sur).

%Ciudades de Santa Lucia
ciudad(anse_la_raye):-datosIniciales(america,antillas,ingles,santa_lucia),lugar(santa_lucia,anse_laraye).
ciudad(castries):-datosIniciales(america,antillas,ingles,santa_lucia),lugar(santa_lucia,castries).
ciudad(choiseul):-datosIniciales(america,antillas,ingles,santa_lucia),lugar(santa_lucia,choiseul).
ciudad(dauphin):-datosIniciales(america,antillas,ingles,santa_lucia),lugar(santa_lucia,dauphin).
ciudad(dennery):-datosIniciales(america,antillas,ingles,santa_lucia),lugar(santa_lucia,dennery).
ciudad(gros_islet):-datosIniciales(america,antillas,ingles,santa_lucia),lugar(santa_lucia,gros_islet).
ciudad(laborie):-datosIniciales(america,antillas,ingles,santa_lucia),lugar(santa_lucia,laborie).
ciudad(micoud):-datosIniciales(america,antillas,ingles,santa_lucia),lugar(santa_lucia,micoud).
ciudad(praslin):-datosIniciales(america,antillas,ingles,santa_lucia),lugar(santa_lucia,praslin).
ciudad(soufriere):-datosIniciales(america,antillas,ingles,santa_lucia),lugar(santa_lucia,soufriere).
ciudad(vieux_fort):-datosIniciales(america,antillas,ingles,santa_lucia),lugar(santa_lucia,vieux_fort).

%Ciudades Jamaica
ciudad(lucea):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,cornwall,hanover).
ciudad(black_river):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,cornwall,saint_elizabeth).
ciudad(montego_bay):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,cornwall,saint_james).
ciudad(falmouth):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,cornwall,trelaway).
ciudad(savanna_la_mar):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,cornwall,westmoreland).
ciudad(may_den):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,middlesex,clarendon).
ciudad(mandeville):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,middlesex,manchester).
ciudad(saint_ann_bay):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,middlesex,saint_ann).
ciudad(spanish_town):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,middlesex,saint_catherine).
ciudad(port_maia):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,middlesex,saint_mary).
ciudad(kingston):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,surrey,kingston).
ciudad(port_antonio):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,surrey,portland).
ciudad(hal_way_tree):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,surrey,saint_andrew).
ciudad(morant_bay):-datosIniciales(america,antillas,ingles,jamaica),lugar(jamaica,surrey,saint_thomas).

%Ciudades de San Cristobal y nieves
ciudad(nichola_town):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,san_cristobal,christ_church_nichola_town).
ciudad(sandy_point_town):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,san_cristobal,saint_anne_sandy_point).
ciudad(basseterre):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,san_cristobal,saint_george_basseterre).
ciudad(dieppe_bay_town):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,san_cristobal,saiont_john_capisterre).
ciudad(cayon):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,san_cristobal,saint_mary_cayon).
ciudad(saint_paul_capisterre):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,san_cristobal,saint_paul_capisterre).
ciudad(monkey_hil):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,san_cristobal,saint_peter_basseterre).
ciudad(middle_island):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,san_cristobal,saint_thomas_middle_island).
ciudad(palmetto_point):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,san_cristobal,trinity_palmetto_point).
ciudad(market_shop):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,nieves,saint_george_gingerland).
ciudad(newcastle):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,nieves,saint_james_windward).
ciudad(church_ground):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,nieves,saint_john_figtree).
ciudad(charlestown):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,nieves,saint_paul_charlestown).
ciudad(cotton_ground):-datosIniciales(america,antillas,ingles,san_cristobal_y_nieves),lugar(san_cristobal_y_nieves,nieves,saint_thomas_lowland).

%Ciudades de Puerto Rico
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, san_juan, san_juan).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, san_juan, guaynabo).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, san_juan, aguas_buenas).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, bayamon, bayamon).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, bayamon, catano).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, bayamon, guaynabo).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, bayamon, toa_baja).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, bayamon, toa_alta).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, arecibo, arecibo).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, arecibo, barceloneta).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, arecibo, camuy).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, arecibo, ciales).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, arecibo, dorado).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, arecibo, florida).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, arecibo, hatillo).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, arecibo, manati).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, arecibo, morovis).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, arecibo, quebradillas).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, arecibo, vega_alta).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, arecibo, vega_baja).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, aguadilla, aguada).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, aguadilla, aguadilla).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, aguadilla, anasco).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, aguadilla, cabo_rojo).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, aguadilla, hormigueros).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, aguadilla, isabela).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, aguadilla, las_marias).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, aguadilla, mayaguez).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, aguadilla, moca).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, aguadilla, rincon).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, aguadilla, san_german).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, aguadilla, san_sebastian).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, ponce, adjuntas).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, ponce, guanica).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, ponce, guanayilla).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, ponce, jayuya).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, ponce, lajas).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, ponce, lares).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, ponce, maricao).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, ponce, panuelas).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, ponce, ponce).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, ponce, sabana_grande).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, ponce, utuado).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, ponce, yauco).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, ponce, juana_diaz).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, arroyo).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, aibonito).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, barranquitas).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, cayey).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, cidra).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, coamo).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, comerio).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, corozal).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, guayama).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, juana_diaz).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, naranjito).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, orocoviz).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, salinas).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, santa_isabel).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, guayama, villalba).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, humacao, caguas).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, humacao, gurabo).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, humacao, humacao).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, humacao, juncos).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, humacao, las_piedras).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, humacao, maunabo).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, humacao, naguabo).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, humacao, patillas).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, humacao, san_lorenzo).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, humacao, yabucoa).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, carolina, canovanas).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, carolina, carolina).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, carolina, ceiba).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, carolina, culebra).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, carolina, fajardo).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, carolina, loiza).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, carolina, luquillo).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, carolina, rio_grande).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, carolina, trujillo_alto).
ciudad(null):-datosIniciales(america, antillas, espaniol, puerto_rico), lugar(puerto_rico, carolina, vieques).





continente(C):- pregunta(continente, C).
continente(C, L):- menuPregunta(continente, C, L).
ubicacion(U):- pregunta(ubicacion, U).
ubicacion(U, L):- menuPregunta(ubicacion, U, L).
idioma(I):- pregunta(idioma, I).
idioma(I, L):- menuPregunta(idioma, I, L).
pais(P):- pregunta(pais, P).
pais(P, L):-menuPregunta(pais, P, L).
pais(centroamerica, espaniol, P):-
  pais(P, [salvador, honduras, costa_rica, nicaragua, panama, guatemala]).
pais(sudamerica,espaniol, P):-
  pais(P, [argentina ,bolivia, chile,colombia, ecuador, paraguay, peru, uruguay, venezuela]).
pais(antillas, ingles, P):-
  pais(P, [antigua_y_barbuda, trinidad_y_tobago, bahamas, barbados, dominica, jamaica, santa_lucia, san_cristobal_y_nieves]).
pais(antillas, espaniol, P):-
  pais(P, [cuba, republica_dominicana, puerto_rico]).
pais(antillas, ingles_espaniol, P):-
  pais(P, [san_vicente_y_las_granadinas]).
pais(antillas, frances, P):-
  pais(P, [haiti]).
region(R):- pregunta(region, R).
region(R, L):- menuPregunta(region, R, L).
regiones(R, L):-menuPregunta(regiones, R, L).
estado(E):- pregunta(estado, E).
estado(E, L):- menuPregunta(estado, E, L).
canton(C):- pregunta(canton, C).
canton(C, L):- menuPregunta(canton, C, L).
division(D):- pregunta(division, D).
division(D, L):- menuPregunta(division, D, L).
provincia(P):- pregunta(provincia, P).
provincia(P, L):- menuPregunta(provincia, P, L).
departamento(ED):-pregunta(departamento, ED).
departamento(ED, L):-menuPregunta(departamento, ED, L).
territorio(T):- pregunta(territorio, T).
territorio(T, L):- menuPregunta(territorio, T, L).
municipio(M, L):-menuPregunta(municipio, M, L).
zona(Z):-pregunta(zona, Z).
zona(Z, L):-menuPregunta(zona, Z, L).
parroquias(P, L):-menuPregunta(parroquias, P, L).
distrito(D, L):-menuPregunta(distrito, D, L).
condado(C):-pregunta(condado,C).
condado(C,L):-menuPregunta(condado, C, L).
isla(I):-pregunta(isla,I).
isla(I,L):-menuPregunta(isla,I,L).
cantones(C):-pregunta(cantones, C).
cantones(C,L):-menuPregunta(cantones, C, L).


pertenece(E, L):- L=[E|_].
pertenece(E, [_|T]):- pertenece(E, T).

pregunta(A, V):- known(cierto, A, V), !.
pregunta(A, V):- known(_, A, V), !, fail.
pregunta(A, _):- known(cierto, A, _), !, fail.
pregunta(A, V):- write(A:V), write('? (cierto o falso): '), read(R), asserta(known(R, A, V)), R = cierto.

menuPregunta(A, V, _):- known(cierto, A, V), !.
menuPregunta(A, _, _):- known(cierto, A, _), !, fail.
menuPregunta(A, VP, M):- nl, write('Elija el valor para '), write(A), write('?'), nl,  despliegaMenu(M),
						 write('Ingrese el valor elegido> '), read(N), nl, eligeOpcion(N, VR, M),
						 asserta(known(cierto, A, VR)), VP = VR.

despliegaMenu(M):- despliegaOpcion(1, M), !.

despliegaOpcion(_, []).
despliegaOpcion(N, [O|R]):- write(N), write(' : '), write(O), nl, NN is N + 1, despliegaOpcion(NN, R).

eligeOpcion(N, V, M):- integer(N), opcion(1, N, V, M), !.
eligeOpcion(V, V, _).

opcion(_, _, ninguna_de_las_anteriores, []).
opcion(N, N, O, [O|_]).
opcion(C, N, V, [_|R]):- SC is C + 1, opcion(SC, N, V, R).







