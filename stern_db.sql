-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: stern
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `dateEdited` date DEFAULT NULL,
  `shortDescription` varchar(500) DEFAULT NULL,
  `photoPath` varchar(150) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `archived` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_categoryId` (`categoryId`),
  CONSTRAINT `fk_categoryId` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (39,'Novi slovenski premijer suradnike bira posebnim testom, evo o čemu se radi','2022-06-19','Za odabir ljudi koji će preuzeti važne dužnosti novi slovenski premijer Robert Golob koristi se svojim korporativnim iskustvom, pa su tako svi parlamentaci iz njegove stranke morali odgovoriti na 12 pitanja iz Gallupova testa kojim se u poduzećima mjeri angažiranost zaposlenika i njihova motivacija za rad.\r\n','resources/images/articles/1655655039.jpg','Riječ je o testu koji daje analizu vrijednosti, čime se potiču pozitivne strane pojedinca i izbjegavaju potencijalni konflikti u grupi, kazala je za ljubljansko Delo predsjednica parlamenta Urška Klokočar Zupančič iz Golobove stranke Pokret sloboda.\r\n\r\nI ona je kao i ostalih četrdeset zastupnika izabranih na listi najjače stranke u parlamentu u testu odgovarala na pitanja iz Gallupova testa Q12, od kojih je prvo \'Znate li što se od vas očekuje na radnom mjestu?\'.\r\n\r\nGallupovim testom Robert Golob se koristio prilikom odabira svojih suradnika u vrijeme kad je prije ulaska u politiku vodio veliku elektroenergetsku tvrtku GEN I. On je tek drugi slovenski predsjednik vlade koji svoja ranija poslovna iskustva i metode vođenja ljudskih resursa namjerava prenijeti u politiku, navodi Delo.\r\n\r\nList dodaje da je takve načine odabira suradnika i ekipa na vodećim funkcijama prvi u slovensku politiku uveo pokojni premijer i predsjednik Janez Drnovšek, koji je prije ulaska u visoku politiku bio direktor jedne poslovnice Ljubljanske banke i iskusan ekonomist.',1,0),(40,'HDZ i dalje najjača hrvatska stranka, ali Vladu i predsjednika države jedan bi podatak mogao zabrinuti','2022-06-19','HDZ i dalje najjača hrvatska stranka, ali Vladu i predsjednika države jedan bi podatak mogao zabrinuti','resources/images/articles/1655655127.jpg','Mjesec na izmaku obilježen je ratom, inflacijom i rastom cijena, još se govorilo o padu letjelice, ali je COVID nakon ukidanja mjera, nakon dvije godine prestao biti dominantna tema.\r\nHDZ je dvostruko jači od SDP-a i Možemo! zajedno\r\n\r\nRejting od prošlog mjeseca gotovo se mogao preslikati. HDZ je prvi izbor građana s 28,6 posto potpore. SDP gotovo upola slabiji s potporom od 15,9 posto. Možemo! se stabilizirao na svojih 9,1 posto, a slično je i s Mostom na devet posto. Domovinski pokret je na 4,8 posto.\r\n\r\nCrobarometar za travanj Crobarometar - travanj 2022. godine - 16 (Foto: Dnevnik Nove TV)	 \r\n\r\nOd ostalih stranaka ispod izbornog praga nema bitnih promjena. Najbliže izbornom pragu je Centar na 2,3 posto. Slijedi Hrvatska stranka umirovljenika s dva posto, HNS je na 1,9 posto s jednim od boljih rejtinga. IDS je na 1,9 posto, a Živi zid na 1,1 posto. HSLS je na jedan posto. Ostale stranke zajedno imaju šest posto, a neodlučnih je 16,4 posto.\r\n\r\nCrobarometar za travanj Crobarometar - travanj 2022. godine - 8 (Foto: Dnevnik Nove TV)	\r\nTko je najpopularniji među biračima HDZ-a i SDP-a\r\n\r\nNajpopularniji među biračima HDZ-a očekivano je Andrej Plenković s potporom od 88 posto. Slijedi Gordan Jandroković sa 68 posto te Ivan Penava s 40 posto.\r\n\r\nCrobarometar za travanj Crobarometar - travanj 2022. godine - 6 (Foto: Dnevnik Nove TV)	\r\n\r\nKod SDP-a najpopularniji je očekivano Zoran Milanović s 89 posto, slijedi Tomislav Tomašević sa 73 posto, potom šef SDP-a Peđa Grbin sa 69 posto.\r\n\r\nCrobarometar za travanj Crobarometar - travanj 2022. godine - 7 (Foto: Dnevnik Nove TV)	\r\nRaste nezadovoljstvo radom Vlade\r\n\r\nNakon kratkog optimizma raste nezadovoljstvo radom Vlade. Sada je taj broj 65 posto. A 28 posto ispitanika je zadovoljno radom Vlade, ne zna sedam posto ispitanika.\r\n\r\nCrobarometar za travanj Crobarometar - travanj 2022. godine - 2 (Foto: Dnevnik Nove TV)	\r\n\r\nRaste i pesimizam pa sad 73 posto građana misli da zemlja ide u lošem smjeru. Njih 21 posto su optimisti, a ne zna 6šest posto ispitanika.\r\n\r\nCrobarometar za travanj Crobarometar - travanj 2022. godine - 12 (Foto: Dnevnik Nove TV)	\r\n\r\nMislav Bago - 2 SDP zacementiran, HDZ i dalje najjača stranka: Samo bi ih jedan podatak mogao zabrinuti\r\nNezadovoljstvo radom predsjednika\r\n\r\nRaste i broj nezadovoljnih radom predsjednika. Sada ih je 49 posto i to je rast od šest postotnih poena. Predsjednikovim radom je zadovoljno 45 posto ispitanika i taj broj pada, ne zna šest posto građana.\r\n\r\nCrobarometar za travanj Crobarometar - travanj 2022. godine - 13 (Foto: Dnevnik Nove TV)	\r\nIpak, Milanović je i dalje najpopularniji\r\n\r\nPredsjednik je i dalje najpopularniji političar, o njemu pozitivan dojam ima 55 posto ispitanika, a negativan dojam njih 39 posto.\r\n\r\nTomislav Tomašević je na drugom mjestu i o njemu pozitivan dojam ima 47 posto ispitanika, a negativan njih 35 posto.\r\n\r\nAndrej Plenković je malo popravio osobni rejting pa tako sada o njemu pozitivan dojam ima 39 posto ispitanika, ali tu je i dalje visokih 54 posto onih koji o premijeru imaju negativan dojam.\r\n\r\nCrobarometar za travanj Crobarometar - travanj 2022. godine - 4 (Foto: Dnevnik Nove TV)	\r\n\r\nBožo Petrov može računati na 38 posto ispitanika koji o njemu imaju pozitivan dojam, a njih 43 negativan dojam.\r\n\r\nIstraživanje Nove TV nakon uhićenja Darka Horvata - 10 Ekskluzivno istraživanje Dnevnika Nove TV: Kako stoje politički prvaci HDZ-a nakon uhićenja Darka Horvata? Zanimljiva je i situacija u Zagrebu\r\n\r\nIvan Penava ima 34 posto birača koji o njemu imaju pozitivan dojam, a njih 41 posto misli suprotno.\r\n\r\nI na kraju, Peđa Grbin malo je popravio imidž kod birača, ali i dalje samo 29 posto građana misli pozitivno o njemu, a 51 posto negativno.\r\n\r\nCrobarometar za travanj Crobarometar - travanj 2022. godine - 10 (Foto: Dnevnik Nove TV)	\r\nŠto muči građane?\r\n\r\nNajveći problem građana je gospodarstvo i to s visokih 20 posto, slijedi nezaposlenost s 14 posto, tu je i korupcija s 12 posto te siromaštvo s 10 posto. Koronu koja je obilježila posljednje dvije godine sada smatra bitnom dva posto ispitanika, a rat u Ukrajini samo 0,5 posto ispitanika.',1,0),(41,'Baketa: \'\'Dio građana prepoznaje korupciju, ali su je skloni tolerirati. No, najlakše je kriviti građane\'\'','2022-06-19','Zašto građani i građanke opraštaju optužnice, gledaju kroz prste s obzirom na suđenja, a na uhićenja političara odmahuju rukom? Reporter Dnevnika Nove TV Mislav Bago razgovarao je s Nikolom Baketom iz Instituta za društvena istraživanja u Zagrebu (IDIZ).','resources/images/articles/1655655263.jpg','Matija Posavec dobio je glasove 79,11 posto građanki i građana koji su izašli na izbore za međimurskog župana.\r\n\r\nJe li veliku većinu glasova osvojio unatoč ili zbog činjenice da je prije tri mjeseca priveden zbog sumnje na primanje mita i zlouporabu položaja te trgovanje utjecajem?\r\n\r\nKrivnju je priznao, podnio ostavku, istražni zatvor izbjegao i nakon svega građani i građanke su ga vratili na funkciju.\r\n\r\nA nije on jedini, dovoljno je sjetiti se još niza političara sa sličnim iskustvom. Zašto građani i građanke opraštaju optužnice, gledaju kroz prste s obzirom na suđenja, a na uhićenja političara odmahuju rukom? Reporter Dnevnika Nove TV Mislav Bago razgovarao je s Nikolom Baketom iz Instituta za društvena istraživanja u Zagrebu (IDIZ).\r\n\r\n\'\'Posavčeva pobjeda me nije iznenadila s obzirom na podršku koju je dobivao odmah nakon što je taj slučaj dospio u javnost. Podrška je bila velika, doduše - malen odaziv na izbore, ali premoćna pobjeda Posavca u prvom krugu tako da nije iznenađujuća s obzirom na sve okolnosti\'\', kazao je Baketa.\r\n\r\nUpozorio je da se radi o posljedici jednog dubljeg problema: \'\'Prvenstveni problem su političari koji imaju političku odgovornost - ne bi se kandidirali na ovim izborima, nego bi pričekali završetak tih sudskih procesa, dokazali svoju nevinost ako su nevini pa onda izašli na izbore. S druge strane, većina građanki i građana nema povjerenja u političke stranke i zbog toga vjerojatno apstiniraju od izbora jer su se već dosta puta razočarali\'\'.\r\n\r\nVažno je izaći na izbore jer je svaki glas važan, naime, kako je podsjetio Baketa: \'\'Kad pogledate i druge slučajeve koji su bili, svi ti ljudi su birani s nekih 20, 25 posto glasova od ukupnog biračkog tijela. Rijetko tko od njih je dolazio do 30 posto ukupnog biračkog tijela\'\'.\r\n\r\nŽeljko Sabor, Vinko Grgić, Ivica Kirin, Andro Vlahušić, Ivan Čehok, Stipe Gabrić Jambo, Milan Bandić... nije Posavec iznimka, podsjetio je Bago.\r\n\r\n\'\'Dio građanki i građana, pokazala su to i istraživanja, prepoznaje korupciju, ali su je skloni tolerirati, pogotovo na lokalnoj razini. On krade, ali daje i nama - to je jedan dio, a drugi dio je - možda je bolje manje zlo nego neki drugi. U slučaju Posavca često je bilo opravdanje da se radi o samo 10.000 kuna u odnosu na neke silne milijune. S druge strane, političke stranke i njihovo vodstvo jako često opravdavaju takve postupke u svojim redovima dok predbacuju to drugima pa na taj način i relativiziraju\'\', objasnio je Baketa.\r\n\r\nSve to ima posljedice pa se ljudi, oni novi, mlađi, teško odlučuju na ulazak u politiku, naime, kako je upozorio: \'\'I u ovoj kampanji za lokalne izbore vidjeli smo da se kampanja vodi onom tko je od koga plaćen, tko je ovakav ili onakav, u tom financijskom smislu tko je korumpiran ili nekorumpiran, da se onda kampanja zapravo svede na to i cilj je tih kampanja da ljudi ostanu kod kuće, ubije im se volju i oni apstiniraju\'\'.\r\n\r\nNo, veza je potrebna na svakom koraku - za vrtić, kod doktora... \'\'Građani vide kako se ponašaju političke elite i tu dolazimo do toga koliko su oni spremni preuzeti odgovornost. Najlakše je kriviti građane, međutim, ono što oni dobiju kao sustav koji tako funkcionira i da ne može drugačije, oni se prilagođavaju\'\', objasnio je Baketa.\r\n\r\nTraje to već 30 godina. \'\'Kada govorimo o potpori političarima, ona nije homogena, ali postoji dio ljudi koji glasaju za takve političare jer se osjećaju dužnima nekome\'\', kazao je Baketa.\r\n\r\nZanimljiv je fenomen HDZ-a, naime, na vlasti su pet godina, imaju rejting koji je od lipnja prošle godine gotovo zacementiran - nijedna afera ih nije ni okrznula. \'\'HDZ već godinama ima 25 do 30 posto, stabilno je, ima svoj dio ideološki opredjeljenog biračkog tijela koje ih podržava bez obzira na sve, a ima i ovih koji tu vide neku svoju korist tako da će se teško ti ljudi odvojiti. S druge strane, oni na desnom centru zapravo nemaju konkurenciju u smislu protivnika na političkoj sceni\'\', podsjetio je Baketa.\r\n\r\nSnimljen razgovor Matije Posaveca Znanstvenik o korupciji i Hrvatima: \"Čačićeva izjava o Posavcu je vodič kako se izvući iz takve situacije\"\r\n\r\nSaborski zastupnici \"Sinkopa je apsolutni politički hit među elitom HDZ-a, Ive Sanadera se sada više nitko ne sjeća\"\r\n\r\n\r\nŠto se tiče razlike u potpori danas u odnosu na doba kada je protiv HDZ-a bila podignuta optužnica, Baketa je također podsjetio da bi neki rekli kako je ovo danas neki drugi HDZ koji nije odgovoran za to: \'\'Međutim, vidimo da i kod ovog HDZ-a postoje određene osobe koje su iz ovog ili onog razloga zagrizle u korupciju. Imali smo tu i slučajeve Josipe Rimac i Gabrijele Žalac te na lokalnim razinama se jako često javljaju. Očito je da biračima to ne smeta, onima kojima možda smeta su već odselili iz Hrvatske ili ne izlaze na izbore\'\'.\r\n\r\nDnevnik Nove TV gledajte svakog dana od 19:15, a više o najvažnijim vijestima čitajte na portalu DNEVNIK.hr. ',1,0),(42,'Danska i Kanada riješile pola vijeka stari spor','2022-06-19','Vlasti Danske i Kanade postigle su načelni dogovor da okončaju skoro pola stoljeća star spor u vezi sa nenaseljenim arktičkim otokom Hans.','resources/images/articles/1655655376.jpg','Vlasti Danske i Kanade postigle su načelni dogovor da okončaju skoro pola stoljeća star spor u vezi sa nenaseljenim arktičkim otokom Hans.\r\n\r\nBritanski list Herald javlja da su Danska i Kanada postigle sporazum o podjeli tog neplodnog otoka koji nema mineralne rezerve, prenosi Anadolija.\r\n\r\nGranica će biti povučena preko otoka Hans površine od 2,6 kvadratna kilometra, a riječ je o otoku koje se nalazi na plovnom putu između sjeverozapadne obale poluautonomne danske teritorije Grenlanda i kanadskog otoka Ellesmere.\r\n\r\n“To šalje jasan signal da je moguće riješiti granične sporove… na pragmatičan i miran način, gdje sve strane postaju pobjednici”, rekao je danski ministar vanjskih poslova Jeppe Kofod.\r\nSuverenitet nad otokom\r\n\r\nKanada i Danska su se 1973. godine složile da stvore granicu kroz moreuz Nares, na pola puta između Grenlanda i Kanade, ali nisu se mogle dogovoriti koja će država imati suverenitet nad otokom Hans, gotovo 1.100 kilometara južno od Sjevernog pola.\r\n\r\nDanski ministar za poslove Grenlanda podigao je dansku zastavu na tom otokom 1984. godine te je zakopao flašu danske rakije i ostavio poruku na kojoj je pisalo: “Dobro došli na danski otok”.\r\n\r\nKanađani su potom postavili svoju zastavu i ostavili flašu kanadskog brendija.\r\n\r\nOd tada su se te dvije zemlje u više navrata smjenjivale u podizanju zastava i ostavljanju boca raznih alkoholnih pića na otoku koji će uskoro i formalno biti podijeljen. Biće to prva kopnena granica između te dvije zemlje.\r\n',1,0),(43,'EP usvojio izvještaj o BiH','2022-06-19','Vanjskopolitički odbor u Europskom parlamentu usvojio je Izvještaj o Bosni i Hercegovini.','resources/images/articles/1655658097.jpg','Vanjskopolitički odbor u Evropskom parlamentu usvojio je Izvještaj o Bosni i Hercegovini, koji oštro osuđuje nepoštovanje međunarodnih i nacionalnih normi i obaveza.\r\n\r\nIzvještaj osuđuje i retoriku mržnje i remetilačke aktivnosti, uključujući povlačenje iz institucija, posebno rukovodstva bh. entiteta Republika Srpska.\r\n\r\nNa taj način, kako piše u izvještaju, destabilizira se zemlja, podriva njena državnost kršenjem Dejtonskog sporazuma i koče ključne reforme.\r\n\r\nRezolucijom se odbacuju svi pokušaji formiranja paralelnih, paradržavnih, a poziva na povratak u državne institucije.\r\n\r\nEvropska unija i međunarodna zajednica pozivaju se da iskoriste sve raspoložive instrumente, uključujući ciljane sankcije.\r\n‘Podržavamo i vjerujemo u evropsku budućnost BiH’\r\n\r\nStalni izvjestilac EP-a o Bosni i Hercegovini Paulo Rangel ocijenio je da Izvještaj dolazi u ključnom trenutku i za zemlju, i za Evropu.\r\n\r\nNa svom Twitter nalogu poručuje: “Bosna i Hercegovina suočava se sa dva velika izazova koji dovode tu zemlju u institucionalnu slijepu ulicu: secesionističke aktivnosti i retorika čelništva RS-a te zastoj u pregovorima o Izbornom zakonu, koji mora poštivati evropsku i ustavnu jurisprudenciju. Ove blokade sprečavaju zemlju da se fokusira na ključne reforme koje je postavila Evropska komisija u 14 zahtjeva. Mnogo je posla.”\r\n\r\n“Mi podržavamo i vjerujemo u evropsku budućnost Bosne i Hercegovine, koja će donijeti mir i prosperitet svim njenim građanima”, piše u objavi izvjestioca.\r\n\r\nRangel je objavio da su 44 zastupnika glasala za Izvještaj o Bosni i Hercegovini, osam je bilo protiv, dok pet zastupnika nije prisustvovalo glasanju.\r\n   ',1,1),(58,'Najgora hrana za štitnjaču','2022-06-19','Štitnjača je važna žlijezda u dnu vašeg vrata.','resources/images/articles/1655657892.jpg','Postoji nekoliko vrsta bolesti štitnjače, kao što su hipertireoza, hipotireoza, tireoiditis i Hashimotov tireoiditis, a svi oni mogu biti uzrokovani različitim stvarima kao što je nedostatak joda ili čak genetika. Registrirana dijetetičarka Molly Hembree, članica medicinskog stručnog odbora na portalu Eatthis.com, napominje da je najčešće stanje štitnjače neaktivna štitnjača ili “hipotireoza”.\r\nVEZANE VIJESTI\r\nCristiano Ronaldo kune se u ovih pet prehrambenih navika\r\nLifestyle\r\n14. svi. 2022\r\n3\r\nŠto se događa s vašim tijelom ako izbacite mlijeko iz prehrane?\r\nLifestyle\r\n11. svi. 2022\r\n0\r\n\r\n“Često je glavna nuspojava hipotireoze debljanje”, kaže Hembree. “Ako nenadano dobijete na težini, osobito ako se čini da nije u skladu s trenutnim navikama u ishrani i vježbanju, važno je da razgovarate sa svojim liječnikom kako biste riješili sve temeljne probleme, što bi u nekim slučajevima moglo uključivati ​​hipotireozu.”\r\n\r\nObraćanje pažnje na ono što jedete može imati veliki utjecaj na stanje vaše štitnjače. “Goitrogeni su hrana koja sadrži spoj nazvan ‘goitrin’, koji može ometati sintezu hormona štitnjače, uz nedostatak joda”, kaže Hembree.\r\n\r\nPrema Hembree, goitrogeni uključuju nekuhano povrće križarica poput brokule, cvjetače i kupusa, kao i soju. Međutim, da biste se riješili nekih potencijalnih negativnih učinaka povrća, možete ga jednostavno zagrijati.\r\n\r\n“Zagrijavanje povrća križarica eliminira njegovu goitrogenu aktivnost”, kaže Hembree.\r\n\r\nU radu objavljenom u British Medical Journalu, istraživači su otkrili da uravnotežena prehrana igra važnu ulogu kada se usredotočite na probleme sa štitnjačom. Konzumiranje prekomjerne količine hrane u jednom smjeru uz isključivanje drugog može utjecati na rad vaše žlijezde. Na primjer, previše masti, vlakana i joda.\r\n\r\nTakođer, određeni neidentificirani hranjivi sastojci koji se nalaze u povrću mogu biti goitrogeni kada se unose u velikim količinama. Kao što je Hembree također navela, prisutni su u kupusu i drugim članovima obitelji Brassica.\r\n\r\nKao i uvijek, prije bilo kakve značajne promjene u prehrani, važno je konzultirati se sa svojim liječnikom.',2,0),(59,'Preskačete obroke?','2022-06-19','Neki zbog užurbnog rasporeda zaborave kad su zadnji put jeli...\r\n','resources/images/articles/1655657969.jpg','Preskakanje obroka na pravi način, koje se naziva i povremeni post, može imati brojne zdravstvene koristi, kao što je npr. gubitak kilograma, objašnjava nutricionistica i autorica knjige ‘Dijeta detox’, Brooke Alpert. Ali preskakanje obroka i povremeni post dvije su vrlo različite stvari. Preskakanje obroka da biste se lišili neke ugode ili pak kaznili – ili samo zato što ste previše zauzeti – razlikuje se od posta i negativno utječe na tijelo.\r\n\r\nZbog preskakanje obroka i ne konzumiranja dovoljno hrane tijekom dana može nam se doslovno vrtjeti u glavi. Možete osjećati vrtoglavicu, imati manjak energije, ili čak osjećati da bi se mogli onesvijestiti. “To je zbog pada glukoze u krvi,” kaže stručnjakinja za prehranu i autorica knjige ‘Eating in Color,’ Frances Largeman-Roth.\r\n\r\n“Kad ne nahranimo mozak, tijelo može dobivati signale da prestane sa svojim uobičajenim funkcijama zbog čega, ako ćete isprobati povremeni post, morate biti sigurni da to radite ispravno – po zadanom rasporedu – a kad jedete, da nadoknađujete hranu s kojom ćete izdržati do kraja posta.\r\nPrejedate se kod idućeg obroka\r\n\r\n“Kad preskačemo obroke, kasnije ćemo tijekom dana biti skloni prejedanju”, objašnjava nutricionistica Bonnie Taub-Dix, osnivačica portala BetterThanDieting.com i autorica knjige ‘Read it Before You’.\r\n\r\n“Ako podijelite obroke na više manjih u danu, tijelo će moći učinkovitije iskoristiti hranjive tvari. Gledajte na tijelo kao na prerađivača hrane: ako postepeno dodajete hranu, dobro će raditi svoj posao, ali ako ugurate tone hrane odjednom – recimo, nakon što preskočite obrok – neće biti učinkovito “, objasnila je.\r\n\r\n“Kako biste pomogli tijelu da pravilno funkcionira, jedite barem ​​tri uravnotežena obroka dnevno – i popijte zdravi napitak kad ste gladni između obroka”, savjetuje Taub-Dix, koja kaže da je najvažnije jesti po svom unutarnjem osjećaju, a ne po satu. A kad počnemo osjećati da se ni na što ne možemo skoncentrirati, vrijeme je da pojedemo nešto hranjivo.\r\n\r\nKad uporno preskačete obroke, šećer u krvi opada što može uvelike utjecati i na raspoloženje.\r\n\r\n“Glukoza je gorivo za mozak, a kad je nedostaje, možemo biti jako loše raspoloženi”, kaže Largeman-Roth. To je razlog zašto, ako preskačete obroke, ne treba pri idućem obroku pojesti bilo što, već nešto zdravo – jer su oni koji imaju nizak šećer u krvi skloni masnoj ili slatkoj hrani, budući da im tijelo počinje žudjeti za takvim namirnicama”, kaže nutricionistica.\r\nNe možete održati izgubljene kilograme\r\n\r\n“Ako mislite da je preskakanje obroka pametan način za održavanje gubitka kilograma, razmislite ponovo. Prirodno ćete konzumirati manje kalorija, ali vjerojatno i željeti krive stvari i početi grickati nezdravu hranu, što može dovesti do opasnog yo-yo efekta dijete.\r\n\r\nBudući da je vrijeme obroka postalo nepredvidivo, tijelo će zadržati sve što može i neće sagorijevati kalorije učinkovito. Isto tako, može tada proizvesti i manje leptina – hormona koji smanjuje apetit – pa će nam biti teže razaznati kad smo siti”, dodaje.\r\nZaključak\r\n\r\nNaravno, obrok možete preskočiti s vremena na vrijeme, ali ako to ne činite dosljedno, može negativno utjecati na zdravlje i dovesti do nedostataka važnih tvari u tijelu. Također, nećete moći ništa dobro raditi jer ćete biti usredotočeni na hranu. Ako imate poteškoća s jelom zbog hektičnog rasporeda, evo nekoliko savjeta za bolju organizaciju:\r\n\r\nPlanirajte obroke, ali ne morate pripremiti hranu za cijeli tjedan odjednom. Umjesto toga, pripremite hranjivi doručak noć prije, tako da imate za sljedeće jutro. Ako kuhate velik lonac juhe za večeru, spakirajte si zdjelu za ručak. Imajte na umu da su mnogi nadomjesci za obrok napravljeni s puno šećera i nemaju dovoljno bjelančevina ili vlakana, pa ih kombinirajte sa zdravim zalogajem – ponesite bananu, prirodni kikiriki maslac ili štapić od celera s hummusom.  Cilj je konzumirati između 325 do 400 kalorija, 15 do 25 grama proteina, pet grama vlakana i 10 do 13 grama zdravih nezasićenih masti pri svakom obroku”, piše Prevention.com, prenose 24 sata.',2,0),(60,'Volite vino?','2022-06-19','Vino u svim svojim varijantama, od crvenog i bijelog do pjenušavog...','resources/images/articles/1655658032.jpg','Možda pijete zdrave antioksidanse\r\n\r\nVino je puno antioksidansa potrebnih vašem tijelu. Kako navodi slavna kuharica i nutricionistica Sereni Poon, crno vino sadrži biljne polifenole, kao što su resveratrol, kvercetin i epikatehini.\r\nVEZANE VIJESTI\r\nHrana zbog koje se osjećamo sretno i ona zbog koje smo nesretni\r\nLifestyle\r\n15. lip. 2022\r\n0\r\n\r\n“Antioksidansi pomažu u zaštiti vaših stanica od oštećenja, koja mogu uzrokovati oksidativni stres koji dovodi do starenja stanica i razvijanja bolesti”, kaže. “Posebno se pokazalo da crno vino pomaže u prevenciji raka i dijabetesa.”\r\nMože biti dobro za vaše srce\r\n\r\nNa isti način, antioksidansi koji se nalaze u crnom vinu također pomažu zdravlju vašeg srca. Poon ukazuje na resveratrol, koji pomaže sprječavanju oštećenja krvnih stanica, čime se smanjuje “loš” kolesterol LDL i sprječava nastanak krvnih ugrušaka. “Smatra se da te prednosti pomažu u prevenciji koronarne bolesti srca”, napominje Poon.\r\nMože poboljšati – ili smanjiti – mušku plodnost\r\n\r\n“Zanimljivo je da resveratrol također može utjecati na plodnost muškaraca”, kaže Keith-Thomas Ayoob, izvanredni klinički profesor na Odjelu za pedijatriju na Albert Einstein College of Medicine.\r\n\r\n“Postojali su dokazi u korist crnog vina i protiv crnog vina, a zaključak je bio da jednostavno nema dovoljno jakih dokaza da se resveratrol preporuči za liječenje muške neplodnosti”, objašnjava. “Za probleme s plodnošću kod muškaraca, najbolje je potražiti pravu liječničku pomoć.”\r\nMože poremetiti san\r\n\r\nBudite oprezni ako vam večernja čaša vina postane navika. Kako Poon objašnjava, dok vas čaša ili dvije vina može učiniti umornim i pomoći da brzo zaspete, ljudi koji piju prije spavanja često doživljavaju više smetnji usred noći.\r\n\r\n“Jedna studija je otkrila da su muškarci koji su pili prije spavanja iskusili sveukupno lošu kvalitetu sna, poteškoće u održavanju sna, kraće ukupno trajanje sna i ukupno smanjenu subjektivnu kvalitetu sna”, objašnjava.\r\n\r\nZa najbolji, najmirniji san, prestanite piti između tri i šest sati prije nego što se ušuškate u krevet.\r\nMože potaknuti debljanje\r\n\r\nVino je puno kalorija. Između 100 i 150 po čaši – ali nema proteina ili vlakana. Kako kaže osobna trenerica Stephanie Mansour, to znači da vas ne ispunjava i može čak dovesti do gladi. Najbolje je uz večeru popiti čašu ili dvije vina, tako da zadovoljite sve prehrambene potrebe vašeg tijela, piše portal Eatthis.',2,0),(61,'Barcelona news','2022-06-19','Memphis Depay i Quincy Promes zaigrali su na jednoj nogometnoj utakmici u Gani.','resources/images/articles/1655658194.jpg','Poput brojnih drugih nogometnih zvijezda, Barcelonin Memphis Depay ovih dana uživa na odmoru prije nego mu započnu pripreme za novu sezonu.\r\n\r\nDepay je viđen na neočekivanoj lokaciji, u - Gani.\r\n\r\nKrilni napadač Barce u jednom je mjestu zaigrao nogomet s lokalnim zaljubljenicima u najpopularniji sport na svijetu. S njim u društvu bio je i Quincy Promes, nizozemski reprezentativac koji inače igra za Spartak iz Moskve.\r\n\r\nNjih dvojica su se zabavljala, a brojni gledatelji koji su se okupili oko terena uživali su u njihovim potezima.\r\n\r\nDepay je inače rođen u Nizozemskoj, njegov otac je Ganac, a majka Nizozemka. Promes nema veze s Ganom, ali je dobar prijatelj od Depaya i s njim je došao razveseliti lokalno stanovništvo.',3,0),(62,'Odšteta od 150 milijuna','2022-06-19','Real Madrid će u ljeto 2024. pokušati dovesti Erlinga Haalanda iz Manchester Cityja.','resources/images/articles/1655658240.jpg','Kylian Mbappe je izabrao ostanak u PSG-u, a Erling Haaland potpisao za Manchester City pa je tako Real Madrid izvisio u utrci za najtraženijim napadačima današnjice.\r\n\r\nNo, sudeći prema vijestima koje dolaze iz Španjolske, Kraljevski klub teško se miri s ovakvim razvojem događaja i već priprema bombastični transfer koji bi se mogao dogoditi za dvije godine.\r\n\r\nMadridski AS piše da je Realov plan dovesti Haalanda iz Cityja u ljeto 2024. godine na način da će iskoristiti klauzulu koju ima u svom nedavno potpisanom petogodišnjem ugovoru s prvacima Engleske.\r\nHaaland će u ljeto 2024. biti dostupan za samo 150 milijuna eura\r\n\r\nZa dvije godine na snagu će stupiti klauzula prema kojoj Haaland može napustiti Manchester City ukoliko netko plati odštetu od 150 milijuna eura. Taj iznos za Real, pogotovo ako se uzme u obzir o kakvom se napadaču radi, ne bi trebao predstavljati nikakav problem.\r\n\r\nPredsjednik Reala Florentino Perez u svom gostovanju u jednoj televizijskoj emisiji (El Chiringuito) praktički je potvrdio taj plan, kazavši kako bi bilo idealno da Haaland bude zamjena za Karima Benzemu.\r\n\r\nLegendarni Francuz ovih bi dana trebao potpisati novi ugovor s Realom, u trajanju do 30. lipnja 2024., a teško je očekivati da bi poslije tog datuma mogao i dalje predvoditi napad Kraljevskog kluba.\r\nOdšteta, bonus za potpis i plaća - sve bi moglo koštati oko 400 milijuna eura\r\n\r\n\"Ne bi imalo smisla da smo sada doveli Haalanda pa da on sjedi na klupi, jer Benzema je fenomenalan\", između ostalog je izjavio Perez.\r\n\r\nReal će, dakle, pokušati dovesti Haalanda za kojeg će morati pripremiti 150 milijuna eura odštete i još 30-ak milijuna eura za njegovu godišnju plaću. Tu je još i bonus koji mu se odmah isplaćuje samo za potpis ugovora.\r\n\r\nKad se sve skupa zbroji, eventualni Haalandov potpisa četverogodišnjeg ili petogodišnjeg ugovora s Realom u ljeto 2024. mogao bi Kraljevski klub koštati preko 300, možda i do 400 milijuna eura. Djeluje kao gigantska cifra, ali u biti to i nije golemi iznos s obzirom na današnje cifre u nogometu, tim više ako se nastavi Haalandov meterorski uspon u svijetu nogometa i on bude, kako to svi očekuju, najbolji nogometaš svijeta (uz Mbappea) za dvije godine.\r\n\r\nJasno, Manchester City sve ovo može spriječiti, tako što će u međuvremenu ponuditi Haalandu novi, poboljšani ugovor, u kojem ne bi postojala nikakva klauzula o visini odštete. ',3,0),(63,'Dinamova gesta','2022-06-19','Cibona je opterećena velikim dugovanjima, prijeti joj bankrot i gašenje.','resources/images/articles/1655658282.jpg','Osvajanje naslova prvaka Hrvatske odnosno peta utakmica finala sa Zadrom mogla bi biti posljednja utakmica koju je Cibona odigrala.\r\n\r\nVukovi s Tuškanca nalaze se u katastrofalnoj financijskoj situaciji, klupski dug mjeri se u desecima milijuna kuna i ovih dana polako istječe rok za rješavati te ogromne dubioze.\r\n\r\nMeđu Ciboninim vjerovnicima, osim brojnih igrača, trenera i zaposlenika, nalazi se i Dinamo koji im je svojedobno bio posudio novac kako bi prebrodili jednu od mnogobrojnih ranijih kriza.\r\n\r\nStoga su se iz Maksimira oglasili i najavili da dug koji Cibona prema njima ima neće stvarati nikakav problem. Između redova, Dinamo je najavio otpis duga.\r\n\r\nPriopćenje donosimo u cijelosti.\r\n\r\n\"Povodom aktualnih događanja oko košarkaškog kluba Cibona imamo potrebu pružiti snažnu podršku svakoj inicijativi koja će dovesti do stabilizacije našeg najtrofejnijeg košarkaškog kluba, zagrebačkog i hrvatskog sportskog ponosa.\r\n\r\nGNK Dinamo kao jedan od najvećih vjerovnika Cibone posebno naglašava da je spreman napraviti sve kako bi klubu i ljudima koji ga žele održati olakšao taj put te ćemo u tom smislu u budućnosti donijeti adekvatne odluke kojima dug Cibone prema Dinamu neće biti relevantan u planu oporavka kluba.\r\n\r\nPozivamo sve navijačice i navijače Dinama, Zagrepčanke i Zagrepčane koji vole Cibonu, kao i druge vjerovnike uključujući i Grad Zagreb, da naprave maksimalne napore i pomognu u stabilizaciji ovog simbola Zagreba i zagrebačkog sporta.\r\n\r\nGrađanski nogometni klub Dinamo\", poručuju iz Maksimirske 128.',3,0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (0,'undefined'),(1,'politika'),(2,'zdravlje'),(3,'sport');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korisnik`
--

DROP TABLE IF EXISTS `korisnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `korisnik` (
  `korisnickoIme` varchar(100) NOT NULL,
  `lozinka` char(255) DEFAULT NULL,
  `privilegeLevel` int(11) DEFAULT NULL,
  PRIMARY KEY (`korisnickoIme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korisnik`
--

LOCK TABLES `korisnik` WRITE;
/*!40000 ALTER TABLE `korisnik` DISABLE KEYS */;
INSERT INTO `korisnik` VALUES ('admin','$2y$10$YuT0hB7qHUqEEhARQHRGb.4KuRNG1qZsKMYDZN7On./OLz8yoE63a',1),('ivan','$2y$10$uT5eDzSieQxxAnTV5mPE/uvahbhHIntqFmtFJDiHJIOOGSTU8.BxW',0),('mmartin','$2y$10$7STjgW9mXZoNhqoL09VBpuHfekFasoFTgD3PSoPDsDZ69a50oWZLq',0);
/*!40000 ALTER TABLE `korisnik` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-19 19:08:08
