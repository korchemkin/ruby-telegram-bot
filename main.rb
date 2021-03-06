# ruby-telegram-bot v1.0 2017
# Author Dmitri Korchemkin
# license that can be found in the LICENSE file.
require_relative 'bot.rb'

token = 'SECRET_TOKEN'
responses = {
  '/start' => 'Hi, what a gemstone you want to see?',
  'actinolite' => 'https://en.wikipedia.org/wiki/Actinolite',
  'nephrite' => 'https://en.wikipedia.org/wiki/Nephrite',
  'adamite' => 'https://en.wikipedia.org/wiki/Adamite',
  'aegerine' => 'https://en.wikipedia.org/wiki/Aegerine',
  'afghanite' => 'https://en.wikipedia.org/wiki/Afghanite',
  'agate' => 'https://en.wikipedia.org/wiki/Agate',
  'dendritic' => 'https://en.wikipedia.org/wiki/Dendrite_(crystal)',
  'fire agate' => 'https://en.wikipedia.org/wiki/Fire_agate',
  'iris' => 'https://en.wikipedia.org/wiki/Chalcedony#Agate',
  'agrellite' => 'https://en.wikipedia.org/wiki/Agrellite',
  'albite' => 'https://en.wikipedia.org/wiki/Albite',
  'alexandrite' => 'https://en.wikipedia.org/wiki/Alexandrite',
  'alunite' => 'https://en.wikipedia.org/wiki/Alunite',
  'amblygonite' => 'https://en.wikipedia.org/wiki/Amblygonite',
  'ametrine' => 'https://en.wikipedia.org/wiki/Ametrine',
  'amethyst' => 'https://en.wikipedia.org/wiki/Amethyst',
  'analcime' => 'https://en.wikipedia.org/wiki/Analcime',
  'anatase' => 'https://en.wikipedia.org/wiki/Anatase',
  'andalusite' => 'https://en.wikipedia.org/wiki/Andalusite',
  'andesine' => 'https://en.wikipedia.org/wiki/Andesine',
  'anglesite' => 'https://en.wikipedia.org/wiki/Anglesite',
  'anhydrite' => 'https://en.wikipedia.org/wiki/Anhydrite',
  'annabergite' => 'https://en.wikipedia.org/wiki/Annabergite',
  'antigorite' => 'https://en.wikipedia.org/wiki/Antigorite',
  'aquamarine' => 'https://en.wikipedia.org/wiki/Beryl#Aquamarine_and_maxixe',
  'apophyllite' => 'https://en.wikipedia.org/wiki/Apophyllite',
  'apatite' => 'https://en.wikipedia.org/wiki/Apatite',
  'aragonite' => 'https://en.wikipedia.org/wiki/Aragonite',
  'arfvedsonite' => 'https://en.wikipedia.org/wiki/Arfvedsonite',
  'astrophyllite' => 'https://en.wikipedia.org/wiki/Astrophyllite',
  'atacamite' => 'https://en.wikipedia.org/wiki/Atacamite',
  'austinite' => 'https://en.wikipedia.org/wiki/Austinite',
  'axinite group' => 'https://en.wikipedia.org/wiki/Axinite',
  'ferroaxinite' => 'https://en.wikipedia.org/wiki/Ferroaxinite',
  'magnesioaxinite' => 'https://en.wikipedia.org/wiki/Magnesioaxinite',
  'manganaxinite' => 'https://en.wikipedia.org/wiki/Manganaxinite',
  'tinzenite' => 'https://en.wikipedia.org/wiki/Tinzenite',
  'azurite' => 'https://en.wikipedia.org/wiki/Azurite',
  'baryte' => 'https://en.wikipedia.org/wiki/Baryte',
  'bastnaesite' => 'https://en.wikipedia.org/wiki/Bastnaesite',
  'bayldonite' => 'https://en.wikipedia.org/wiki/Bayldonite',
  'benitoite' => 'https://en.wikipedia.org/wiki/Benitoite',
  'beryl' => 'https://en.wikipedia.org/wiki/Beryl',
  'bixbite' => 'https://en.wikipedia.org/wiki/Bixbite',
  'emerald' => 'https://en.wikipedia.org/wiki/Emerald',
  'green beryl' => 'https://en.wikipedia.org/wiki/Green_Beryl',
  'goshenite' => 'https://en.wikipedia.org/wiki/Goshenite',
  'golden beryl' => 'https://en.wikipedia.org/wiki/Golden_beryl',
  'heliodor' => 'https://en.wikipedia.org/wiki/Heliodor',
  'morganite' => 'https://en.wikipedia.org/wiki/Morganite',
  'beryllonite' => 'https://en.wikipedia.org/wiki/Beryllonite',
  'beudantite' => 'https://en.wikipedia.org/wiki/Beudantite',
  'biotite' => 'https://en.wikipedia.org/wiki/Biotite',
  'boleite' => 'https://en.wikipedia.org/wiki/Boleite',
  'boracite' => 'https://en.wikipedia.org/wiki/Boracite',
  'bornite' => 'https://en.wikipedia.org/wiki/Bornite',
  'bowenite' => 'https://en.wikipedia.org/wiki/Bowenite',
  'brazilianite' => 'https://en.wikipedia.org/wiki/Brazilianite',
  'bronzite' => 'https://en.wikipedia.org/wiki/Bronzite',
  'brookite' => 'https://en.wikipedia.org/wiki/Brookite',
  'brucite' => 'https://en.wikipedia.org/wiki/Brucite',
  'bustamite' => 'https://en.wikipedia.org/wiki/Bustamite',
  'bytownite' => 'https://en.wikipedia.org/wiki/Bytownite',
  'calcite' => 'https://en.wikipedia.org/wiki/Calcite',
  'cobaltocalcite' => 'https://en.wikipedia.org/w/index.php?title=Cobaltocalcite&action=edit&redlink=1',
  'manganocalcite' => 'https://en.wikipedia.org/wiki/Manganocalcite',
  'caledonite' => 'https://en.wikipedia.org/wiki/Caledonite',
  'cancrinite' => 'https://en.wikipedia.org/wiki/Cancrinite',
  'vishnevite' => 'https://en.wikipedia.org/wiki/Vishnevite',
  'carletonite' => 'https://en.wikipedia.org/wiki/Carletonite',
  'carnallite' => 'https://en.wikipedia.org/wiki/Carnallite',
  'carnelian' => 'https://en.wikipedia.org/wiki/Carnelian',
  'cassiterite' => 'https://en.wikipedia.org/wiki/Cassiterite',
  'cavansite' => 'https://en.wikipedia.org/wiki/Cavansite',
  'celestite' => 'https://en.wikipedia.org/wiki/Celestite',
  'cerussite' => 'https://en.wikipedia.org/wiki/Cerussite',
  'chabazite' => 'https://en.wikipedia.org/wiki/Chabazite',
  'chalcopyrite' => 'https://en.wikipedia.org/wiki/Chalcopyrite',
  'chambersite' => 'https://en.wikipedia.org/wiki/Chambersite',
  'charlesite' => 'https://en.wikipedia.org/wiki/Charlesite',
  'charoite' => 'https://en.wikipedia.org/wiki/Charoite',
  'childrenite' => 'https://en.wikipedia.org/wiki/Childrenite',
  'chloromelanite' => 'https://en.wikipedia.org/wiki/Chloromelanite',
  'chondrodite' => 'https://en.wikipedia.org/wiki/Chondrodite',
  'chrysoberyl' => 'https://en.wikipedia.org/wiki/Chrysoberyl',
  'cymophane' => 'https://en.wikipedia.org/wiki/Cymophane',
  'chromite' => 'https://en.wikipedia.org/wiki/Chromite',
  'chrysocolla' => 'https://en.wikipedia.org/wiki/Chrysocolla',
  'chrysotile' => 'https://en.wikipedia.org/wiki/Chrysotile',
  'cinnabar' => 'https://en.wikipedia.org/wiki/Cinnabar',
  'citrine' => 'https://en.wikipedia.org/wiki/Citrine',
  'clinochlore' => 'https://en.wikipedia.org/wiki/Clinochlore',
  'kammererite' => 'https://en.wikipedia.org/w/index.php?title=Kammererite&action=edit&redlink=1',
  'clinohumite' => 'https://en.wikipedia.org/wiki/Clinohumite',
  'clinozoisite' => 'https://en.wikipedia.org/wiki/Clinozoisite',
  'clintonite' => 'https://en.wikipedia.org/wiki/Clintonite',
  'cordierite' => 'https://en.wikipedia.org/wiki/Cordierite',
  'iolite' => 'https://en.wikipedia.org/wiki/Iolite',
  'corundum' => 'https://en.wikipedia.org/wiki/Corundum',
  'ruby' => 'https://en.wikipedia.org/wiki/Ruby',
  'sapphire' => 'https://en.wikipedia.org/wiki/Sapphire',
  'covellite' => 'https://en.wikipedia.org/wiki/Covellite',
  'creedite' => 'https://en.wikipedia.org/wiki/Creedite',
  'cryolite' => 'https://en.wikipedia.org/wiki/Cryolite',
  'cuprite' => 'https://en.wikipedia.org/wiki/Cuprite',
  'danburite' => 'https://en.wikipedia.org/wiki/Danburite',
  'datolite' => 'https://en.wikipedia.org/wiki/Datolite',
  'diamond' => 'https://en.wikipedia.org/wiki/Diamond',
  'diaspore' => 'https://en.wikipedia.org/wiki/Diaspore',
  'diopside' => 'https://en.wikipedia.org/wiki/Diopside',
  'dioptase' => 'https://en.wikipedia.org/wiki/Dioptase',
  'dolomite' => 'https://en.wikipedia.org/wiki/Dolomite',
  'dravite' => 'https://en.wikipedia.org/wiki/Dravite',
  'dumortierite' => 'https://en.wikipedia.org/wiki/Dumortierite',
  'elbaite' => 'https://en.wikipedia.org/wiki/Elbaite',
  'trapiche emerald' => 'https://en.wikipedia.org/wiki/Trapiche_emerald',
  'enstatite' => 'https://en.wikipedia.org/wiki/Enstatite',
  'hypersthene' => 'https://en.wikipedia.org/wiki/Hypersthene',
  'eosphorite' => 'https://en.wikipedia.org/wiki/Eosphorite',
  'epidote' => 'https://en.wikipedia.org/wiki/Epidote',
  'piemontite' => 'https://en.wikipedia.org/wiki/Piemontite',
  'erythrite' => 'https://en.wikipedia.org/wiki/Erythrite',
  'esperite' => 'https://en.wikipedia.org/wiki/Esperite',
  'ettringite' => 'https://en.wikipedia.org/wiki/Ettringite',
  'eudialyte' => 'https://en.wikipedia.org/wiki/Eudialyte',
  'fayalite' => 'https://en.wikipedia.org/wiki/Fayalite',
  'feldspar' => 'https://en.wikipedia.org/wiki/Feldspar',
  'anorthite' => 'https://en.wikipedia.org/wiki/Anorthite',
  'amazonite' => 'https://en.wikipedia.org/wiki/Amazonite',
  'labradorite' => 'https://en.wikipedia.org/wiki/Labradorite',
  'orthoclase' => 'https://en.wikipedia.org/wiki/Orthoclase',
  'moonstone' => 'https://en.wikipedia.org/wiki/Moonstone_(gemstone)',
  'sunstone' => 'https://en.wikipedia.org/wiki/Sunstone',
  'fluorapatite' => 'https://en.wikipedia.org/wiki/Fluorapatite',
  'fluorapophyllite' => 'https://en.wikipedia.org/wiki/Fluorapophyllite',
  'fluorite' => 'https://en.wikipedia.org/wiki/Fluorite',
  'forsterite' => 'https://en.wikipedia.org/wiki/Forsterite',
  'friedelite' => 'https://en.wikipedia.org/w/index.php?title=Friedelite&action=edit&redlink=1',
  'gahnite' => 'https://en.wikipedia.org/wiki/Gahnite',
  'garnet group:' => 'https://en.wikipedia.org/wiki/Garnet',
  'almandine' => 'https://en.wikipedia.org/wiki/Almandine',
  'andradite' => 'https://en.wikipedia.org/wiki/Andradite',
  'demantoid' => 'https://en.wikipedia.org/wiki/Demantoid',
  'melanite' => 'https://en.wikipedia.org/wiki/Melanite',
  'topazolite' => 'https://en.wikipedia.org/wiki/Topazolite',
  'color change' => 'https://en.wikipedia.org/wiki/Garnet#Pyrope.E2.80.93spessartine_.28blue_garnet_or_color-change_garnet.29',
  'grossular' => 'https://en.wikipedia.org/wiki/Grossular',
  'hessonite' => 'https://en.wikipedia.org/wiki/Hessonite',
  'imperial' => 'https://en.wikipedia.org/w/index.php?title=Imperial_(mineral)&action=edit&redlink=1',
  'leuco' => 'https://en.wikipedia.org/w/index.php?title=Leuco&action=edit&redlink=1',
  'rosolite' => 'https://en.wikipedia.org/w/index.php?title=Rosolite&action=edit&redlink=1',
  'tsavorite' => 'https://en.wikipedia.org/wiki/Tsavorite',
  'malaya' => 'https://en.wikipedia.org/wiki/Malaia_garnet',
  'pyrope' => 'https://en.wikipedia.org/wiki/Pyrope',
  'rhodolite' => 'https://en.wikipedia.org/wiki/Rhodolite',
  'spessartite' => 'https://en.wikipedia.org/wiki/Spessartite',
  'uvarovite' => 'https://en.wikipedia.org/wiki/Uvarovite',
  'gaspeite' => 'https://en.wikipedia.org/wiki/Gaspeite',
  'gaylussite' => 'https://en.wikipedia.org/wiki/Gaylussite',
  'gibbsite' => 'https://en.wikipedia.org/wiki/Gibbsite',
  'glaucophane' => 'https://en.wikipedia.org/wiki/Glaucophane',
  'goethite' => 'https://en.wikipedia.org/wiki/Goethite',
  'goosecreekite' => 'https://en.wikipedia.org/wiki/Goosecreekite',
  'grandidierite' => 'https://en.wikipedia.org/wiki/Grandidierite',
  'gypsum' => 'https://en.wikipedia.org/wiki/Gypsum',
  'gyrolite' => 'https://en.wikipedia.org/wiki/Gyrolite',
  'hackmanite' => 'https://en.wikipedia.org/wiki/Hackmanite',
  'halite' => 'https://en.wikipedia.org/wiki/Halite',
  'hambergite' => 'https://en.wikipedia.org/wiki/Hambergite',
  'hanksite' => 'https://en.wikipedia.org/wiki/Hanksite',
  'hardystonite' => 'https://en.wikipedia.org/wiki/Hardystonite',
  'hauyne' => 'https://en.wikipedia.org/wiki/Hauyne',
  'hematite' => 'https://en.wikipedia.org/wiki/Hematite',
  'hemimorphite' => 'https://en.wikipedia.org/wiki/Hemimorphite',
  'herderite' => 'https://en.wikipedia.org/wiki/Herderite',
  'hexagonite' => 'https://en.wikipedia.org/wiki/Hexagonite',
  'hibonite' => 'https://en.wikipedia.org/wiki/Hibonite',
  'hiddenite' => 'https://en.wikipedia.org/wiki/Hiddenite',
  'hodgkinsonite' => 'https://en.wikipedia.org/wiki/Hodgkinsonite',
  'humite' => 'https://en.wikipedia.org/wiki/Humite',
  'inderite' => 'https://en.wikipedia.org/w/index.php?title=Inderite&action=edit&redlink=1',
  'indialite' => 'https://en.wikipedia.org/w/index.php?title=Indialite&action=edit&redlink=1',
  'jadeite' => 'https://en.wikipedia.org/wiki/Jadeite',
  'jasper' => 'https://en.wikipedia.org/wiki/Jasper',
  'mookaite' => 'https://en.wikipedia.org/wiki/Mookaite',
  'jeremejevite' => 'https://en.wikipedia.org/wiki/Jeremejevite',
  'kainite' => 'https://en.wikipedia.org/wiki/Kainite',
  'kornerupine' => 'https://en.wikipedia.org/wiki/Kornerupine',
  'kunzite' => 'https://en.wikipedia.org/wiki/Kunzite',
  'kutnohorite' => 'https://en.wikipedia.org/wiki/Kutnohorite',
  'kurnakovite' => 'https://en.wikipedia.org/wiki/Kurnakovite',
  'kyanite' => 'https://en.wikipedia.org/wiki/Kyanite',
  'langbeinite' => 'https://en.wikipedia.org/wiki/Langbeinite',
  'larimar' => 'https://en.wikipedia.org/wiki/Larimar',
  'lawsonite' => 'https://en.wikipedia.org/wiki/Lawsonite',
  'lazurite' => 'https://en.wikipedia.org/wiki/Lazurite',
  'legrandite' => 'https://en.wikipedia.org/wiki/Legrandite',
  'lepidolite' => 'https://en.wikipedia.org/wiki/Lepidolite',
  'leucite' => 'https://en.wikipedia.org/wiki/Leucite',
  'leucophanite' => 'https://en.wikipedia.org/wiki/Leucophanite',
  'linarite' => 'https://en.wikipedia.org/wiki/Linarite',
  'lizardite' => 'https://en.wikipedia.org/wiki/Lizardite',
  'londonite' => 'https://en.wikipedia.org/wiki/Londonite',
  'ludlamite' => 'https://en.wikipedia.org/wiki/Ludlamite',
  'magnesite' => 'https://en.wikipedia.org/wiki/Magnesite',
  'malachite' => 'https://en.wikipedia.org/wiki/Malachite',
  'marialite' => 'https://en.wikipedia.org/wiki/Marialite',
  'meionite' => 'https://en.wikipedia.org/wiki/Meionite',
  'wernerite' => 'https://en.wikipedia.org/wiki/Wernerite',
  'milarite' => 'https://en.wikipedia.org/w/index.php?title=Milarite&action=edit&redlink=1',
  'mimetite' => 'https://en.wikipedia.org/wiki/Mimetite',
  'moissanite' => 'https://en.wikipedia.org/wiki/Moissanite',
  'adularia' => 'https://en.wikipedia.org/wiki/Adularia',
  'rainbow' => 'https://en.wikipedia.org/wiki/Moonstone_(gemstone)',
  'mottramite' => 'https://en.wikipedia.org/wiki/Mottramite',
  'muscovite' => 'https://en.wikipedia.org/wiki/Muscovite',
  'fuchsite' => 'https://en.wikipedia.org/wiki/Fuchsite',
  'musgravite' => 'https://en.wikipedia.org/wiki/Musgravite',
  'narsarsukite' => 'https://en.wikipedia.org/wiki/Narsarsukite',
  'natrolite' => 'https://en.wikipedia.org/wiki/Natrolite',
  'nepheline' => 'https://en.wikipedia.org/wiki/Nepheline',
  'neptunite' => 'https://en.wikipedia.org/wiki/Neptunite',
  'nickeline' => 'https://en.wikipedia.org/wiki/Nickeline',
  'nuummite' => 'https://en.wikipedia.org/wiki/Nuummite',
  'olenite' => 'https://en.wikipedia.org/wiki/Olenite',
  'opal' => 'https://en.wikipedia.org/wiki/Opal',
  'papagoite' => 'https://en.wikipedia.org/wiki/Papagoite',
  'pargasite' => 'https://en.wikipedia.org/wiki/Pargasite',
  'pectolite' => 'https://en.wikipedia.org/wiki/Pectolite',
  'peridot' => 'https://en.wikipedia.org/wiki/Peridot',
  'periclase' => 'https://en.wikipedia.org/wiki/Periclase',
  'petalite' => 'https://en.wikipedia.org/wiki/Petalite',
  'pezzottaite' => 'https://en.wikipedia.org/wiki/Pezzottaite',
  'phenakite' => 'https://en.wikipedia.org/wiki/Phenakite',
  'phlogopite' => 'https://en.wikipedia.org/wiki/Phlogopite',
  'phosgenite' => 'https://en.wikipedia.org/wiki/Phosgenite',
  'phosphosiderite' => 'https://en.wikipedia.org/w/index.php?title=Phosphosiderite&action=edit&redlink=1',
  'pietersite' => 'https://en.wikipedia.org/wiki/Pietersite',
  'plumbogummite' => 'https://en.wikipedia.org/wiki/Plumbogummite',
  'pollucite' => 'https://en.wikipedia.org/wiki/Pollucite',
  'polyhalite' => 'https://en.wikipedia.org/wiki/Polyhalite',
  'poudretteite' => 'https://en.wikipedia.org/wiki/Poudretteite',
  'prasiolite' => 'https://en.wikipedia.org/wiki/Prasiolite',
  'prehnite' => 'https://en.wikipedia.org/wiki/Prehnite',
  'priceite' => 'https://en.wikipedia.org/w/index.php?title=Priceite&action=edit&redlink=1',
  'prismatine' => 'https://en.wikipedia.org/wiki/Prismatine',
  'proustite' => 'https://en.wikipedia.org/wiki/Proustite',
  'pumpellyite' => 'https://en.wikipedia.org/wiki/Pumpellyite',
  'chlorastrolite' => 'https://en.wikipedia.org/wiki/Chlorastrolite',
  'purpurite' => 'https://en.wikipedia.org/wiki/Purpurite',
  'pyrite' => 'https://en.wikipedia.org/wiki/Pyrite',
  'pyrargyrite' => 'https://en.wikipedia.org/wiki/Pyrargyrite',
  'pyromorphite' => 'https://en.wikipedia.org/wiki/Pyromorphite',
  'pyrrhotite' => 'https://en.wikipedia.org/wiki/Pyrrhotite',
  'quartz' => 'https://en.wikipedia.org/wiki/Quartz',
  'chalcedony' => 'https://en.wikipedia.org/wiki/Chalcedony',
  'druzy' => 'https://en.wikipedia.org/wiki/Druzy',
  'flint' => 'https://en.wikipedia.org/wiki/Flint',
  "hawk's eye" => 'https://en.wikipedia.org/wiki/Quartz',
  'milky quartz' => 'https://en.wikipedia.org/wiki/Milky_quartz',
  'rock crystal' => 'https://en.wikipedia.org/wiki/Rock_crystal',
  'smoky quartz' => 'https://en.wikipedia.org/wiki/Smoky_quartz',
  "tiger's-eye" => 'https://en.wikipedia.org/wiki/Tiger%27s-eye',
  'richterite' => 'https://en.wikipedia.org/wiki/Richterite',
  'rose quartz' => 'https://en.wikipedia.org/wiki/Rose_quartz',
  'rhodizite' => 'https://en.wikipedia.org/wiki/Rhodizite',
  'rhodochrosite' => 'https://en.wikipedia.org/wiki/Rhodochrosite',
  'riebeckite' => 'https://en.wikipedia.org/wiki/Riebeckite',
  'crocidolite' => 'https://en.wikipedia.org/wiki/Crocidolite',
  'rosasite' => 'https://en.wikipedia.org/wiki/Rosasite',
  'rutile' => 'https://en.wikipedia.org/wiki/Rutile',
  'scapolite' => 'https://en.wikipedia.org/wiki/Scapolite',
  'scheelite' => 'https://en.wikipedia.org/wiki/Scheelite',
  'scolecite' => 'https://en.wikipedia.org/wiki/Scolecite',
  'scorodite' => 'https://en.wikipedia.org/wiki/Scorodite',
  'selenite' => 'https://en.wikipedia.org/wiki/Selenite_(mineral)',
  'sellaite' => 'https://en.wikipedia.org/wiki/Sellaite',
  'senarmontite' => 'https://en.wikipedia.org/wiki/Senarmontite',
  'serandite' => 'https://en.wikipedia.org/wiki/S%C3%A9randite',
  'seraphinite' => 'https://en.wikipedia.org/wiki/Seraphinite',
  'serendibite' => 'https://en.wikipedia.org/wiki/Serendibite',
  'serpentine subgroup' => 'https://en.wikipedia.org/wiki/Serpentine_subgroup',
  'stichtite' => 'https://en.wikipedia.org/wiki/Stichtite',
  'williamsite' => 'https://en.wikipedia.org/w/index.php?title=Williamsite&action=edit&redlink=1',
  'shattuckite' => 'https://en.wikipedia.org/wiki/Shattuckite',
  'shigaite' => 'https://en.wikipedia.org/wiki/Shigaite',
  'shortite' => 'https://en.wikipedia.org/wiki/Shortite',
  'shungite' => 'https://en.wikipedia.org/wiki/Shungite',
  'siderite' => 'https://en.wikipedia.org/wiki/Siderite',
  'sillimanite' => 'https://en.wikipedia.org/wiki/Sillimanite',
  'sinhalite' => 'https://en.wikipedia.org/w/index.php?title=Sinhalite&action=edit&redlink=1',
  'smaragdite' => 'https://en.wikipedia.org/w/index.php?title=Smaragdite&action=edit&redlink=1',
  'smithsonite' => 'https://en.wikipedia.org/wiki/Smithsonite',
  'sodalite' => 'https://en.wikipedia.org/wiki/Sodalite',
  'spinel' => 'https://en.wikipedia.org/wiki/Spinel',
  'ceylonite' => 'https://en.wikipedia.org/wiki/Ceylonite',
  'spodumene' => 'https://en.wikipedia.org/wiki/Spodumene',
  'staurolite' => 'https://en.wikipedia.org/wiki/Staurolite',
  'sulfur' => 'https://en.wikipedia.org/wiki/Sulfur',
  'stolzite' => 'https://en.wikipedia.org/wiki/Stolzite',
  'sugilite' => 'https://en.wikipedia.org/wiki/Sugilite',
  'svabite' => 'https://en.wikipedia.org/w/index.php?title=Svabite&action=edit&redlink=1',
  'sylvite' => 'https://en.wikipedia.org/wiki/Sylvite',
  'taaffeite' => 'https://en.wikipedia.org/wiki/Taaffeite',
  'talc' => 'https://en.wikipedia.org/wiki/Talc',
  'tantalite' => 'https://en.wikipedia.org/wiki/Tantalite',
  'thalenite' => 'https://en.wikipedia.org/w/index.php?title=Thalenite&action=edit&redlink=1',
  'thomsonite' => 'https://en.wikipedia.org/wiki/Thomsonite',
  'thaumasite' => 'https://en.wikipedia.org/wiki/Thaumasite',
  'tinaksite' => 'https://en.wikipedia.org/wiki/Tinaksite',
  'titanite' => 'https://en.wikipedia.org/wiki/Titanite',
  'topaz' => 'https://en.wikipedia.org/wiki/Topaz',
  'achroite' => 'https://en.wikipedia.org/wiki/Tourmaline#Species_and_varieties',
  'chrome' => 'https://en.wikipedia.org/wiki/Tourmaline#Africa',
  'multicolored' => 'https://en.wikipedia.org/wiki/Multicolored',
  'paraiba' => 'https://en.wikipedia.org/wiki/Tourmaline#Brazil',
  'rossmanite' => 'https://en.wikipedia.org/wiki/Rossmanite',
  'rubellite' => 'https://en.wikipedia.org/wiki/Rubellite',
  'tremolite' => 'https://en.wikipedia.org/wiki/Tremolite',
  'tugtupite' => 'https://en.wikipedia.org/wiki/Tugtupite',
  'turquoise' => 'https://en.wikipedia.org/wiki/Turquoise',
  'vanadinite' => 'https://en.wikipedia.org/wiki/Vanadinite',
  'endlichite' => 'https://en.wikipedia.org/w/index.php?title=Endlichite&action=edit&redlink=1',
  'variscite' => 'https://en.wikipedia.org/wiki/Variscite',
  'vayrynenite' => 'https://en.wikipedia.org/wiki/V%C3%A4yrynenite',
  'vesuvianite' => 'https://en.wikipedia.org/wiki/Vesuvianite',
  'californite' => 'https://en.wikipedia.org/wiki/Californite',
  'villiaumite' => 'https://en.wikipedia.org/wiki/Villiaumite',
  'vlasovite' => 'https://en.wikipedia.org/wiki/Vlasovite',
  'wavellite' => 'https://en.wikipedia.org/wiki/Wavellite',
  'weberite' => 'https://en.wikipedia.org/w/index.php?title=Weberite&action=edit&redlink=1',
  'weloganite' => 'https://en.wikipedia.org/wiki/Weloganite',
  'willemite' => 'https://en.wikipedia.org/wiki/Willemite',
  'wolfenite' => 'https://en.wikipedia.org/wiki/Wolfenite',
  'xonotlite' => 'https://en.wikipedia.org/wiki/Xonotlite',
  'zektzerite' => 'https://en.wikipedia.org/wiki/Zektzerite',
  'zeolites' => 'https://en.wikipedia.org/wiki/Zeolites',
  'analcite' => 'https://en.wikipedia.org/wiki/Analcite',
  'stellarite' => 'https://en.wikipedia.org/wiki/Stellarite',
  'yugawaralite' => 'https://en.wikipedia.org/w/index.php?title=Yugawaralite&action=edit&redlink=1',
  'zincite' => 'https://en.wikipedia.org/wiki/Zincite',
  'zinnwaldite' => 'https://en.wikipedia.org/wiki/Zinnwaldite',
  'zircon' => 'https://en.wikipedia.org/wiki/Zircon',
  'jacinth' => 'https://en.wikipedia.org/wiki/Jacinth',
  'zoisite' => 'https://en.wikipedia.org/wiki/Zoisite',
  'tanzanite' => 'https://en.wikipedia.org/wiki/Tanzanite',
  'thulite' => 'https://en.wikipedia.org/wiki/Thulite',
  'zultanite' => 'https://en.wikipedia.org/wiki/Zultanite',
  'cubic zirconia' => 'https://en.wikipedia.org/wiki/Cubic_zirconia',
  'fordite' => 'https://en.wikipedia.org/wiki/Fordite',
  'trinitite' => 'https://en.wikipedia.org/wiki/Trinitite',
  'yttrium aluminium garnet' => 'https://en.wikipedia.org/wiki/Yttrium_aluminium_garnet#Gemstone_YAG',
  'anyolite' => 'https://en.wikipedia.org/wiki/Anyolite',
  'bauxite' => 'https://en.wikipedia.org/wiki/Bauxite',
  'bloodstone' => 'https://en.wikipedia.org/wiki/Heliotrope_(mineral)',
  'eilat stone' => 'https://en.wikipedia.org/wiki/Eilat_stone',
  'epidosite' => 'https://en.wikipedia.org/wiki/Epidosite',
  'iddingsite' => 'https://en.wikipedia.org/wiki/Iddingsite',
  'llanite' => 'https://en.wikipedia.org/wiki/Llanite',
  'lapis lazuli' => 'https://en.wikipedia.org/wiki/Lapis_lazuli',
  'maw sit sit' => 'https://en.wikipedia.org/wiki/Maw_sit_sit',
  'pallasite' => 'https://en.wikipedia.org/wiki/Pallasite',
  'peridotite' => 'https://en.wikipedia.org/wiki/Peridotite',
  'obsidian' => 'https://en.wikipedia.org/wiki/Obsidian',
  'volcanic glass' => 'https://en.wikipedia.org/wiki/Volcanic_glass',
  'apache tears' => 'https://en.wikipedia.org/wiki/Apache_tears',
  'helenite' => 'https://en.wikipedia.org/wiki/Helenite',
  'libyan desert glass' => 'https://en.wikipedia.org/wiki/Libyan_desert_glass',
  'moldavite' => 'https://en.wikipedia.org/wiki/Moldavite',
  'soapstone' => 'https://en.wikipedia.org/wiki/Soapstone',
  'tactite' => 'https://en.wikipedia.org/wiki/Tactite',
  'unakite' => 'https://en.wikipedia.org/wiki/Unakite',
  'ajoite' => 'https://en.wikipedia.org/wiki/Ajoite',
  'cacoxenite' => 'https://en.wikipedia.org/wiki/Cacoxenite',
  'chlorite' => 'https://en.wikipedia.org/wiki/Chlorite',
  'edenite' => 'https://en.wikipedia.org/wiki/Edenite',
  'galena' => 'https://en.wikipedia.org/wiki/Galena',
  'gold' => 'https://en.wikipedia.org/wiki/Gold',
  'hollandite' => 'https://en.wikipedia.org/wiki/Hollandite',
  'lepidocrocite' => 'https://en.wikipedia.org/wiki/Lepidocrocite',
  'silver' => 'https://en.wikipedia.org/wiki/Silver',
  'tourmaline' => 'https://en.wikipedia.org/wiki/Tourmaline'
}

bot = TelegramBot::Bot.new(token, responses)
bot.start
