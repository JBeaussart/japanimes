require "open-uri"

puts "---------------------"
puts "Cleaning database"
User.destroy_all
Anime.destroy_all

puts "---------------------"
puts "Creating Users"
User.create!(email: "user@gmail.com", password: "password")

puts "---------------------"
puts "Creating Animes"

# 1--------------------------------------------------------------------------------------------------------
file = URI.open('https://fr.web.img5.acsta.net/pictures/18/01/18/14/35/2024405.jpg')
anime = Anime.create!(
  title: "Death note", 
  description: "Light Yagami est un lycéen surdoué qui juge le monde actuel criminel, pourri et corrompu. Sa vie change du tout au tout le jour où il ramasse par hasard un mystérieux cahier intitulé « Death Note ». Son mode d'emploi indique que « la personne dont le nom est écrit dans ce cahier meurt ». D'abord sceptique, Light décide toutefois de tester le cahier et découvre que son pouvoir est bien réel. Il rencontre l'ancien propriétaire du Death Note, un dieu de la mort nommé Ryûk. Celui-ci déclare avoir volontairement laissé tomber son carnet dans le but de se divertir...", 
  parution_date: "01/12/2003", 
  category: "Thriller psychologique", 
  streaming_service: "netflix", 
  rating: 4
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'deathnote.png', content_type: 'image/png')
# 2--------------------------------------------------------------------------------------------------------
file = URI.open('https://d2y6mqrpjbqoe6.cloudfront.net/image/upload/f_auto,q_auto/media/library-400/186_636964446993572590SNK_S1_Small_FR_hq.jpg')
anime = Anime.create!(
  title: "L'attaque des titans", 
  description: "Dans un monde ravagé par des titans mangeurs d’homme depuis plus d’un siècle, les rares survivants de l’Humanité n’ont d’autre choix pour survivre que de se barricader dans une cité-forteresse. Le jeune Eren, témoin de la mort de sa mère dévorée par un titan, n’a qu’un rêve : entrer dans le corps d’élite chargé de découvrir l’origine des titans, et les annihiler jusqu’au dernier...", 
  parution_date: "07/04/2013", 
  category: "Action", 
  streaming_service: "netflix", 
  rating: 3
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'attaque des titans.png', content_type: 'image/png')
# 3--------------------------------------------------------------------------------------------------------
file = URI.open('https://d2y6mqrpjbqoe6.cloudfront.net/image/upload/f_auto,q_auto/media/library-400/57_636979453324981292Fire%20Force_Small_hq.jpg')
anime = Anime.create!(
  title: "Fire force", 
  description: "Tokyo brûle, et dans toute la ville, des citoyens sont victimes de combustion spontanée. La Fire Force, brigade en charge d’éteindre ce brasier compte une nouvelle recrue dans ses rangs, le jeune Shinra. Au sein de la 8e brigade, il fera bon usage de ses pieds de feu pour empêcher la ville d’être réduite en cendres. Mais un secret brûlant et un passé ardent pourraient bien venir mettre le feu aux poudres !", 
  parution_date: "05/07/2019", 
  category: "Action", 
  streaming_service: "wakanim", 
  rating: 4
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'fire force.png', content_type: 'image/png')
# 4--------------------------------------------------------------------------------------------------------
file = URI.open('https://d2y6mqrpjbqoe6.cloudfront.net/image/upload/f_auto,q_auto/media/library-400/41_636822051567388188PN_Small_hq.jpg')
anime = Anime.create!(
  title: "The promised neverland", 
  description: "Celle qu’ils aiment comme leur mère n’est pas leur vraie maman. Les enfants qui vivent tous ensemble dans ce lieu ne sont pas vraiment frères et sœurs. Gracefield House est un orphelinat, une maison unique en son genre où s’épanouissent trente-huit frères et sœurs sans liens de sang, élevés par Maman. Cependant, leur charmant quotidien va brutalement prendre fin…", 
  parution_date: "09/01/2019", 
  category: "aventure", 
  streaming_service: "wakanim", 
  rating: 4
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'the promised nerverland.png', content_type: 'image/png')
# 5--------------------------------------------------------------------------------------------------------
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81Cr46R95HL._AC_SL1500_.jpg')
anime = Anime.create!(
  title: "Black Clover", 
  description: "Dans un monde régi par la magie, Yuno et Asta ont grandi ensemble avec un seul but en tête : devenir le prochain Empereur-Mage du royaume de Clover.", 
  parution_date: "16/02/2015", 
  category: "fantastique", 
  streaming_service: "crunchyroll", 
  rating: 3
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'black clover.png', content_type: 'image/png')
# 6--------------------------------------------------------------------------------------------------------
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81wsTX07XaL.jpg')
anime = Anime.create!(
  title: "Sky high survival", 
  description: "Dans un monde régi par la magie, Yuno et Asta ont grandi ensemble avec un seul but en tête : devenir le prochain Empereur-Mage du royaume de Clover.", 
  parution_date: "04/12/2013", 
  category: "horreur", 
  streaming_service: "netflix", 
  rating: 5
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'sky high survival.png', content_type: 'image/png')
# 7--------------------------------------------------------------------------------------------------------
file = URI.open('https://img1.ak.crunchyroll.com/i/spire3/02c909684baa37d6ef70a9df742d58951610752067_full.jpg')
anime = Anime.create!(
  title: "Jujutsu kaisen", 
  description: "Souffrance, regrets, humiliations... les sentiments négatifs que ressentent les humains se transforment peu à peu en fléaux se cachant dans notre existence. Sévissant dans le monde entier, ils sont capables d'entraîner les gens dans de terribles malheurs et, parfois même, jusqu'à la mort.", 
  parution_date: "05/03/2018", 
  category: "shonen", 
  streaming_service: "crunchyroll", 
  rating: 2
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'jujutsu kaisen.png', content_type: 'image/png')
# 8--------------------------------------------------------------------------------------------------------
file = URI.open('https://img1.ak.crunchyroll.com/i/spire2/f3f1ec2f45f84ed7ce8c14462d2d2e7a1609986073_full.jpg')
anime = Anime.create!(
  title: "Heaven design team", 
  description: "Dieu a créé la lumière, l'eau et la terre, mais à présent, il a un sacré mal de tête ! Il décide donc de sous-traiter la suite de son travail en confiant la création des différentes formes de vie à l'agence de design du paradis. Pourquoi cette bestiole a-t-elle cette apparence ?", 
  parution_date: "07/01/2021", 
  category: "comedie", 
  streaming_service: "crunchyroll", 
  rating: 1
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'Heaven design team.png', content_type: 'image/png')
# 9--------------------------------------------------------------------------------------------------------
file = URI.open('https://d2y6mqrpjbqoe6.cloudfront.net/image/upload/f_auto,q_auto/media/library-400/148_637014119586825382Haikyuu_Small_hq.jpg')
anime = Anime.create!(
  title: "haikyu!!", 
  description: "Shôyô est un joueur de volley-ball de petite taille. Malgré ce handicap, celui-ci arrive à rivaliser contre ses adversaires grâce à une incroyable détente. Lors de son premier tournoi au collège, il est humilié par Tobio, un joueur prétentieux, mais bourré de talent. Une fois au lycée, il décide de prendre sa revanche. En intégrant l'équipe, il découvre que son rival va devenir son coéquipier. C'est ainsi qu'est né un des duos les plus prodigieux du volley-ball.", 
  parution_date: "06/04/2014", 
  category: "shonen", 
  streaming_service: "wakanim", 
  rating: 5
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'haikyu!!.png', content_type: 'image/png')
# 10--------------------------------------------------------------------------------------------------------
file = URI.open('https://d2y6mqrpjbqoe6.cloudfront.net/image/upload/f_auto,q_auto/media/library-400/41_637453581125831396Kemono_Small_FR_hq.jpg')
anime = Anime.create!(
  title: "Kemono incidents", 
  description: "Depuis des temps immémoriaux, les êtres nommés Kemonos vivent parmi les humains, dissimulés dans l'ombre. Beaucoup d'entre eux se sont adaptés à l'évolution humaine et se sont mêlés à la société. Mais récemment, on rapporte de nombreux cas de Kemonos liés bien plus étroitement aux humains que nécessaire. Inugami, qui dirige une agence de détectives privés, s'occupe d'incidents liés à ces Kemonos. L'une de ses affaires le mène dans un petit village perdu, où il va faire la rencontre d'un jeune garçon nommé Kabane…", 
  parution_date: "10/01/2021", 
  category: "action", 
  streaming_service: "wakanim", 
  rating: 3
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'kemono incidents.png', content_type: 'image/png')
# 11--------------------------------------------------------------------------------------------------------
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81gNoL53Q4L.jpg')
anime = Anime.create!(
  title: "Food wars", 
  description: "Sôma Yukihira rêve de devenir chef cuisinier dans le restaurant familial et ainsi surpasser les talents culinaires de son père. Alors que Sôma vient juste d'être diplômé au collège, son père Jôichirô Yukihira ferme le restaurant pour partir cuisiner à travers le monde.", 
  parution_date: "06/07/2016", 
  category: "shonen", 
  streaming_service: "netflix", 
  rating: 5
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'food wars.png', content_type: 'image/png')
# 12--------------------------------------------------------------------------------------------------------
file = URI.open('https://img1.ak.crunchyroll.com/i/spire3/70740067e96df4abe309bf512dfd3bf11610177676_full.jpg')
anime = Anime.create!(
  title: "Dr ramune", 
  description: "Tant que les gens auront un cœur, certains souffriront. Dès lors, quelque chose de “bizarre” entre dans leur esprit et provoque la manifestation d'une étrange maladie dans leur corps que l'on appelle maladie mystérieuse", 
  parution_date: "26/09/2017", 
  category: "comedie", 
  streaming_service: "crunchyroll", 
  rating: 1
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'dr ramune.png', content_type: 'image/png')
# 13--------------------------------------------------------------------------------------------------------
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/61HlNZSoIZL.jpg')
anime = Anime.create!(
  title: "Tokyo ghoul", 
  description: "Dans la ville de Tokyo, des créatures nommées goules sont apparues et se nourrissent de chair humaine pour survivre. Un jour, Ken Kaneki, jeune étudiant, se fait attaquer par l'une d'entre elles et subit une grave blessure. Pour rester en vie, il reçoit une greffe de la goule qui l'a attaqué et devient un hybride, mi-humain mi-goule (borgne artificielle).", 
  parution_date: "08/09/2011", 
  category: "seinen", 
  streaming_service: "netflix", 
  rating: 5
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'Tokyo ghoul.png', content_type: 'image/png')
# 14--------------------------------------------------------------------------------------------------------
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/71MP3oCjD6L.jpg')
anime = Anime.create!(
  title: "Myhero academia", 
  description: "Dans un monde où 80 % de la population mondiale possède des super-pouvoirs, ici nommés « Alters » (個性, Kosei?), n'importe qui peut devenir un héros ou, s'il le souhaite, un criminel. Le manga suit les aventures de Izuku Midoriya « Deku », l'un des rares humains ne possédant pas d'Alter, qui rêve pourtant de rejoindre la filière super-héroïque de la grande académie Yuei (勇井高校, Yūei Kōkō?) et de devenir un jour un des plus grands héros de son époque, à l'image de son héros, All Might. Un jour, il a la chance de rencontrer son idole et celui-ci va lui donner une chose dont il ne croyait jamais pouvoir bénéficier.", 
  parution_date: "01/04/2016", 
  category: "shonen", 
  streaming_service: "netflix", 
  rating: 5
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'myhero academia.png', content_type: 'image/png')
# 15--------------------------------------------------------------------------------------------------------
file = URI.open('https://d2y6mqrpjbqoe6.cloudfront.net/image/upload/f_auto,q_auto/media/library-400/21_637452072151948445Horimiya_Small_hq.jpg')
anime = Anime.create!(
  title: "Horimiya", 
  description: "Hori Kyôko est la coqueluche de sa classe, une lycéenne jolie et populaire aux excellents résultats. Mais le soir venu, elle doit tenir la maison à la place de ses parents qui travaillent et s'occuper de son petit frère, Sôta. Un jour pas comme un autre, Sôta se fait mal dehors. Un garçon inconnu qui prend sur lui de le ramener chez sa famille, mais quand Kyôko leur ouvre la porte, c'est interloqué qu'il prononce son nom avec un soupçon d'hésitation. Elle se rend alors compte que la personne qui vient de ramener son frère n'est autre qu'un camarade de classe... Leur rencontre sera-t-elle une porte vers une nouvelle amitié ou des sentiments plus forts encore ? Découvrez une histoire adolescente aussi pétillante que douce-amère !", 
  parution_date: "09/01/2021", 
  category: "comedie", 
  streaming_service: "wakanim", 
  rating: 3
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'Horimiya.png', content_type: 'image/png')
# 16--------------------------------------------------------------------------------------------------------
file = URI.open('https://d2y6mqrpjbqoe6.cloudfront.net/image/upload/f_auto,q_auto/media/library-400/111_637459742730923007BackArrow_Small-2_hq.jpg')
anime = Anime.create!(
  title: "Black arrow", 
  description: "Ringerind est une terre entourée d'un gigantesque mur. Ce dernier l'enveloppe, la protège et contribue à son développement, au point d’en être déifié ; c’est l'essence même de cette terre. Un jour, un mystérieux homme nommé Back Arrow apparaît dans un village reculé du nom d’Edger. Arrow est amnésique, mais il certifie venir de l’autre côté du mur. Il décide alors d’aller au-delà de ce dernier afin de recouvrer la mémoire, mais se retrouve peu à peu mêlé à un conflit dont il semble être le centre…", 
  parution_date: "08/01/2021", 
  category: "action", 
  streaming_service: "wakanim", 
  rating: 4
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'black arrow.png', content_type: 'image/png')
# 17--------------------------------------------------------------------------------------------------------
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/71DDqDWiXLL._AC_SL1000_.jpg')
anime = Anime.create!(
  title: "One punch man", 
  description: "Saitama est un jeune homme sans emploi, déprimé et sans but profond dans sa vie. Un jour, il rencontre un homme-crabe qui recherche un jeune garçon « avec un menton fendu comme un cul » selon ses termes. Saitama finit par rencontrer ce jeune garçon et décide de le sauver de l'homme-crabe, qu'il arrive à battre difficilement. Dès lors, Saitama décide de devenir un super-héros et s’entraîne pendant trois ans très sérieusement : 100 pompes, 100 squats, 100 abdos et 10 km de course au quotidien", 
  parution_date: "03/07/2009", 
  category: "seinen", 
  streaming_service: "netflix", 
  rating: 5
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'onepunchman.png', content_type: 'image/png')
# 18--------------------------------------------------------------------------------------------------------
file = URI.open('https://image.animedigitalnetwork.fr/license/onepiece/arc7/web/affiche_370x0.jpg')
anime = Anime.create!(
  title: "One piece", 
  description: "Portgas D. Ace, le commandant de la deuxième division de l’équipage de Barbe Blanche sera exécuté à 15h précise à Marine Ford. Pour assurer le bon déroulement de cette exécution, le Gouvernement Mondial mobilise les troupes d’élite de la Marine avec plus de 100 000 soldats et 25 navires de guerre. Il convoque également ses hommes les plus puissants : les Grands Corsaires et les amiraux. Afin d’empêcher l’exécution, Barbe Blanche réunit son équipage et fait appel aux 43 capitaines pirates qui lui ont juré allégeance dans le Nouveau Monde pour prendre...", 
  parution_date: "22/07/1997", 
  category: "shonen", 
  streaming_service: "adn", 
  rating: 4
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'onepiece.png', content_type: 'image/png')
# 19--------------------------------------------------------------------------------------------------------
file = URI.open('https://image.animedigitalnetwork.fr/license/bleach/tv/web/affiche_370x0.jpg')
anime = Anime.create!(
  title: "Bleach", 
  description: "Adolescent de quinze ans, Ichigo Kurosaki possède un don particulier : celui de voir les esprits. Un jour, il croise la route d'une belle Shinigami (un être spirituel) en train de pourchasser une âme perdue, un esprit maléfique qui hante notre monde", 
  parution_date: "20/08/2001", 
  category: "shonen", 
  streaming_service: "adn", 
  rating: 5
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'bleach.png', content_type: 'image/png')
# 20--------------------------------------------------------------------------------------------------------
file = URI.open('https://image.animedigitalnetwork.fr/license/jojo/tv4/web/affiche_370x0.jpg')
anime = Anime.create!(
  title: "Jojo's bizarre adventure", 
  description: "Dans la ville de Morio, Josuke Higashikata, jeune lycéen, doit faire face à une importante menace. Des meurtres en série, quelque chose d'étrange est à l'oeuvre, quelque chose de bizarre... Mais la police est désemparée... Josuke Higashikata avec son caractère bien trempé et son puissant stand (représentation de sa force psychique et de son esprit combatif ) va tenter de percer le mystère avec son camarade Koichi Hirose. A eux deux, pourront-ils sauver la ville de Morio ?", 
  parution_date: "01/01/1986", 
  category: "action", 
  streaming_service: "adn", 
  rating: 2
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'jojobizarreadventure.png', content_type: 'image/png')
# 21--------------------------------------------------------------------------------------------------------
file = URI.open('https://image.animedigitalnetwork.fr/license/devilsline/tv/web/affiche_370x0.jpg')
anime = Anime.create!(
  title: "Devil's line", 
  description: "Tsukasa, une jeune étudiante de Tokyo, se fait attaquer par un vampire hors de contrôle. Fort heureusement pour elle, elle est sauvée de justesse par Anzai, un policier moitié humain, moitié vampire qui utilise ses facultés surnaturelles pour réprimer les vampires qui n’arrivent pas à résister au sang humain. Désormais sous sa protection, Tsukasa et Anzai vont peu à peu se rapprocher. Néanmoins, le monde ne semble pas prêt d’accepter leur relation et Anzai arrive de moins en moins à contenir ses pulsions de vampire…", 
  parution_date: "07/04/2018", 
  category: "horreur", 
  streaming_service: "adn", 
  rating: 4
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'devilsline.png', content_type: 'image/png')
# 22--------------------------------------------------------------------------------------------------------
file = URI.open('https://image.animedigitalnetwork.fr/license/conan/tv/web/affiche_370x0.jpg')
anime = Anime.create!(
  title: "Conan", 
  description: "Imaginez un Sherlock Holmes moderne, âgé d’à peine 17 ans, vivant à la fin des années 1990 ! Comme si cela ne suffisait pas, imaginez en outre qu’il a l’apparence d’un petit garçon de 6 ans... Shinichi Kudô est élève de première au lycée Tivedétec. Pour avoir résolu plusieurs enquêtes difficiles, beaucoup le considèrent comme «l’aide la plus précieuse que la police pouvait espérer». ", 
  parution_date: "19/01/1994", 
  category: "mystere", 
  streaming_service: "adn", 
  rating: 1
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'conan.png', content_type: 'image/png')
# 23--------------------------------------------------------------------------------------------------------
file = URI.open('https://d2y6mqrpjbqoe6.cloudfront.net/image/upload/f_auto,q_auto/media/library-400/31_637452785940065931SMS_Small_hq.jpg')
anime = Anime.create!(
  title: "Lbx girl", 
  description: "Le quotidien de cinq jeunes filles est bouleversé lorsqu'elles se retrouvent équipées d'armures du nom de LBX Unit, devenant des « LBX Girls ». Elles ont chacune été arrachées à leurs propres dimensions pour accomplir une mission précise : anéantir les Mimesis, une forme de vie mécanique menaçant toutes les dimensions. Ces jeunes héroïnes ayant traversé l'espace-temps devront vivre comme des mercenaires et comprendre au péril de leur vie le sens des mots espoir et désespoir à l'échelle de l'humanité entière.", 
  parution_date: "06/01/2021", 
  category: "action", 
  streaming_service: "wakanim", 
  rating: 5
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'lbxgirl.png', content_type: 'image/png')
# 24--------------------------------------------------------------------------------------------------------
file = URI.open('https://d2y6mqrpjbqoe6.cloudfront.net/image/upload/f_auto,q_auto/media/library-400/31_637452819945300203Scar-OTP_Small_hq.jpg')
anime = Anime.create!(
  title: "Project scared", 
  description: "
  Bienvenue à Tokyo, dans le quartier d'Akatsuki. Abandonné par la nation, ce quartier sans loi aucune est protégé par trois organisations qui s'affrontent et tentent de faire régner l'ordre : Hélios, Artémis et le Bureau de la Sécurité Publique. Elles emploient toutes des Scard, des êtres marqués par un tatouage divin qui les rendraient insensibles aux balles et aux armes blanches…", 
  parution_date: "08/01/2021", 
  category: "action", 
  streaming_service: "wakanim", 
  rating: 2
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'projectscared.png', content_type: 'image/png')
# 25--------------------------------------------------------------------------------------------------------
file = URI.open('https://fusion.molotov.tv/arts/i/446x588/Ch8SHQoUFe1Mgp72fFup18_XeLLXd0jPs1ESA2pwZxgBCh8IARIbChTZidUxJyw49VNI5_dJ0wv3dTL_MhIDcG5n/jpg')
anime = Anime.create!(
  title: "Naruto", 
  description: "'histoire commence pendant l'adolescence de Naruto, vers ses douze ans. Orphelin cancre et grand farceur, il fait toutes les bêtises possibles pour se faire remarquer. Son rêve : devenir Hokage afin d'être reconnu par les habitants de son village.", 
  parution_date: "03/10/2002", 
  category: "shonen", 
  streaming_service: "netflix", 
  rating: 5
)
puts " - #{anime.title} (#{Anime.count}/25)"
anime.photo.attach(io: file, filename: 'Naruto.png', content_type: 'image/png')

puts "---------------------"
puts "Finished"
puts "---------------------"