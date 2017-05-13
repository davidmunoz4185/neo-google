MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo Nacional del Prado"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo Nacional del Prado"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "https://www.museodelprado.es/"});
MATCH(M:MUSEUM{NAME: "Museo Nacional del Prado"}),(W:WEB{URL: "https://www.museodelprado.es/"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "https://www.inexhibit.com/wp-content/uploads/2014/07/Museo-del-Prado-Madrid-04.jpg"});
MATCH(M:MUSEUM{NAME: "Museo Nacional del Prado"}),(I:IMAGE{SRC: "https://www.inexhibit.com/wp-content/uploads/2014/07/Museo-del-Prado-Madrid-04.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo de Historia de Madrid"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo de Historia de Madrid"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "http://museomadrid.com/museo-de-historia/"});
MATCH(M:MUSEUM{NAME: "Museo de Historia de Madrid"}),(W:WEB{URL: "http://museomadrid.com/museo-de-historia/"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "https://ilusiona2blog.files.wordpress.com/2015/01/museo-de-historia-madrid-carmina-baker-fachada.jpg"});
MATCH(M:MUSEUM{NAME: "Museo de Historia de Madrid"}),(I:IMAGE{SRC: "https://ilusiona2blog.files.wordpress.com/2015/01/museo-de-historia-madrid-carmina-baker-fachada.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo Thyssen-Bornemisza"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo Thyssen-Bornemisza"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "https://www.museothyssen.org/"});
MATCH(M:MUSEUM{NAME: "Museo Thyssen-Bornemisza"}),(W:WEB{URL: "https://www.museothyssen.org/"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "http://www.spainisculture.com/export/sites/cultura/multimedia/galerias/museos/Museo_Thyssen_Bornemisza_edificio_palacio_villahermosa_m.jpg_1306973099.jpg"});
MATCH(M:MUSEUM{NAME: "Museo Thyssen-Bornemisza"}),(I:IMAGE{SRC: "http://www.spainisculture.com/export/sites/cultura/multimedia/galerias/museos/Museo_Thyssen_Bornemisza_edificio_palacio_villahermosa_m.jpg_1306973099.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo Reina Sofía"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo Reina Sofía"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "http://www.museoreinasofia.es"});
MATCH(M:MUSEUM{NAME: "Museo Reina Sofía"}),(W:WEB{URL: "http://www.museoreinasofia.es"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "http://www.fond-ecran-image.com/photo-espagne/photo-musee-centro-arte-reina-sofia/01.jpg"});
MATCH(M:MUSEUM{NAME: "Museo Reina Sofía"}),(I:IMAGE{SRC: "http://www.fond-ecran-image.com/photo-espagne/photo-musee-centro-arte-reina-sofia/01.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo Nacional de Antropología de Madrid"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo Nacional de Antropología de Madrid"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "http://mnantropologia.mcu.es"});
MATCH(M:MUSEUM{NAME: "Museo Nacional de Antropología de Madrid"}),(W:WEB{URL: "http://mnantropologia.mcu.es"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "https://media-cdn.tripadvisor.com/media/photo-s/02/7c/e3/05/museo-nacional-de-antropologia.jpg"});
MATCH(M:MUSEUM{NAME: "Museo Nacional de Antropología de Madrid"}),(I:IMAGE{SRC: "https://media-cdn.tripadvisor.com/media/photo-s/02/7c/e3/05/museo-nacional-de-antropologia.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo Cerralbo"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo Cerralbo"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "http://museocerralbo.mcu.es"});
MATCH(M:MUSEUM{NAME: "Museo Cerralbo"}),(W:WEB{URL: "http://museocerralbo.mcu.es"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "https://blog.esmadrid.com/blog/es/wp-content/uploads/2014/06/museo-cerralbo.jpg"});
MATCH(M:MUSEUM{NAME: "Museo Cerralbo"}),(I:IMAGE{SRC: "https://blog.esmadrid.com/blog/es/wp-content/uploads/2014/06/museo-cerralbo.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo Sorolla"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo Sorolla"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "http://museosorolla.mcu.es"});
MATCH(M:MUSEUM{NAME: "Museo Sorolla"}),(W:WEB{URL: "http://museosorolla.mcu.es"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "https://www.citylifemadrid.com/wp-content/uploads/Museo-Sorolla-6.jpg"});
MATCH(M:MUSEUM{NAME: "Museo Sorolla"}),(I:IMAGE{SRC: "https://www.citylifemadrid.com/wp-content/uploads/Museo-Sorolla-6.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo Romanticismo Madrid"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo Romanticismo Madrid"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "http://museoromanticismo.mcu.es"});
MATCH(M:MUSEUM{NAME: "Museo Romanticismo Madrid"}),(W:WEB{URL: "http://museoromanticismo.mcu.es"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "http://epoca1.valenciaplaza.com/bd/imagenes/imagen45798g.jpg"});
MATCH(M:MUSEUM{NAME: "Museo Romanticismo Madrid"}),(I:IMAGE{SRC: "http://epoca1.valenciaplaza.com/bd/imagenes/imagen45798g.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo de América Madrid"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo de América Madrid"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "http://www.mecd.gob.es/museodeamerica"});
MATCH(M:MUSEUM{NAME: "Museo de América Madrid"}),(W:WEB{URL: "http://www.mecd.gob.es/museodeamerica"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "https://upload.wikimedia.org/wikipedia/commons/1/1d/Museo_de_Am%C3%A9rica_de_Madrid_-_02.jpg"});
MATCH(M:MUSEUM{NAME: "Museo de América Madrid"}),(I:IMAGE{SRC: "https://upload.wikimedia.org/wikipedia/commons/1/1d/Museo_de_Am%C3%A9rica_de_Madrid_-_02.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo del Traje Madrid"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo del Traje Madrid"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "http://museodeltraje.mcu.es"});
MATCH(M:MUSEUM{NAME: "Museo del Traje Madrid"}),(W:WEB{URL: "http://museodeltraje.mcu.es"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "http://www.gomadrid.com/museums/museo-traje.jpg"});
MATCH(M:MUSEUM{NAME: "Museo del Traje Madrid"}),(I:IMAGE{SRC: "http://www.gomadrid.com/museums/museo-traje.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo Lázaro Galdiano"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo Lázaro Galdiano"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "http://www.flg.es"});
MATCH(M:MUSEUM{NAME: "Museo Lázaro Galdiano"}),(W:WEB{URL: "http://www.flg.es"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "https://www.codart.nl/wp-content/uploads/2016/11/148046443517679421.jpg"});
MATCH(M:MUSEUM{NAME: "Museo Lázaro Galdiano"}),(I:IMAGE{SRC: "https://www.codart.nl/wp-content/uploads/2016/11/148046443517679421.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo del Ferrocarril Madrid"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo del Ferrocarril Madrid"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "http://www.museodelferrocarril.org"});
MATCH(M:MUSEUM{NAME: "Museo del Ferrocarril Madrid"}),(W:WEB{URL: "http://www.museodelferrocarril.org"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "http://2.bp.blogspot.com/-KiOMThUn7cc/UO1Td42AGKI/AAAAAAAAAQA/eInf7vEo93U/s1600/100_3190.JPG"});
MATCH(M:MUSEUM{NAME: "Museo del Ferrocarril Madrid"}),(I:IMAGE{SRC: "http://2.bp.blogspot.com/-KiOMThUn7cc/UO1Td42AGKI/AAAAAAAAAQA/eInf7vEo93U/s1600/100_3190.JPG"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo del Aire Madrid"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo del Aire Madrid"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "http://www.ejercitodelaire.mde.es"});
MATCH(M:MUSEUM{NAME: "Museo del Aire Madrid"}),(W:WEB{URL: "http://www.ejercitodelaire.mde.es"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "https://media-cdn.tripadvisor.com/media/photo-s/03/1c/ff/70/museo-del-aire.jpg"});
MATCH(M:MUSEUM{NAME: "Museo del Aire Madrid"}),(I:IMAGE{SRC: "https://media-cdn.tripadvisor.com/media/photo-s/03/1c/ff/70/museo-del-aire.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Museo Naval Madrid"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Museo Naval Madrid"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "http://www.fundacionmuseonaval.com"});
MATCH(M:MUSEUM{NAME: "Museo Naval Madrid"}),(W:WEB{URL: "http://www.fundacionmuseonaval.com"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "http://www.modelships.de/Museums_and_replicas/Museo_Naval_Madrid/gmIMG_2483.jpg"});
MATCH(M:MUSEUM{NAME: "Museo Naval Madrid"}),(I:IMAGE{SRC: "http://www.modelships.de/Museums_and_replicas/Museo_Naval_Madrid/gmIMG_2483.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
MERGE(P:COUNTRY{NAME: "España"});
MERGE(P:CITY{NAME: "Madrid"});
MATCH(CO:COUNTRY{NAME: "España"}),(CI:CITY{NAME: "Madrid"}) MERGE (CI)-[AI:ALLOCATED_IN]->(CO);
MERGE(M:MUSEUM{NAME: "Real Academia de Bellas Artes"});
MATCH(CI:CITY{NAME: "Madrid"}),(M:MUSEUM{NAME: "Real Academia de Bellas Artes"}) MERGE (M)-[AI:ALLOCATED_IN]->(CI);
MERGE(W:WEB{URL: "http://www.realacademiabellasartessanfernando.com"});
MATCH(M:MUSEUM{NAME: "Real Academia de Bellas Artes"}),(W:WEB{URL: "http://www.realacademiabellasartessanfernando.com"}) MERGE (W)-[WM:WEB_MUSEUM]->(M);
MERGE(I:IMAGE{SRC: "https://media-cdn.tripadvisor.com/media/photo-s/01/70/fc/5b/bellas-artes.jpg"});
MATCH(M:MUSEUM{NAME: "Real Academia de Bellas Artes"}),(I:IMAGE{SRC: "https://media-cdn.tripadvisor.com/media/photo-s/01/70/fc/5b/bellas-artes.jpg"}) MERGE (I)-[IM:WEB_IMAGE]->(M);
