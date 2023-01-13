CREATE DATABASE kwiaciarnia;
USE kwiaciarnia;

CREATE TABLE kategoria(
    id_kategoria INT NOT NULL PRIMARY KEY,
    nazwa_kategoria VARCHAR(255) NOT NULL
);

INSERT INTO kategoria
(id_kategoria, nazwa_kategoria)
VALUES
('1', 'kwiaty');

INSERT INTO kategoria
(id_kategoria, nazwa_kategoria)
VALUES
('2', 'nasiona');

INSERT INTO kategoria
(id_kategoria, nazwa_kategoria)
VALUES
('3', 'doniczki');

CREATE TABLE produkt (
    liczba_kategorii INT NOT NULL,
    id_kategoria INT NOT NULL,
    nazwa_produkt VARCHAR(255) NOT NULL PRIMARY KEY
);

INSERT INTO produkt
(liczba_kategorii, id_kategoria, nazwa_produkt)
VALUES
('1', '1', 'doniczkowe');

INSERT INTO produkt
(liczba_kategorii, id_kategoria, nazwa_produkt)
VALUES
('2', '1', 'balkonowe');

INSERT INTO produkt
(liczba_kategorii, id_kategoria, nazwa_produkt)
VALUES
('3', '2', 'nasiona kwiatów doniczkowych');

INSERT INTO produkt
(liczba_kategorii, id_kategoria, nazwa_produkt)
VALUES
('4', '2', 'nasiona kwiatów balkonowych');

INSERT INTO produkt
(liczba_kategorii, id_kategoria, nazwa_produkt)
VALUES
('5', '2', 'owoców');

INSERT INTO produkt
(liczba_kategorii, id_kategoria, nazwa_produkt)
VALUES
('6', '2', 'warzyw');

INSERT INTO produkt
(liczba_kategorii, id_kategoria, nazwa_produkt)
VALUES
('7', '3', 'ceramiczne');

INSERT INTO produkt
(liczba_kategorii, id_kategoria, nazwa_produkt)
VALUES
('8', '3', 'plastikowe');

INSERT INTO produkt
(liczba_kategorii, id_kategoria, nazwa_produkt)
VALUES
('9', '3', 'drewniane');

CREATE TABLE kwiaty (
    id_kategoria INT NOT NULL,
    nazwa_produkt VARCHAR(255) NOT NULL,
    nazwa_kwiat VARCHAR(255) NOT NULL PRIMARY KEY,
    zdjecie TEXT,
    pochodzenie VARCHAR(255) NOT NULL,
    cena INT NOT NULL
);

                                            /* KWIATY --- DONICZKOWE */

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('1', 'Kwiaty doniczkowe', 'Cyklamen Perski', 'Grecja, Algieria, Tunezja', '10', 'https://lh3.googleusercontent.com/fCDyYLrBG8OwMfyZCaYj4hqNcAZtBFtbM70UvH60obw0DLBlQHFBaneuXAanFxkBoRopgqgSi7E0h9s26DMNyaqmvsXEbDpz3V0ZRQ=w888-h768-rw');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('1', 'Kwiaty doniczkowe', 'Anturium', 'Ameryka Środkowa i Południowa', '40', 'https://lh3.googleusercontent.com/Uu7WBTLpKXwbWfD-8XCpA4SY98LD2MdkirPC_cpk0tW0WRAI_82h5et74naAYKg2Vd4B6VWzrQuOspmGV1B2r2k-zb-dLOmct4tDbg=w888-h768-rw');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('1', 'Kwiaty doniczkowe', 'Guzmania', 'Ameryka Środkowa i Południowa', '35', 'https://lh3.googleusercontent.com/SWokfXpWAte51kcoQG5PFsXSggcgZCQVYqa0WnzIsVlPAWyLS7kGhkQ34z4h7uP94ywagisCkdiaPnc37uPBBFZ8r8mYnlI88picRw=w888-h768-rw');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('1', 'Kwiaty doniczkowe', 'Gwiazda betlejemska', 'Meksyk, Gwatemala', '25', 'https://lh3.googleusercontent.com/PTF-96gLFUKw5tIYEZvjiPqFHwz6JZegGW803_1STW_KwDCx3GJhBW1Th4BL4gyOHRuZbO1KKWqncVhx_BvhMzM2Scx5uJRxNTMA=w888-h768-rw');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('1', 'Kwiaty doniczkowe', 'Begonia zimowa', 'Europa', '10', 'https://lh3.googleusercontent.com/PauQlbok5qznTYyjiepUtxNjlatgMvA5am540uffQgUtLsx7rg273eVhIJUl9owywXzPclcO8KD4w5o7Cr3yZ3evU6DuEhN3sSR1=w888-h768-rw');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('1', 'Kwiaty doniczkowe', 'Azalia indyjska', 'Azja', '15',  'https://lh3.googleusercontent.com/edkp_CatH3aq0l0NE7yeIpZHtdQNbYBm__rwHL0dDEsUS4INFQ40BmNLLTqcUh2LTgVW8miuKLtcEm57gtd4svuTiOlvbZDR91o=w888-h768-rw');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('1', 'Kwiaty doniczkowe', 'Fiołek afrykański', 'Afryka Południowa (Tanzania)', '10', 'https://lh3.googleusercontent.com/1uzhksh-GoJsbDuPuJrQAGdgdbAXpcOP63hI3YdYF1EL2xQMMqfVTdj6Clg8sKX5QWirdLFaSkxO899uCOObsQzFhbusKE1h6cQ=w888-h768-rw');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('1', 'Kwiaty doniczkowe', 'Stefanotis bukietowy', 'Afryka (Madagaskar)', '25', 'https://lh3.googleusercontent.com/c_bmL2jIr5zh7pYKyaeGLRWpd6cu9GX0GS124X8_YPRPJgRe6xc-nUENIw6s1a2lMOZ9tAddu2mGRZOVfNVr0stQtSatAug3YDl0=w888-h768-rw');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('1', 'Kwiaty doniczkowe', 'Storczyk cymbidium', 'Azja, Australia', '15',  'https://lh3.googleusercontent.com/cCCrQz8lAHuxtmOXK8m_IYD4mAWuZVApKVJI60t6auhPTHRkMA7uIMAXmCNgzIx0kXVs4QKzAXqQxVpqF93i0R-s_VpgC3gIaXcf=w888-h768-rw');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('1', 'Kwiaty doniczkowe', 'Zygokaktus', 'Ameryka Południowa (Brazylia)', '35', 'https://lh3.googleusercontent.com/SXAEhtTfIStO2BvxbUwpxHu0PJWpRolrUAIhGNgtT8XfJIkVxz1zOtQi0rZzEQ0jdXxTLjhmMDAKQCItfBqCbqOG7nyPclFjV0mt=w888-h768-rw');

                                            /* KWIATY --- BALKONOWE */

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('2', 'Kwiaty balkonowe', 'Aksamitka', 'Meksyk, Nikaragua', '10', 'https://www.morizon.pl/blog/wp-content/uploads/2019/04/orange-flowers-2471898_1280.jpg');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('2', 'Kwiaty balkonowe', 'Petunia', 'Ameryka Południowa', '35', 'https://www.morizon.pl/blog/wp-content/uploads/2019/04/balcony-200431_1280.jpg');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('2', 'Kwiaty balkonowe', 'Bratek', 'Polska', '25', 'https://www.morizon.pl/blog/wp-content/uploads/2019/04/pansy-4120123_1280.jpg');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('2', 'Kwiaty balkonowe', 'Nemezja', 'Afryka', '20', 'https://www.morizon.pl/blog/wp-content/uploads/2019/04/nemesia-444407_1280.jpg');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('2', 'Kwiaty balkonowe', 'Sundaville', 'Ameryka Południowa', '25', 'https://www.morizon.pl/blog/wp-content/uploads/2019/04/mandevilla-1521768_1280.jpg');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('2', 'Kwiaty balkonowe', 'Celozja pierzasta', 'Indie', '20', 'https://www.morizon.pl/blog/wp-content/uploads/2019/04/celozja-pierzasta-2.jpg');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('2', 'Kwiaty balkonowe', 'Lawenda wąskolistna', 'Francja, Hiszpania, Andora, Włochy', '15', 'https://www.morizon.pl/blog/wp-content/uploads/2019/04/lawenda-waskolistna-2.jpg');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('2', 'Kwiaty balkonowe', 'Gazania lśniąca', 'Afryka Południowa', '20', 'https://www.morizon.pl/blog/wp-content/uploads/2019/04/gazania-lsniaca-2.jpg');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('2', 'Kwiaty balkonowe', 'Dzwonek', 'Polska', '20', 'https://www.morizon.pl/blog/wp-content/uploads/2019/04/ringtone-3675688_1280.jpg');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('2', 'Kwiaty balkonowe', 'Fuksja', 'Ameryka Środkowa i Południowa', '15', 'https://www.morizon.pl/blog/wp-content/uploads/2019/04/fuchsia-4051424_1280.jpg');

INSERT INTO kwiaty
(id_kategoria, nazwa_produkt, nazwa_kwiat, pochodzenie, cena, zdjecie)
VALUES
('2', 'Kwiaty balkonowe', 'Pelargonia', 'Afryka Południowa', '15', 'https://www.morizon.pl/blog/wp-content/uploads/2019/04/farmhouse-1580919_1280.jpg');

CREATE TABLE nasiona (
    id_kategoria INT NOT NULL,
    nazwa_produkt VARCHAR(255) NOT NULL,
    nazwa_nasiona VARCHAR(255) NOT NULL PRIMARY KEY,
    pochodzenie VARCHAR(255) NOT NULL,
    zdjecie TEXT,
    cena INT NOT NULL
);

                                            /* NASIONA --- KWIATÓW DONICZKOWYCH */

INSERT INTO nasiona
(id_kategoria, nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie)
VALUES
('1', 'Nasiona kwiatów doniczkowych', 'Mietelnik', 'Europa Wschodnia', '5', 'https://sklep.swiatkwiatow.pl/images/thumbnails/320/320/detailed/66/60003339_000086.jpg');

INSERT INTO nasiona
(id_kategoria, nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie)
VALUES
('1', 'Nasiona kwiatów doniczkowych', 'Męczennica Błękitna', 'Brazylia, Argentyna', '8', 'https://sklep.swiatkwiatow.pl/images/thumbnails/320/320/detailed/29/shutterstock_112255121.jpg');

                                            /* NASIONA --- KWIATÓW BALKONOWYCH */

INSERT INTO nasiona
(id_kategoria, nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie)
VALUES
('2', 'Nasiona kwiatów balkonowych', 'Słonecznik doniczkowy Polino Cola', 'Ameryka Północna', '5', 'https://sklep.swiatkwiatow.pl/images/thumbnails/320/320/detailed/61/slonecznik-doniczkowy-2.jpg');

INSERT INTO nasiona
(id_kategoria, nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie)
VALUES
('2', 'Nasiona kwiatów balkonowych', 'Żeniszek meksykański białoniebieski', 'Ameryka Środkowa', '6', 'https://sklep.swiatkwiatow.pl/images/thumbnails/320/320/detailed/66/zeniszek-meksykanski-bialoniebieski.jpg');

                                            /* NASIONA --- OWOCÓW */

INSERT INTO nasiona
(id_kategoria, nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie)
VALUES
('3', 'Nasiona owoców', 'Poziomka Yellow Wonder', 'Polska', '6', 'https://sklep.swiatkwiatow.pl/images/thumbnails/320/320/detailed/25/shutterstock_103106882_%E2%80%94_kopia.jpg');

INSERT INTO nasiona
(id_kategoria, nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie)
VALUES
('3', 'Nasiona owoców', 'Rodzynek brazylijski', 'Ameryka Południowa', '4', 'https://sklep.swiatkwiatow.pl/images/thumbnails/320/320/detailed/29/shutterstock_250744033.jpg');

INSERT INTO nasiona
(id_kategoria, nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie)
VALUES
('3', 'Nasiona owoców', 'Arbuz kawon Janosik', 'Polska', '5', 'https://sklep.swiatkwiatow.pl/images/thumbnails/320/320/detailed/60/arbuz-zolty-janosik-2.jpg');

INSERT INTO nasiona
(id_kategoria, nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie)
VALUES
('3', 'Nasiona owoców', 'Melon Melba', 'Azja Zachodnia', '7', 'https://sklep.swiatkwiatow.pl/images/thumbnails/320/320/detailed/42/009053.jpg');

                                            /* NASIONA --- WARZYW */

INSERT INTO nasiona
(id_kategoria, nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie)
VALUES
('4', 'Nasiona warzyw', 'Rzeżucha', 'Polska', '2', 'https://sklep.swiatkwiatow.pl/images/thumbnails/320/320/detailed/25/shutterstock_10432174_%E2%80%94_kopia.jpg');

INSERT INTO nasiona
(id_kategoria, nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie)
VALUES
('4', 'Nasiona warzyw', 'Koper ogrodowy Moravan', 'Polska', '4', 'https://sklep.swiatkwiatow.pl/images/thumbnails/320/320/detailed/36/koper-ogrodowy-moravan2.jpg');

INSERT INTO nasiona
(id_kategoria, nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie)
VALUES
('4', 'Nasiona warzyw', 'Rzodkiewka krakowianka', 'Polska', '3', 'https://sklep.swiatkwiatow.pl/images/thumbnails/320/320/detailed/57/rzodkiewka-krakowianka-2_5pld-md.jpg');

INSERT INTO nasiona
(id_kategoria, nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie)
VALUES
('4', 'Nasiona warzyw', 'Marchew Nantes', 'Polska', '3', 'https://sklep.swiatkwiatow.pl/images/thumbnails/320/320/detailed/58/marchew-nantes-3-2.jpg');

CREATE TABLE doniczki (
    id_kategoria INT NOT NULL,
    nazwa_produkt VARCHAR(255) NOT NULL,
    nazwa_doniczki VARCHAR(255) NOT NULL PRIMARY KEY,
    zdjecie TEXT,
    cena INT NOT NULL
);

                                            /* DONICZKI --- CERAMICZNE */

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('1', 'Ceramiczne', 'Doniczki Bagust Lava (3-set)', '250', 'https://cdn.wonderstatic.com/product-image/doniczki-bagust-lava-3-set-1.jpg?width=850&height=650&quality=85&dpr=1&format=pjpg&auto=webp&fit=bounds&io=true');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('1', 'Ceramiczne', 'Zestaw donic Lux szara', '130', 'https://d2d22nphq0yz8t.cloudfront.net/46b62cd2-2d91-4c40-bc9a-e7d6bd9200fb/https://9design.pl/pol_pm_Zestaw-donic-Lux-szara-15300_1.jpg/mxw_2048,s_webp,f_auto');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('1', 'Ceramiczne', 'Doniczki z orientalnym wzorem (3-set)', '230', 'https://cdn.shopify.com/s/files/1/0577/4239/3541/products/56570_1_1800x1800.jpg?v=1632443429');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('1', 'Ceramiczne', 'Doniczka SONA MARBLING 14,5 CM', '50', 'https://dekoracjadomu.b-cdn.net/348276/doniczka-sona-marbling-145-cm.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('1', 'Ceramiczne', 'Doniczka SZARA ŚR. 36 CM', '300', 'https://d2d22nphq0yz8t.cloudfront.net/46b62cd2-2d91-4c40-bc9a-e7d6bd9200fb/https://9design.pl/pol_pm_Oslonka-Porta-szara-sr-36-cm-40987_1.jpg/mxw_2048,s_webp,f_auto');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('1', 'Ceramiczne', 'Doniczka TRIGG L biały/nikiel UMBRA', '100', 'https://mantecodesign.pl/userdata/public/gfx/64936/470752-670-umbra-trigg-l-organizar-doniczka-1.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('1', 'Ceramiczne', 'Doniczki na kwiaty Trigg 11x18 cm złoty (2-set)', '130', 'https://cdn.wonderstatic.com/product-image/organizer-pojemnik-na-kwiaty-trigg-11x18-cm-zloty-2-set-1.jpg?width=850&height=650&quality=85&dpr=1&format=pjpg&auto=webp&fit=bounds&io=true');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('1', 'Ceramiczne', 'Doniczka DORIS GOLD 8 CM', '40', 'https://dekoracjadomu.b-cdn.net/346559/doniczka-doris-gold-8-cm.jpg');

                                            /* DONICZKI --- GLINIANE */

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('2', 'Gliniane', 'OSŁONKA GLINIANA 17,5x13cm', '35', 'https://www.florapoint.pl/wp-content/uploads/2021/10/8720006085925.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('2', 'Gliniane', 'DONICZKA GLINIANA 22,5×7,5cm', '30', 'https://www.florapoint.pl/wp-content/uploads/2021/06/8714982063121.png');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('2', 'Gliniane', 'DONICZKA GLINIANA 19*25 CM', '65', 'https://www.florapoint.pl/wp-content/uploads/2021/06/8714982102431.png');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('2', 'Gliniane', 'DONICA GLINIANA WISZĄCA 10*8CM RED', '25', 'https://www.florapoint.pl/wp-content/uploads/2021/06/8714982129711.png');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('2', 'Gliniane', 'DONICA GLINIANA 12*16CM ZIELONA', '25', 'https://www.florapoint.pl/wp-content/uploads/2021/06/8714982129391.png');

                                            /* DONICZKI --- GŁOWA */

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('3', 'Głowa', 'GŁOWA APOLLO Z BETONU 24 CM', '700', 'https://www.florapoint.pl/wp-content/uploads/2021/08/apollo-14cm-no-color-2.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('3', 'Głowa', 'GŁOWA APOLLO Z BETONU 24 CM CZARNY MAT', '730', 'https://www.florapoint.pl/wp-content/uploads/2021/08/apollo-14cm-black-matt-2.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('3', 'Głowa', 'GŁOWA APOLLO Z BETONU 24 CM BIAŁY MAT', '730', 'https://www.florapoint.pl/wp-content/uploads/2021/08/apollo-14cm-white-matt-2.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('3', 'Głowa', 'GŁOWA CZASZKA Z BETONU 24 CM CZARNY MAT', '730', 'https://www.florapoint.pl/wp-content/uploads/2021/08/donicaoslonka-skull-low-poly-11cm-black-matt-1.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('3', 'Głowa', 'DONICA GŁOWA CLAYFIBRE 32×51 CM', '350', 'https://www.florapoint.pl/wp-content/uploads/2021/07/B64-10.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('3', 'Głowa', 'DONICA GŁOWA CLAYFIBRE 35,5×50 CM', '680', 'https://www.florapoint.pl/wp-content/uploads/2021/07/B64-04.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('3', 'Głowa', 'DONICA GŁOWA CLAYFIBRE 43,5×50 CM', '700', 'https://www.florapoint.pl/wp-content/uploads/2021/07/B64-02.jpg');

                                            /* DONICZKI --- NATURALNE */

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('4', 'Naturalne', 'SKRZYNKA Z GRUBEJ WIKLINY 60*23*20CM', '90', 'https://www.florapoint.pl/wp-content/uploads/2021/08/11438.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('4', 'Naturalne', 'OSŁONKA Z GRUBEJ WIKLINY LANA 26*22CM', '30', 'https://www.florapoint.pl/wp-content/uploads/2021/08/24269.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('4', 'Naturalne', 'DONICA ZEW. ZAYN BAMBUSOWO-BETONOWA 90*90CM', '2890', 'https://www.florapoint.pl/wp-content/uploads/2021/06/8719497967711.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('4', 'Naturalne', 'OSŁONKA ABBY L, 50*35 CM STRAW GRASS', '480', 'https://www.florapoint.pl/wp-content/uploads/2021/06/T4033-35-GRS.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('4', 'Naturalne', 'OSŁONKA KOSZ ZE SZNUREM 34X25CM', '150', 'https://www.florapoint.pl/wp-content/uploads/2021/05/KR2002350_COMPOSITION_001_25-06-20_.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('4', 'Naturalne', 'OSŁONKA WIKLINOWA IDO NATURAL 42x36cm', '150', 'https://www.florapoint.pl/wp-content/uploads/2021/05/164525E.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('4', 'Naturalne', 'OSŁONKA SELIN JUTE 30*26CM', '100', 'https://www.florapoint.pl/wp-content/uploads/2021/04/162371.jpg');

INSERT INTO doniczki
(id_kategoria, nazwa_produkt, nazwa_doniczki, cena, zdjecie)
VALUES
('4', 'Naturalne', 'OSŁONKA JIP NATURAL 42x34cm', '120', 'https://www.florapoint.pl/wp-content/uploads/2021/04/162357.jpg');

                                            /* KONTA UŻYTKOWNIKÓW */

CREATE TABLE users (
    id INT NOT NULL auto_increment PRIMARY KEY,
    nazwa_uzytkownika VARCHAR(255) NOT NULL UNIQUE,
    haslo VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);



