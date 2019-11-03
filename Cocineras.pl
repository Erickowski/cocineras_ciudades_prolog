platillo:-identifica.
identifica:- retractall(known(_, _, _)), nacional(P), write('El platillo es de '), write(P), nl.
identifica:- write('No puedo identificar el platillo de la cocinera'), nl.

datosIniciales(C):- cocinera(CE, [estado_de_mexico, michoacan, chiapas, veracruz, jalisco]), CE == C.

nacional(estado_de_mexico):- datosIniciales(estado_de_mexico), arbol_decision_estado_de_mexico(A), arbol_platillo_estado_de_mexico(A, P),
        nl, write('El platillo es:'), receta(P,LR), imprimeLista(LR),
        nl, write('INGREDIENTES:'), nl, ingredientes(P, LI), imprimeLista(LI),
        nl, write('HERRAMIENTAS:'), nl, herramientas(P, LH), imprimeLista(LH),
        nl, write('PREPARACION:'), nl, preparacion(P, LN), imprimeLista(LN).
nacional(michoacan):- datosIniciales(michoacan), arbol_decision_michoacan(A), arbol_platillo_michoacan(A, P),
        nl, write('El platillo es:'), receta(P,LR), imprimeLista(LR),
        nl,write('INGREDIENTES:'), nl, ingredientes(P, LI), imprimeLista(LI),
        nl, write('HERRAMIENTAS:'), nl, herramientas(P, LH), imprimeLista(LH),
        nl,write('PREPARACION:'), nl, preparacion(P, LN), imprimeLista(LN).
nacional(chiapas):- datosIniciales(chiapas), arbol_decision_chiapas(A), arbol_platillo_chiapas(A, P),
        nl, write('El platillo es:'), receta(P,LR), imprimeLista(LR),
        nl,write('INGREDIENTES:'), nl, ingredientes(P, LI), imprimeLista(LI),
        nl, write('HERRAMIENTAS:'), nl, herramientas(P, LH), imprimeLista(LH),
        nl, write('PREPARACION:'), nl, preparacion(P, LN), imprimeLista(LN).
nacional(veracruz):- datosIniciales(veracruz), arbol_decision_veracruz(A), arbol_platillo_veracruz(A, P),
        nl, write('El platillo es:'), receta(P,LR), imprimeLista(LR),
         nl,write('INGREDIENTES:'), nl, ingredientes(P, LI), imprimeLista(LI),
         nl,write('HERRAMIENTAS:'), nl, herramientas(P, LH), imprimeLista(LH),
         nl,write('PREPARACION:'), nl, preparacion(P, LN), imprimeLista(LN).
nacional(jalisco):- datosIniciales(jalisco), arbol_decision_jalisco(A), arbol_platillo_jalisco(A, P),
        nl, write('El platillo es:'), receta(P,LR), imprimeLista(LR),
         nl,write('INGREDIENTES:'), nl, ingredientes(P, LI), imprimeLista(LI),
         nl,write('HERRAMIENTAS:'), nl, herramientas(P, LH), imprimeLista(LH),
        nl, write('PREPARACION:'), nl, preparacion(P, LN), imprimeLista(LN).

cocinera(C):- pregunta(cocinera, C).
cocinera(C, L):- menuPregunta(cocinera, C, L).

pertenece(E, L):- L=[E|_].
pertenece(E, [_|T]):- pertenece(E, T).

pregunta(A, V):- known(cierto, A, V), !.
pregunta(A, V):- known(_, A, V), !, fail.
pregunta(A, _):- known(cierto, A, _), !, fail.
pregunta(A, V):- write(A:V), write('? (cierto o falso): '), read(R), asserta(known(R, A, V)), R = cierto.

menuPregunta(A, V, _):- known(cierto, A, V), !.
menuPregunta(A, _, _):- known(cierto, A, _), !, fail.
menuPregunta(A, VP, M):- nl, write('Elija el estado de la '), write(A), write('?'), nl,  despliegaMenu(M),
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

es_cierto(Q):- format("¿~w?:\n", [Q]), read(cierto).
es_falso(Q):-  format("¿~w?:\n", [Q]), read(falso).

receta(pambazo,[pambazo]).
receta(guajolota,[guajolota]).
receta(queso_fundido_con_chorizo,[queso_fundido_con_chorizo]).
receta(tacos_de_papa_con_chorizo,[tacos_de_papa_con_chorizo]).
receta(pancita,[pancita]).
receta(barbacoa,[barbacoa]).
receta(sopa_tarasca,[sopa_tarasca]).
receta(sopa_fria_de_aguacate,[sopa_fria_de_aguacate]).
receta(caldo_michi,[caldo_michi]).
receta(pescado_blanco_de_patzcuaro,[pescado_blanco_de_patzcuaro]).
receta(corundas_y_uchepos,[corundas_y_uchepos]).
receta(carnitas,[carnitas]).
receta(picte_de_elote,[picte_de_elote]).
receta(tamal_de_maiz,[tamal_de_maiz]).
receta(caldo_de_sihuamonte,[caldo_de_sihuamonte]).
receta(caldo_de_shuti,[caldo_de_shuti]).
receta(cerdo_en_salsa_verde_con_acelgas,[cerdo_en_salsa_verde_con_acelgas]).
receta(ninguijuti,[ninguijuti]).
receta(vuelve_a_la_vida,[vuelve_a_la_vida]).
receta(camarones_al_coco,[camarones_al_coco]).
receta(chilpachole_de_jaiba,[chilpachole_de_jaiba]).
receta(cazuela_de_jaiba_y_mariscos,[cazuela_de_jaiba_y_mariscos]).
receta(arroz_a_la_tumbada,[arroz_a_la_tumbada]).
receta(pescado_a_la_veracruzana,[pescado_a_la_veracruzana]).
receta(torta_ahogada,[torta_ahogada]).
receta(pozole,[pozole]).
receta(birria,[birria]).
receta(carne_en_su_jugo,[carne_en_su_jugo]).
receta(jericalla,[jericalla]).
receta(nieves_de_garrafa,[nieves_de_garrafa]).

ingredientes(pambazo, [ajo, cebolla, sal, jitomate, pan_telera, longaniza, pure_de_papa,chile_guajillo, queso_panela, crema, lechuga, aceite_vegetal]).
ingredientes(guajolota, [bolillo,harina_para_tamales_,manteca,polvo_para_hornear,hoja_de_maiz, cebolla, sal, jitomate, chile_verde, pollo, crema]).
ingredientes(queso_fundido_con_chorizo, [queso,chorizo, cebolla, sal, jitomate,chile_guajillo, crema, lechuga, aceite_vegetal]).
ingredientes(tacos_de_papa_con_chorizo, [chorizo, cebolla, sal, jitomate, pan_telera, longaniza, pure_de_papa,chile_guajillo, queso_panela, crema, lechuga, aceite_vegetal]).
ingredientes(pancita,[ajo, cebolla, chile_ancho, chile_pasilla, panza_de_res, epazote, jitomate,sal, agua]).
ingredientes(barbacoa,[manteca_de_cerdo, jugo_de_naranja, agua, refresco_de_naranja, sal_de_grano, pimienta_gorda, hierbas_de_olor, carne_o_visceras_de_cerdo]).
ingredientes(sopa_tarasca,[aceite_de_maíz, cebolla_grande, dientes_de_ajo, puré_de_jitomate, litros_de_agua, hojas_de_laurel, ramitas_de_tomillo, ramitas_de_mejorana, caldo_de_pollo_en_polvo, pimienta_negra, chiles_pasilla, tortillas_en_tiritas_y_fritas, queso_fresco_cortado_en_tiras, crema, epazote]).
ingredientes(sopa_fria_de_aguacate,[agua, caldo_de_pollo, jugo_de_limón, crema_light, aguacates, perejil,sal]).
ingredientes(caldo_michi,[cucharadas_de_aceite_de_maíz, jitomate,cebolla_en_trozos, zanahoria,calabacita_rebanada, chiles_güeros_enteros, cilantro, orégano_fresco, sal_al_gusto, agua, bagre, carpa_amarilla_o_guachinango]).
ingredientes(pescado_blanco_de_patzcuaro,[pescados_blancos_de_pátzcuaro, jugo_de_limón, sal_y_pimienta_al_gusto, harina, huevos_separados, aceite_de_maíz, lechuga_orejona, cebolla, jitomate, limón]).
ingredientes(corundas_y_uchepos,[masa_de_maíz, agua, manteca_de_cerdo, polvo_para_hornear, sal_al_gusto, hojas_de_milpa_fresca, chiles_poblanos, rojos_o_verdes, diente_de_ajo, cebolla, puré_de_jitomate, crema, caldo_de_pollo_en_polvo]).
ingredientes(carnitas,[manteca_de_cerdo, naranjas_para_jugo, agua, refresco_de_naranja, sal_de_grano_al_gusto, pimienta_gorda, hierbas_de_olor_frescas, carne_o_vísceras_de_cerdo]).
ingredientes(picte_de_elote,[elotes_macizos_con_hojas, manteca, mantequilla, azúcar, sal]).
ingredientes(tamal_de_maiz,[maíz_blanco,dientes_de_ajos, cebolla, ají_panca_molido, manteca, sal_y_pimienta,pollo_picado, agua, leche_evaporada, pancas_de_choclo_pasadas_por_agua_hirviendo_para_ablandarlas, huevos_duros, aceitunas]).
ingredientes(caldo_de_sihuamonte,[conejo, masa_de_maíz, aceite, clavos, chiles_cuaresmeños, dientes_de_ajo_pelados, jitomates, papas_medianas_peladas_en_cuadritos, cebolla_chica, chile_ancho, epazote, pimientas_chicas, sal]).
ingredientes(caldo_de_shuti,[shuti, caracol_de_río,tomate, pepita_de_calabaza_dorada, agua_con_sal, chiles_anchos_remojados, cebolla,hoja_santa]).
ingredientes(cerdo_en_salsa_verde_con_acelgas,[cerdo_en_cubos, costillas_de_cerdo_en_trozos,tomate_verde, dientes_ajo, cilantro, chiles_serranos, sal_de_grano, agua, aceite_vegetal,papas_peleadas_en_cubos, acelgas_y_en_juliana]).
ingredientes(ninguijuti,[carne_de_puerco, espinazo_de_puerco, masa, dientes_de_ajo, achiote, tomates, limones, chile_picante, sal]).
ingredientes(vuelve_a_la_vida,[camarón,pulpa_de_jaiba, ostión, jitomate, cebolla, salsas_catsup, picante, jugo_de_limon,oregano,sal]).
ingredientes(camarones_al_coco,[queso, crema, como_rayado, pan_molido, mango, vainilla, vino_blanco, frijoles,chile_chipotle, salsa_inglesa, huevo, aceite_vegetal]).
ingredientes(chilpachole_de_jaiba,[chile_de_chilpaya, tomate, masa, jaiba, chiles_guajillos, cebolla, dientes_de_ajo, concentrado_de_camarón, sal, pimienta, papas]).
ingredientes(cazuela_de_jaiba_y_mariscos,[mariscos, jaiba, acamayas, camarones, pulpo, calamar, robalo, ostion,tomate,cebolla, ajo,chile,epazote,conzome]).
ingredientes(arroz_a_la_tumbada,[arroz, cebolla,mariscos,pulpo,jaiba,ajo, picante,pimienta,comino,jitomate,sal, aceite, pimienta,mantequilla]).
ingredientes(pescado_a_la_veracruzana,[pescado,mantequilla, salsa_de_tomate,pimiento_morron,aceitunas,alcaparras,arroz,sal, aceite,comino, chiles_verdes,perejil]).
ingredientes(torta_ahogada,[bolillo,carne_de_cerdo,frijoles,cebolla,jitomale,sal,ajo,oregano,chile_de_arbol,vinagre]).
ingredientes(pozole,[maiz,ajo,cebolla,chile_guajillo,chiles_anchos,carne_de_cerdo,lechuga,rabanos, sal, pimienta,tostadas]).
ingredientes(birria,[carne_de_res,tomates,jitomate,chiles_de_arbol,hojas_de_laurel,oregano_cebolla, ajo, sal]).
ingredientes(carne_en_su_jugo,[carne_de_res,tocino,tomatillos_verdes,ajo,chiles_verdes_serranos,cebolla,cilantro,cubo_de_calso_de_pollo,frijol,sal,aceite,cebolla_cambray]).
ingredientes(jericalla,[leche,canela,azucar,huevos,vainilla]).
ingredientes(nieves_de_garrafa,[agua,leche,azucar,saborizantes_naturales,nueces, licores,hielo,grano_de_sal]).

herramientas(pambazo,[estufa, comal, licuadora, sarten, cuchillo, cucharas, papel_absorbente]).
herramientas(guajolota, [bracero, olla_para_tamales, pinzas, cuchara, cuhillo]).
herramientas(queso_fundido_con_chorizo,[estufa, sarten, cuchillo, palita, cuchara, volteador,tabla_para_picar]).
herramientas(tacos_de_papa_con_chorizo, [comal,estufa,sarten,cochara,volteador,cuchillo,tabla_para_picar]).
herramientas(pancita,[estufa, olla_grande, cuchillo, molcajete, cuchara, sarten]).
herramientas(barbacoa,[estufa,olla,cuchillo,tabla_para_picar,cuchara,sarten,molcajete]).
herramientas(sopa_tarasca,[estufa, cuchillo, caserola, licuadora, cucharas, recipientes]).
herramientas(sopa_fria_de_aguacate,[cazuela, estufa, licuadora, cuchillo, cucharas, recipientes, refrijerador]).
herramientas(caldo_michi,[estufa, cazuela, sarten, cuchillo, cuchara]).
herramientas(pescado_blanco_de_patzcuaro,[estufa, batidora, sarten, cuchillo, voletador, cuchara]).
herramientas(corundas_y_uchepos,[batidor, vaporera_o_tamalera, taza, cuchara, estufa,cuchillo]).
herramientas(carnitas,[olla_de_cobre, cuchillo, cucharas, pala,cuchillo]).
herramientas(picte_de_elote,[olla, estufa, batidora, cuchara, vaporera]).
herramientas(tamal_de_maiz,[olla, estufa, sarten, cuchara, pala]).
herramientas(caldo_de_sihuamonte,[horno, charola, olla, sarten, estufa, cuchillo, cucharas, licuadora]).
herramientas(caldo_de_shuti,[estufa, licuadora, cuchillo, cuchara, machete, olla, sarten]).
herramientas(cerdo_en_salsa_verde_con_acelgas,[licuadora, estufa, sarten, pala, cucharacuchillo, cucharas]).
herramientas(ninguijuti,[olla, estufa, cuchillo, licuadora, cuchara, volteador]).
herramientas(vuelve_a_la_vida,[copa,cuchara,cuchillo,tabla_de_picar,tenedor,recipiente_con_tapa_refrigerador]).
herramientas(camarones_al_coco,[licuadora, tazon, recipiente_con_tapa, refrigerador, sarten, platon, cuchillo, tapa_para_picar]).
herramientas(chilpachole_de_jaiba,[cacerola,sartén_asar,  licuadora, taza, cuchillo, tabla_de_picar, cuchara, tenedor, estufa]).
herramientas(cazuela_de_jaiba_y_mariscos,[cazuela,taza, cuchillo, tabla_de_picar, cuchara, tenedor, estufa,licuadora,pinzas]).
herramientas(arroz_a_la_tumbada,[estufa,olla,cuchillo,tabla_para_picar,cuchara,cazuela, sarten,pinzas,licuadora,estufa,volteador]).
herramientas(pescado_a_la_veracruzana,[estufa,olla,cuchillo,tabla_para_picar,cuchara,cazuela, sarten,pinzas,licuadora,estufa,volteador,tijeras]).
herramientas(torta_ahogada,[estufa,olla,cuchillo,tabla_para_picar,cuchara,sarten,platon]).
herramientas(pozole,[estufa,olla,cuchillo,tabla_para_picar,sarten,cuchara,sarten,platon]).
herramientas(birria,[olla_grande,sarten,comal,cuchillo,tabla_para_picar,cuchara,estufa,volteador]).
herramientas(carne_en_su_jugo,[sarten,colador,estufa,cuchillo,tabla_para_picar,sarten,cuchara,sarten,platon]).
herramientas(jericalla,[horno,batidor,molde,cuchara]).
herramientas(nieves_de_garrafa,[garrafa, barrica_de_madrea, palita, cuchara, franela]).

preparacion(pambazo,[hierve_los_guajillos_y_ajos, licúa_y_cuela, regresa_a_la_olla_y_sazona, cocer_las_papas_en_suficiente_agua_con_sal_hasta_que_estén_suaves,deja_enfriar_un_poco_y_pela, aplasta_un_poco_las_papas_y_sazona_con_sal, pica_finamente_la_cebolla,en_un_sartén_caliente_sofríe_la_cebolla_con_un_poco_de_aceite, agrega_el_chorizo_desmenuzado, saltea_hasta_que_comience_a_tomar_color, agrega_las_papas_machacadas, sofríe_y_sazona, pasa_el_pan_para_pambazo_por_el_adobo, fríe_en_un_sartén_y_rellena_con_las_papas_con_chorizo, lechuga_y_crema]).
preparacion(guajolota,[hierve_los_guajillos_y_ajos, licúa_y_cuela, regresa_a_la_olla_y_sazona, cocer_las_papas_en_suficiente_agua_con_sal_hasta_que_estén_suaves,deja_enfriar_un_poco_y_pela, aplasta_un_poco_las_papas_y_sazona_con_sal, pica_finamente_la_cebolla,en_un_sartén_caliente_sofríe_la_cebolla_con_un_poco_de_aceite, agrega_el_chorizo_desmenuzado, saltea_hasta_que_comience_a_tomar_color, agrega_las_papas_machacadas, sofríe_y_sazona, pasa_el_pan_para_pambazo_por_el_adobo, fríe_en_un_sartén_y_rellena_con_las_papas_con_chorizo, lechuga_y_crema]).
preparacion(queso_fundido_con_chorizo,[hierve_los_guajillos_y_ajos, licúa_y_cuela, regresa_a_la_olla_y_sazona, cocer_las_papas_en_suficiente_agua_con_sal_hasta_que_estén_suaves,deja_enfriar_un_poco_y_pela, aplasta_un_poco_las_papas_y_sazona_con_sal, pica_finamente_la_cebolla,en_un_sartén_caliente_sofríe_la_cebolla_con_un_poco_de_aceite, agrega_el_chorizo_desmenuzado, saltea_hasta_que_comience_a_tomar_color, agrega_las_papas_machacadas, sofríe_y_sazona, pasa_el_pan_para_pambazo_por_el_adobo, fríe_en_un_sartén_y_rellena_con_las_papas_con_chorizo, lechuga_y_crema]).
preparacion(tacos_de_papa_con_chorizo,[hierve_los_guajillos_y_ajos, licúa_y_cuela, regresa_a_la_olla_y_sazona, cocer_las_papas_en_suficiente_agua_con_sal_hasta_que_estén_suaves,deja_enfriar_un_poco_y_pela, aplasta_un_poco_las_papas_y_sazona_con_sal, pica_finamente_la_cebolla,en_un_sartén_caliente_sofríe_la_cebolla_con_un_poco_de_aceite, agrega_el_chorizo_desmenuzado, saltea_hasta_que_comience_a_tomar_color, agrega_las_papas_machacadas, sofríe_y_sazona, pasa_el_pan_para_pambazo_por_el_adobo, fríe_en_un_sartén_y_rellena_con_las_papas_con_chorizo, lechuga_y_crema]).
preparacion(pancita,[asa_la_cebolla_y_ajo_en_un_sartén_con_un_poco_de_aceite, agrega_los_chiles_y_deja_que_se_asen_bien, agrega_agua_y_deja_cocinar_a_que_suavice_todo, licúa, cuela_y_coloca_en_una_olla, sazona, enjuaga_el_libro_y_el_callo_de_res, corta_en_cubos_medianos_y_cuece_en_una_olla_con_suficiente_agua, epazote, cebolla_blanca_y_la_cabeza_de_ajo_en_mitad, una_vez_cocida_la_panza_agrega_el_adobo_al_caldo, deja_hervir_y_rectifica_sazón]).
preparacion(barbacoa,[hierve_los_guajillos_y_ajos, licúa_y_cuela, regresa_a_la_olla_y_sazona, cocer_las_papas_en_suficiente_agua_con_sal_hasta_que_estén_suaves,deja_enfriar_un_poco_y_pela, aplasta_un_poco_las_papas_y_sazona_con_sal, pica_finamente_la_cebolla,en_un_sartén_caliente_sofríe_la_cebolla_con_un_poco_de_aceite, agrega_el_chorizo_desmenuzado, saltea_hasta_que_comience_a_tomar_color, agrega_las_papas_machacadas, sofríe_y_sazona, pasa_el_pan_para_pambazo_por_el_adobo, fríe_en_un_sartén_y_rellena_con_las_papas_con_chorizo, lechuga_y_crema]).
preparacion(sopa_tarasca,[en_el_aceite_caliente_se_acitronan_la_cebolla_y_el_ajo, se_añade_el_puré_de_jitomate_y_se_fríe_hasta_que_esté_chinito, se_agrega_entonces_el_agua, el_caldo, las_hierbas_de_olor_y_la_pimienta, se_deja_hervir_10_minutos, se_toma_un_poco_de_caldillo_y_con_él_se_licúan_dos_chiles_fritos_y_una_tortilla_frita, se_vierten_en_la_sopa_hirviendo_y_se_deja_hervir_a_fuego_lento_5_minutos_más]).
preparacion(sopa_fria_de_aguacate,[en_una_cazuela_agrega_el_agua_y_el_caldo_de_pollo_hasta_que_hierva,licúa_el_jugo_de_limón, media_crema, aguacates_y_el_perejil_hasta_que_se_incorporen_por_completo, refrigera_la_mezcla_anterior_junto_con_el_caldo_por_2_horas, por_ultimo_saca_del_refrigerador_la_mezcla_sirve, casona_con_sal_y_disfruta_fría]).
preparacion(caldo_michi,[se_pone_a_calentar_el_aceite_y_en_él_se_guisan_las_verduras, se_les_añade_el_agua_y_sal_al_gusto, se_deja_hervir_a_fuego_suave_hasta_que_las_verduras_estén_cocidas, entonces_se_añade_el_pescado_y_se_deja_cocer_unos_minutos_más_hasta_que_esté_suave]).
preparacion(pescado_blanco_de_patzcuaro,[los_pescados_se_lavan_muy_bien, se_secan_y_se_bañan_con_un_poquito_de_jugo_de_limón, se_pasan_por_la_harina_sacudiéndoles_el_exceso_y_se_pasan_por_el_huevo_batido_como_para_capear, primero_las_claras_a_punto_de_turrón, luego_las_yemas_a_punto_de_listón_junto_con_una_cucharada_de_harina_y_se_unen_las_dos_cosas, se_van_friendo_uno_por_uno_hasta_que_estén_doraditos_y_se_escurren_sobre_papel_absorbente]).
preparacion(corundas_y_uchepos,[se_bate_la_masa_con_el_agua_durante_20_minutos, aparte_se_bate_la_manteca_hasta_que_esponje, y_entonces_se_añade_a_la_masa_junto_con_el_polvo_para_hornear_y_la_sal_y_se_sigue_batiendo_hasta_que_al_poner_un_poco_de_masa_en_una_taza_de_agua, flote, se_van_tomando_las_hojas_de_milpa_por_el_lado_más_grueso, se_cubren_con_dos_cucharadas_de_masa_y_se_envuelven_en_forma_triangular, ya_formadas_las_corundas_se_acomodan_en_una_vaporera_o_tamalera_y_se_dejan_cocer_durante_una_hora_o_hasta_que_se_desprendan_fácilmente_de_las_hojas, se_sirven_acompañadas_por_la_salsa,salsa,en_la_manteca_caliente_se_acitronan_las_rajas, la_cebolla_y_el_ajo, se_agrega_el_jitomate_y_se_deja_al_fuego_hasta_que_esté_chinito, se_añade_la_sal_o_el_caldo_de_pollo, el_agua_y_la_crema, y_se_deja_sazonar, cuidando_que_no_hierva, durante_5_minutos]).
preparacion(carnitas,[vierte_la_manteca_en_una_olla_de_cobre, si_es_líquida, debe_estar_fría, enciende_el_fuego_y_agrega_a_la_manteca_el_jugo_de_dos_naranjas, una_vez_que_la_manteca_se_caliente, pero_antes_de_que_hierva, agrega_las_otras_dos_naranjas_en_cuartos, en_cuanto_hierva, agrega_muy_lentamente_el_agua, si_haces_esto_de_golpe_te_salpicará_y_puedes_quemarte, ten_cuidado, incorpora, también, poco_a_poco_el_refresco_de_naranja, que_debe_estar_a_temperatura_ambiente_y_tener_todavía_gas, una_vez_que_hierva_de_nuevo, agrega_la_sal, la_pimienta_y_las_hierbas_y_deja_hervir_unos_minutos, retira_las_hierbas_antes_de_que_se_quemen, incorpora_las_carnes_duras, maciza, costilla_y_cuerito, deja_que_hierva_y_se_comiencen_a_cocinar, a_media_cocción_de_éstas, puedes_agregar_el_buche, la_nana_y_los_riñones, cuidando_mucho_que_se_frían_pero_no_se_quemen, listo, sirve_las_carnitas_con_tortillas_de_maíz, cilantro_picado, cebolla_picada, salsas_y_jugo_de_limón]).
preparacion(picte_de_elote,[se_muelen_los_elotes, se_les_agerga_la_manteca, la_mantequilla, el_azúcar_y_la_sal, se_baten_muy_bien, se_van_poniendo_cucharadas_de_esta_pasta_sobre_las_hojas_de_elote, se_doblan_y_se_van_colocando_paraditas_en_una_vaporera, se_ponen_a_hervir_durante_25_minutos, o_hasta_que_se_desprendan_de_la_hoja]).
preparacion(tamal_de_maiz,[primero_empezamos_poniendo_a_remojar_el_maíz_en_agua_un_día_antes, luego_sacamos_las_puntas_y_licuamos_ponemos_a_freír_los_ajos, la_cebolla_y_el_ají_en_50g_de_manteca_y_sazonamos_con_sal_y_pimienta, incorporamos_el_pollo_picado_y_el_agua_y_dejamos_cocinar_por_15_minutos, luego_en_una_olla_ponemos_a_hervir_la_leche_y_el_resto_de_la_manteca_agregando_el_maíz_molido_y_el_caldo_en_el_que_se_sancochó_el_pollo, dejamos_cocinar_hasta_atamalar_la_mezcla_y_empezamos_a_armar_los_tamales_en_las_pancas_de_choclo_u_hojas_de_plátano, para_hacer_esto_ponemos_un_poco_de_masa, un_pedazo_de_pollo, aceituna_y_huevo_duro, amarramos_formando_los_tamales, una_vez_armado_los_tamales_ponemos_en_el_fondo_de_una_olla_pancas_u_hojas_y_agua_que_los_cubra, encima_colocamos_los_tamales_y_dejamos_cocinar_por_unos_30_minutos_a_fuego_lento]).
preparacion(caldo_de_sihuamonte,[para_cocinar_conejo_al_zihuamonte_hay_que_limpiar_el_conejo, quitarle_las_visceras_y_partirlo_en_piezas_grandes, colocarlas_en_una_charola_sin_grasa_y_meterlas_al_horno_a_que_doren, ya_doradas, cocerlas_con_sal_y_suficiente_agua, al_final, agregar_papas, clavos_y_el_chile_verde_entero, freír_los_ajos_en_una_sartén_con_tres_cucharadas_soperas_de_aceite, retirar, dorar_la_cebolla, agregar_el_tomate_y_el_conejo_cocido, moler_el_chile_ancho_sin_semillas_ni_sin_venas_y_freírlo_con_lo_anterior, agregar_un_poco_de_masa_de_maíz_disuelta_en_caldo_de_conejo, para_espesar, mover_para_evitar_que_se_formen_grumos, añadir_la_rama_de_epazote_y_las_pimientas, dejar_hervir_hasta_que_esté_cocido_el_conejo, se_sirve_caliente, en_platos_hondos]).
preparacion(caldo_de_shuti,[para_preparar_caldo_de_shuti_hay_que_quitarle_la_punta_al_shuti_con_machete_y_ponerlo_a_cocer_con_agua_y_sal_durante_una_hora_aproximadamente, agregar_los_demás_ingredientes_licuados_y_colados_y_hervir_durante_quince_minutos, servir_con_el_shuti_picado_en_trocitos]).
preparacion(cerdo_en_salsa_verde_con_acelgas,[licuamos_los_tomates, la_cebolla, ajo_y_el_cilantro, los_chiles, la_sal_de_grano_con_un_poco_de_agua, reserva, doramos_en_el_aceite_la_carne_por_5_minutos, añade_la_salsa_y_las_papas, tapa_y_deja_hervir_una_vez_cocidas_las_papas, añade_las_acelgas, sazona_con_sal_al_gusto, acompáñalo_con_arroz_blanco]).
preparacion(ninguijuti,[para_preparar_ninguijuti, hay_que_partir_en_trocitos_pequeños_el_espinazo_y_la_carne_de_puerco, cocer_en_poca_agua, retirar_del_caldo_cuando_esté_suave, dorar_en_dos_cucharadas_de_manteca, licuar_tomate, ajos, chile_y_achiote, dejar_caer_sobre_la_carne_frita, agregar_el_caldo, la_masa_batida_y_el_jugo_de_limón, dejando_que_sazone_bien]).
preparacion(vuelve_a_la_vida,[mezcla_todos_los_ingredientes_dentro_de_un_recipiente_con_tapadera,tapalo ,refrigera_durante_por_lo_menos_2_horas,sirve_bien_frío]).
preparacion(camarones_al_coco,[licúa_los_seis_ingredientes_de_la_salsa, desde_el_mango_hasta_la_sal, coloca_los_camarones_en_un_tazón_y_sazónalos_con_jugo_de_limón, sal_y_pimienta_taparlo, marina_dentro_del_refrigerador_durante_15_minutos,pasa_los_camarones_por_la_harina, mójalos_en_el_huevo ,cúbrelos_el_coco_rallado, frie_los_camarones_un_sartén_con_aceite_caliente_hasta_que_se_hayan_dorado, alrededor_de_3_minutos,acomoda_los_camarones_en_un_platón,sin_encimar,báñalos_con_la_salsa_justo_al_momento_de_servir]).
preparacion(vuelve_a_la_vida,[en_una_cacerola_con_agua_hirviendo_hidratar_los_chiles_secos_hasta_que_se_ablanden,en_la_licuadora_moler_los_chiles_junto_con_las_verduras_asadas, un_poco_del_agua_de_los_chiles_para_ayudar_a_moler,en_una_cacerola_con_un_poco_de_aceite_verter_la_salsa, freír, agregar_la_jaiba, sazonar_con_el_concentrado_de_camarón, sal_y_pimienta, rectificar_sazón_al_final_con_sa_y_pimienta]).
preparacion(cazuela_de_jaiba_y_mariscos,[en_una_cacerola_grande_con_un_chorrito_de_aceite_de_oliva_ya_caliente_a_fuego_medio_se_fríen_los_ajos_picados,cuando_estén_de_color_café_claro_se_agrega_la_cebolla_picada, las_rajas_de_chiles_y_el_jitomate_molido_colado, se_deja_cocinando_a_fuego_lento, cuando_cambie_de_color_se_vierten_cinco_tazas_de_agua, una_pizca_de_sal, un_cuarto_de_cucharadita_de_pimienta, media_cucharadita_de_ajo_en_polvo, media_cucharadita_de_cilantro_molido, una_cucharadita_de_caldo_de_pollo_en_polvo, media_cucharadita_de_hojas_de_laurel_y_la_ramita_de_epazote]).
preparacion(arroz_a_la_tumbada,[remoje_el_arroz_en_agua_muy_caliente_durante_15_minutos, lo_lava_y_escurre, fríalo_en_la_mantequilla_y_el_aceite, cuando_esté_a_medio_freír, añada_la_cebolla , déjelo_seguir_friendo, al_momento_que_suene_como_arenita_agregue_el_agua_y_el_jugo_de_limón,cuando_suelte_el_hervor_se_baja_el_fuego_muy_bajito_y_se_tapa_la_cazuela,se_deja_cocer_a_fuego_lento_durante_aproximadamente_20_minutos]).
preparacion(pescado_a_la_veracruzana,[en_una_sartén_grande_calienta_el_aceite_de_oliva, fríe_la_cebolla_y_el_ajo_hasta_que_se_sofrían_y_transparenten, añade_el_jitomate,fríe_por_10_minutos_o_hasta_que_el_jitomate_se_empiece_a_deshacer, agrega_el_perejil_las_alcaparras_las_aceitunas_y_los_chiles_güeros, salpimienta_y_reduce_el_fuego_al_mínimo, mete_los_pescados_a_la_salsa, tapa_y_cocina_por_10_minutos, sirve_con_una_guarnición_de_arroz_blanco]).
preparacion(torta_ahogada,[hierve_los_jitomates_con_la_cebolla_y_el_ajo, cuando_esté_cocido_licúa_junto_con_el_orégano_y_cuela,reserva_caliente, asa_los_chiles_de_árbol, licúa_con_el_vinagre, el_agua_y_la_sal,calienta_las_carnitas, abre_los_panes, rellénalos_con_la_carne_y_baña_el_plato_con_la_salsa_roja, acompaña_con_la_salsa_picosa]).
preparacion(pozole,[cocer_el_maiz,limpia_el_maiz,agrega_la_carne_a_la_olla_y_cocina_durante_1_hora_o_hasta_que_la_carne_esté_bien_suave,sierve_el_jitomate-hasta_que_se_haya_ablandado, remoja_los_chiles_en_agua_caliente_hasta_que_estén_suaves, quítales_las_semillas_y_el_rabo_y_muélelos_junto_con_el_jitomate_sal_orégano_cominos_y_1_diente_de_ajo, cuela, vierte_la_salsa_roja_dentro_de_la_olla_con_el_maíz_y_deja_que_suelte_el_hervor, regresa_la_carne_deshebrada_a_la_olla, rectifica_la_sazón_y_deja_que_hierva_unos_minutos_más_antes_de_servir]).
preparacion(birria,[ponemos_a_cocer_la_carne_de_res_con_una_cebolla_entera,tapamos_y_dejamos_hervir_por_media_hora,pondremos_a_cocer_los_chiles_ya_limpios_guajillos_y_un_poco_de_chiles_colorados_con_media_cebolla, ajo, un_poco_de_clavo,cocemos_todos_los_ingredientes_y_licuamos, después_cocinamos_en_una_pequeña_sartén_un_minuto_y_sazonar_con_un_poco_de_orégano_y_sal,para_servir_podemos_sacar_toda_la_carne_y_picarla, hacer_tacos_o_servir_en_platos_hondos_con_bastanjericallate_caldo, cebolla_picada_y_cilantro]).
preparacion(carne_en_su_jugo,[calienta_un_poco_de_aceite_y_fríe_muy_bien_el_tocino_hasta_que_quede_crujiente,esa_misma_grasa_del_tocino, vacíala_en_la_olla_profunda_donde_comenzaras_a_cocinar_el_caldo, una_vez_engrasada_la_olla_comienza_a_freír_la_carne,cuece_los_tomatillo_los_chiles, en_3_tazas_de_agua,cuela_y_vierte_sobre_la_olla_donde_esta_la_carne_y_agrega_suficiente_agua_para_cubrirla, incorpora_el_cubo_sazonador, tapa_la_olla_y_cocina_a_presión_con_flama_media_y_baja_cuando_comience_a_subir_la_presión]).
preparacion(jericalla,[caliente_el_horno_a_180,bata_los_huevos_con_la_leche_azúcar_y_extracto_de_vainilla, vierta_la_mezcla_en_moldes_refractarios_individuales,coloque_los_moldes_dentro_de_una_charola_de_horno_con_bordes, hornéelos_a_baño_maría_sin_tapar, hasta_que_las_jericallas_estén_cocidas_y_con_las_superficies_ligeramente_doradas,sírvalas_a_temperatura_ambiente_o_frías]).
preparacion(nieves_de_garrafa,[el_espacio_entre_la_garrafa_y_la_barrica_se_rellena_de_hielo_y_sal_de_grano,la_sal_evita_que_se_derrita_el_hielo, una_vez_combinados_los_ingredientes_para_hacer_la_nieve, se_vierten_en_la_garrafa, luego_el_nevero_gira_la_garrafa_constantemente_hasta_que_la_nieve_se_espese]).

imprimeLista([]).
imprimeLista([X|List]) :-
        write(X),nl,
        imprimeLista(List).

esingredientes(K):-ingredientes(I),pertenece(K,I).
arbol_decision_estado_de_mexico(if_then_else('El platillo lleva pan',
                  if_then_else('El platillo lleva chile guajillo',
                               platillo(pambazo),
                               if_then_else('El platillo contienen un tamal',
                                            platillo(guajolota),
                                            false)),
                  if_then_else('El platillo lleva chorizo',
                               if_then_else('El platillo lleva queso',
                                            platillo(queso_fundido_con_chorizo),
                               if_then_else('El platillo lleva papa',
                                            platillo(tacos_de_papa_con_chorizo),
                                            false)),
                  if_then_else('El platillo es de borrego',
                               if_then_else('El platillo se sirve en caldo',
                                            platillo(pancita),
                               if_then_else('El platillo va en tacos',
                                            platillo(barbacoa),
                                            false)),
                               false)))).

arbol_platillo_estado_de_mexico(platillo(P), P).
arbol_platillo_estado_de_mexico(if_then_else(C, S, N), P):- (es_cierto(C) -> arbol_platillo_estado_de_mexico(S, P); arbol_platillo_estado_de_mexico(N, P)).

arbol_decision_michoacan(if_then_else('El platillo es una sopa',
                  if_then_else('La sopa lleva frijol molido',
                               platillo(sopa_tarasca),
                               if_then_else('La sopa lleva aguacate',
                                            platillo(sopa_fria_de_aguacate),
                                            false)),
                  if_then_else('El platillo lleva pescado',
                               if_then_else('El platillo va en caldo',
                                            platillo(caldo_michi),
                               if_then_else('El pescado se sirve solo',
                                            platillo(pescado_blanco_de_patzcuaro),
                                            false)),
                  if_then_else('El platillo lleva manteca de cerdo',
                               if_then_else('El platillo se envuelve en hojas de milpa',
                                            platillo(corundas_y_uchepos),
                               if_then_else('El platillo se sirve en tacos',
                                            platillo(carnitas),
                                            false)),

                               false)))).
arbol_platillo_michoacan(platillo(P), P).
arbol_platillo_michoacan(if_then_else(C, S, N), P):- (es_cierto(C) -> arbol_platillo_michoacan(S, P); arbol_platillo_michoacan(N, P)).

arbol_decision_chiapas(if_then_else('El platillo lleva masa',
                  if_then_else('El platillo lleva elote',
                               platillo(picte_de_elote),
                               if_then_else('El platillo lleva pollo picado',
                                            platillo(tamal_de_maiz),
                                            false)),
                  if_then_else('El platillo es en caldo',
                               if_then_else('El platillo lleva carne de conejo',
                                            platillo(caldo_de_sihuamonte),
                               if_then_else('El platillo lleva caracol',
                                            platillo(caldo_de_shuti),
                                            false)),
                  if_then_else('El platillo lleva carne de puerco',
                               if_then_else('El platillo va en salsa verde',
                                            platillo(cerdo_en_salsa_verde_con_acelgas),
                               if_then_else('El platillo lleva achiote',
                                            platillo(ninguijuti),
                                            false)),

                               false)))).
arbol_platillo_chiapas(platillo(P), P).
arbol_platillo_chiapas(if_then_else(C, S, N), P):- (es_cierto(C) -> arbol_platillo_chiapas(S, P); arbol_platillo_chiapas(N, P)).

arbol_decision_veracruz(if_then_else('El platillo lleva camarón',
                  if_then_else('El platillo lleva jitomate y cebolla',
                               platillo(vuelve_a_la_vida),
                               if_then_else('El platillo lleva coco',
                                            platillo(camarones_al_coco),
                                            false)),
                  if_then_else('El platillo lleva jaibas',
                               if_then_else('El platillo lleva chile de chilpaya',
                                            platillo(chilpachole_de_jaiba),
                               if_then_else('El platillo lleva mariscos',
                                            platillo(cazuela_de_jaiba_y_mariscos),
                                            false)),
                  if_then_else('El platillo lleva pescado',
                               if_then_else('El platillo lleva arroz',
                                            platillo(arroz_a_la_tumbada),
                               if_then_else('El platillo lleva vino blanco',
                                            platillo(pescado_a_la_veracruzana),
                                            false)),
                               false)))).

arbol_platillo_veracruz(platillo(P), P).
arbol_platillo_veracruz(if_then_else(C, S, N), P):- (es_cierto(C) -> arbol_platillo_veracruz(S, P); arbol_platillo_veracruz(N, P)).

arbol_decision_jalisco(if_then_else('El platillo lleva carne de cerdo',
                  if_then_else('El platillo lleva un bolillo a la mitad',
                               platillo(torta_ahogada),
                               if_then_else('El platillo lleva granos de maíz',
                                            platillo(pozole),
                                            false)),
                  if_then_else('El platillo es de carne de res',
                               if_then_else('El platillo lleva salsa de chile y especias',
                                            platillo(birria),
                               if_then_else('El platillo lleva frijoles',
                                            platillo(carne_en_su_jugo),
                                            false)),
                  if_then_else('El platillo es un postre',
                               if_then_else('El platillo es un flan ',
                                            platillo(jericalla),
                               if_then_else('El platillo es de hielo',
                                            platillo(nieves_de_garrafa),
                                            false)),
                               false)))).
arbol_platillo_jalisco(platillo(P), P).
arbol_platillo_jalisco(if_then_else(C, S, N), P):- (es_cierto(C) -> arbol_platillo_jalisco(S, P); arbol_platillo_jalisco(N, P)).
