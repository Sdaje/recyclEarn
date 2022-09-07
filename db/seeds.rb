# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "json"

puts "cleaning database"
Question.destroy_all
Option.destroy_all
User.destroy_all
Reward.destroy_all
Learning.destroy_all
FunFact.destroy_all

puts "Destroy interests"
Interest.destroy_all
puts "Interests destroyed"

puts "Making profiles"
user = User.new(first_name: "Thomas", last_name: "Ben", city: "Bordeaux", email: "devmaster@recyclearn.com", password: "secret")
user.save!
user = User.new(email: "dev@recylearn.com", password: "secret", city: "Bordeaux", first_name: "Jean", last_name: "Neymar")
user.save!

puts "Making a second course"
learninga = Learning.new(title: "Les labels du plastique", topic: "Plastique", city: "Toutes", difficulty: 3, score: 80)
learninga.save!
puts "Course made"

puts "Adding a lesson in lecture 2 0/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learninga.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 1/7"
lecture = Lecture.new(title: "Polyethylene Terephthalate", content: "<h3>1. Polyethylene Terephthalate (PET)</h3>
<p>C'est un plastique dûr souvent utilisé comme emballage à usage unique comme les emballages de nourriture ou les bouteilles en plastiques</p>
<h4>Recyclage</h4>
<p>C'est le plastique le plus couramment recyclé au monde.</p>
<h4>Seconde vie</h4>
  <ul>
    <li>- Fibre pour tapis</li>
    <li>- Veste polaire, remplissage de couette, sacs fourre-tout</li>
    <li>- Emballage alimentaire et bouteilles en plastiques</li>
    <li>- Film alimentaire et bâches</li>
  </ul>
<img src='https://www.nestle-waters.fr/sites/g/files/pydnoa621/files/asset-library/publishingimages/infographies/nsw-m-06-recherche-emballage-pet-v2_860px.jpg' alt='info-panel'>",learning_id: learninga.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 2/7"
lecture = Lecture.new(title: "Polyethylene de haute densité", content: "<h3>2. Polyethylene de haute densité (PEH)</h3>
<p>C'est un plastique dûr moins transparent que le PET (slide précédent) souvent utilisé pour les bouteilles de produits d'entretien, de shampoings ou encore pour les emballages de yaourts.</p>
<h4>Recyclage</h4>
<p>Le HPDE est utilisé couramment car c'est un des plastiques les plus simples à recycler.</p>
<h5>Seconde vie</h5>
  <ul>
    <li>- Bouteilles pour le non-alimentaire</li>
    <li>- Faux bois</li>
    <li>- Poubelles de recyclage</li>
    <li>- Carrelage</li>
    <li>- Seau, poubelle ou caisse</li>
    <li>- Peau de fleur</li>
  </ul>
<img class='c-image-block__image' src='https://fourmize-sas.odoo.com/web/image/9015-c4b8782f/Post%20Facebook%20AOUT-3.png?access_token=a9ab852a-36ad-4426-9b8e-c1c0beb55322' alt=''>",learning_id: learninga.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 3/7"
lecture = Lecture.new(title: "Polyvinyl Chloride", content: "<h3>3. Polyvinyl Chloride (PVC)</h3>
<p>Utilisé fréquemment pour les vinyls et les tuyaux, moins solide que le PET ou le HDPE. Le PVC est beaucoup utilisé du fait de son bas prix, de sa versatilité d'usage et sa durabilité.</p>
<h4>Recyclage</h4>
<p>Il est relativement difficile de recycler le PVC du fait de sa haute concentration en chlorine et d'additif variés. Il est spécifiquement séparé des autres plastiques en centre de tri pour permettre son recyclage.</p>
<h5>Seconde vie</h5>
  <ul>
    <li>- Tuyaux</li>
    <li>- Présent dans la plupart des outils de jardinerie</li>
    <li>- Présent dans les tapis et les sols de maisons</li>
    <li>- Garde boue</li>
    <li>- Panneaux et cables électriques</li>
    <li>- Cônes de signalisation</li>
    <li>- Composants de voitures</li>
    <li>- Emballages, films, feuillets et draps </li>
  </ul>
<img class='c-image-block__image' src='https://volets-thiebaut.com/img/cms/Infographie-PVC-page-001_1.jpg' alt=''>", learning_id: learninga.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 4/7"
lecture = Lecture.new(title: "Low Density Polyethylene (LDPE)", content: "  <h3>4. Low Density Polyethylene (LDPE)</h3>
<p>C'est un plastique souple souvent utilisés comme emballage de sachet de pain, sac de nourriture surgelé et sacs de course</p>
<h4>Recyclage</h4>
<p>Difficile à recycler mais toujours possible, nécessite d'être séparé des autres plastiques ainsi que trier par couleur en centre de tri.</p>
<h5>Seconde vie</h5>
  <ul>
    <li>- Enveloppes</li>
    <li>- revêtemment de poubelles</li>
    <li>- Carrelage et panneaux de signalisation</li>
    <li>- Fournitures</li>
    <li>- Films plastiques et protections plastiques</li>
    <li>- Poubelles de bureau ou de compost</li>
    <li>- Faux bois</li>
  </ul>
<img class='c-image-block__image' src='https://pbs.twimg.com/media/D4gcxFuWsAE7A4G?format=jpg&name=medium' alt=''>",learning_id: learninga.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 5/7"
lecture = Lecture.new(title: "Polypropylene", content: "  <h3>5. Polypropylene (PP)</h3>
<p>Communément retrouvé dans les bouchons, les pailles et certains emballages de yaourts.</p>
<h4>Recyclage</h4>
<p>Un des plastiques les moins recyclés au monde (<1%). Son recyclage nécessite plus d'étapes et d'énergie que les autres plastiques.</p>
<h5>Seconde vie</h5>
  <ul>
    <li>- Nombreux composants de voiture</li>
    <li>- Ballets, pinceaux, pic à glace, râteau de jardin.</li>
    <li>- Entonnoir à huile</li>
    <li>- Bacs de rangement</li>
    <li>- Plateaux, palette, bâches</li>
  </ul>
<img class='c-image-block__image' src='https://www.valorplast.com/wp-content/uploads/2015/03/PB_PEPPPS.png' alt=''>",learning_id: learninga.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 6/7"
lecture = Lecture.new(title: "Polystyrene", content: "  <h3>6. Polystyrene (PS)</h3>
<p>Couramment trouvé dans les verres jetables et les emballages de nourriture à emporté, souvent appelé Styrofoam.</p>
<h4>Recyclage</h4>
<p>Principalement constitué d'air, il doit être compressé afin d'assurer son recyclage d'une manière effective.</p>
<h5>Seconde vie</h5>
  <ul>
    <li>- Insulation thermique</li>
    <li>- Thermometre</li>
    <li>- Plaque d'immatriculation</li>
    <li>- Composant de caméra</li>
    <li>- Pour les moulages en plastiques</li>
    <li>- Etui protecteur</li>
    <li>- Interrupteur</li>
    <li>- Plateau de bureau</li>
    <li>- Carton pour les oeufs</li>
  </ul>
<img class='c-image-block__image' src='https://tricycle-mrcvs.ca/app/uploads/2021/10/Polystyrene_1348x800.jpg' alt=''>",learning_id: learninga.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 7/7"
lecture = Lecture.new(title: "Les autres platiques", content: "  <h3>7. Les autres plastiques </h3>
  <p>D'autres types de plastiques peuvent être trouvés un peu partout</p>
  <h4>Recyclage</h4>
  <p>Très difficile à recycler par leurs variétés et la nécessité souvent de les séparer des autres plastiques. Il est donc très peu recyclé.</p>
  <h5>Seconde vie</h5>
    <ul>
      <li>- Bouteilles en plastiques</li>
      <li>- Faux bois</li>
    </ul>
  <img class='c-image-block__image' src='https://global-uploads.webflow.com/5cc9bbbe51a9add0b8662844/607adad541a0d7222e0fa8d1_Plastique%20environnement%20plane%CC%80te%20ze%CC%81ro%20de%CC%81chet%20diffe%CC%81rents%20types%20de%20plastique.jpg' alt=''>",learning_id: learninga.id)
lecture.save!
puts "lecture added to learning"

puts "making question"
quiz = Question.new(content: "Le PVC est un plastique qui est", learning_id: learninga.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "souple et difficile à recycler", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "dûr et facile à recycler", good: false)
option.question = quiz
option.save!

option = Option.create(content: "souple et facile à recycler", good: true)
option.question = quiz
option.save!

option = Option.create(content: "dûr et difficile à recycler", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 2"
quiz = Question.new(content: "Comment peut-on différencier le PET et le PEH ?", learning_id: learninga.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "le label sur le plastique et leur opacité", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "le label sur le plastique et la dureté", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur couleur", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur utilisation très différentes", good: false)
option.question = quiz
option.save!
puts "Options 2 added succesfully, well done it's amazing"

puts "making question 3"
quiz = Question.new(content: "De nombreux plastiques sont recyclables, et afin de faciliter cela, on les tries selon les :", learning_id: learninga.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "5 différents labels de plastiques", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "5 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents labels de plastique", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 4"
quiz = Question.new(content: "Quel est le plastique utilisé majoritairement pour les sachets de pains ou les sacs de nourriture surgelés ?", learning_id: learninga.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le PET", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le PP", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PS", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 5"
quiz = Question.new(content: "Quel est le plastique le plus recyclé au monde et donc le plus safe à acheté ?", learning_id: learninga.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polystyrène", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le PVC", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PET", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing and over"

puts "making question"
quiz = Question.new(content: "Quel est le plastique le moins recyclé au monde, et donc le plus nocif parmis ceux recyclables ?", learning_id: learninga.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polypropylene", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le polystyrène", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PVDC", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "Create composters"
filepath = "db/data_base/composteur_bordeaux.json"
composteurs = JSON.parse(File.read(filepath))
n = 0
composteurs.each do |composteur|
  n += 1
  address = composteur["fields"]["adresse"]
  longitude = composteur["fields"]["geo_shape"]["coordinates"].first
  latitude = composteur["fields"]["geo_shape"]["coordinates"].last
  interest = Interest.new(address: address, latitude: latitude, longitude: longitude, category: 1)
  interest.save!
end
puts "#{composteurs.count} Composters created"

puts "Create recycling centers"
filepath = "db/data_base/dechetteries_bordeaux.json"
centers = JSON.parse(File.read(filepath))
n = 0
centers.each do |center|
  n += 1
  address = center["fields"]["nom"]
  longitude = center["fields"]["geo_shape"]["coordinates"].first
  latitude = center["fields"]["geo_shape"]["coordinates"].last
  interest = Interest.new(address: address, latitude: latitude, longitude: longitude, category: 2, website: "https://www.bordeaux.fr/p911/les-centres-de-recyclage-dechetteries")
  interest.save!
end
puts "#{centers.count} Recycling centers created"

puts "Create Glass containers"
filepath = "db/data_base/verre_bordeaux.json"
containers = JSON.parse(File.read(filepath))
n = 0
containers.each do |container|
  n += 1
  longitude = container["fields"]["geo_shape"]["coordinates"].first
  latitude = container["fields"]["geo_shape"]["coordinates"].last
  address = "Glass container ##{n}"
  interest = Interest.new(address: address, latitude: latitude, longitude: longitude, category: 3)
  interest.save!
end
puts "#{containers.count} Glass containers created"

puts "Create fun facts"
FunFact.create!(content:"Prêt de 35% de nos déchets peuvent être compostés")

puts "Making a third course"
learningb = Learning.new(title: "Jeter ses déchets", topic: "Routine", city: "Bordeaux", difficulty: 1, score: 80)
learningb.save!
puts "Course made"

puts "Making a forth course"
learningc = Learning.new(title: "Réduire son bilan carbone", topic: "Routine", city: "Bordeaux", difficulty: 2, score: 110)
learningc.save!
puts "Course made"

puts "Making a fifth course"
learningd = Learning.new(title: "Gérer sa consommation", topic: "Plastique", city: "Toutes", difficulty: 1, score: 120)
learningd.save!
puts "Course made"

puts "Making a sixth course"
learninge = Learning.new(title: "Jeter ses déchets", topic: "Plastique", city: "Toulouse", difficulty: 1, score: 60)
learninge.save!
puts "Course made"

puts "Adding a lesson in lecture 2 0/"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningb.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 1/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningb.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 2/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningb.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 3/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningb.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 0/"
lecture = Lecture.new(title: "Alimentation", content: "<h3>L’alimentation</h3>
  <p>On ne pense souvent pas assez à l’alimentation lorsqu’on pense à notre empreinte carbone. C’est cependant une des sources majeures de pollution pour la plupart.</p>
  <h5>Réduire la viande</h5>
  <p>Ce n’est pas uniquement pour des raisons de santé qu’il faut éviter de manger trop souvent de la viande. Que cela soit pour son transport, son conditionnement ou encore sa conservation, la viande est une source majeur de pollution. Il faut penser à éviter d’en consommer trop régulièrement mais surtout éviter d’acheter une viande qui n’est pas produite localement.</p>
  <h5>Acheter localement</h5>
  <p>Nulle besoin d’expliquer la raison derrière laquelle il vaut mieux acheter des produits locaux et de saison. Le secteur du transport est le premier émetteur de gaz à effet de serre et ses impacts sur l'environnement sont nombreux.</p>
  <h5>Vérifier l’emballage</h5>
  <p>Il est important de vérifier l’emballage des produits avant de les acheter car trop souvent encore, le plastique utilisé est celui qui est le moins cher à se procurer par l’entreprise et est donc de mauvaise qualité et difficile à recycler.</p>",learning_id: learningc.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 1/7"
lecture = Lecture.new(title: "Transport", content: "<h3>Le transport</h3>
  <p>L’avion est à proscrire, il faut privilégier dans la limite du possible la marche et le vélo. Les bienfaits de ces derniers supplantent les autres moyens de transport de très loin. A défaut de cela, les transports en communs représentent aussi une très bonne alternative à l’utilisation trop fréquente de la voiture. </p>
  <h5>La voiture électrique</h5>
  <p>La voiture électrique est un début de solution. Les matériaux utilisés pour les construire ont un impact environnemental énorme. Cependant, il est préférable à la pollution engendrée par les voitures à combustibles, surtout dans les pays comme la France où l’énergie du réseau est relativement propre.</p>",learning_id: learningc.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 2/7"
lecture = Lecture.new(title: "Chez soi", content: "<h3>Chez Vous</h3>
  <h5>Gérer les dépenses en énergie</h5>
  <p>Prendre le temps d’éteindre la télévision durant la nuit, utiliser la lumière du jour pendant la journée plutôt que les ampoules, éteindre l’air climatisé ou le chauffage lorsque l’on sort de la maison. Une isolation thermique de qualité peut, de plus, grandement réduire votre besoin en chauffage.</p>
  <h5><i class='fas fa-question'></i> Renseignez-vous</h5>
  <p>De nombreux fournisseurs d’énergie proposent des solutions écologiques et économiques afin d’être approvisionner en énergie verte. De plus, selon le type d’habitation, l’utilisation de panneau solaire peut être une possibilité.</p>
  <img src='../assets/courses/green.png' alt='fournisseurs verts'>",learning_id: learningc.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 3/7"
lecture = Lecture.new(title: "Les banques", content: "<h3><i class='fa-solid fa-building-columns'></i> Votre banque</h3>
  <p>Connaissez-vous le système de réserves fractionnaires (fractional reserve banking), communément utilisé dans la plupart des pays ? Les banques peuvent utiliser une partie de l’argent qui réside dans les comptes des particuliers afin d’investir, et peut donc ne garder qu’un faible pourcentage de l’argent que vous épargnez sur votre compte en banque. Malheureusement, les investissements qui résultent indirectement de votre argent durement gagné peut donc sans votre accord être utilisé pour investir dans des entreprises très polluantes.</p>
  <h5><i class='fas fa-question'></i> Renseignez-vous</h5>
  <p>Demandez à votre conseiller bancaire si votre banque utilise ce système et dans le cas où c’est le cas, vous pouvez changer de banque pour en trouver une qui n’utilise pas ce système.</p>",learning_id: learningc.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 0/"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningd.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 1/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningd.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 2/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningd.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 3/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningd.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 0/"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learninge.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 1/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learninge.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 2/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learninge.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 3/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learninge.id)
lecture.save!
puts "lecture added to learning"

puts "making question"
quiz = Question.new(content: "Le PVC est un plastique qui est", learning_id: learningb.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "souple et difficile à recycler", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "dûr et facile à recycler", good: false)
option.question = quiz
option.save!

option = Option.create(content: "souple et facile à recycler", good: true)
option.question = quiz
option.save!

option = Option.create(content: "dûr et difficile à recycler", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 2"
quiz = Question.new(content: "Comment peut-on différencier le PET et le PEH ?", learning_id: learningb.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "le label sur le plastique et leur opacité", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "le label sur le plastique et la dureté", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur couleur", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur utilisation très différentes", good: false)
option.question = quiz
option.save!
puts "Options 2 added succesfully, well done it's amazing"

puts "making question 3"
quiz = Question.new(content: "De nombreux plastiques sont recyclables, et afin de faciliter cela, on les tries selon les :", learning_id: learningb.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "5 différents labels de plastiques", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "5 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents labels de plastique", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 4"
quiz = Question.new(content: "Quel est le plastique utilisé majoritairement pour les sachets de pains ou les sacs de nourriture surgelés ?", learning_id: learningb.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le PET", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le PP", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PS", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 5"
quiz = Question.new(content: "Quel est le plastique le plus recyclé au monde et donc le plus safe à acheté ?", learning_id: learningb.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polystyrène", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le PVC", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PET", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing and over"

puts "making question"
quiz = Question.new(content: "Quel est le plastique le moins recyclé au monde, et donc le plus nocif parmis ceux recyclables ?", learning_id: learningb.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polypropylene", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le polystyrène", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PVDC", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question"
quiz = Question.new(content: "Quel est le produit qui laisse la plus grosse empreinte carbone ?", learning_id: learningc.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Les fruits hors saisons", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "La viande en général", good: true)
option.question = quiz
option.save!

option = Option.create(content: "L'alcool en général", good: false)
option.question = quiz
option.save!

option = Option.create(content: "L'huile de palme", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 2"
quiz = Question.new(content: "Quel est le moyen le plus simple de réduire son empreinte carbone au supermarché ?", learning_id: learningc.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Choisir des produits locaux", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Prendre uniquement des produits sans emballage plastique", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Préferer aller dans un magasin bio", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Eviter d'acheter du surgelé", good: false)
option.question = quiz
option.save!
puts "Options 2 added succesfully, well done it's amazing"

puts "making question 3"
quiz = Question.new(content: "Aujourd'hui pour réduire son empreinte carbone, la voiture électrique est une solution qui est :", learning_id: learningc.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "très efficace et devrait être accessible à tous", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "peu efficace comparé à d'autre solutions", good: false)
option.question = quiz
option.save!

option = Option.create(content: "efficace selon la source de notre approvisionnement en électricité", good: true)
option.question = quiz
option.save!

option = Option.create(content: "inefficace car nécessite des matériaux dont l'extraction pollue énormément", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 4"
quiz = Question.new(content: "Le système de réserves fractionnaires permet aux banques :", learning_id: learningc.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "d'investir dans le développement durable", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "d'utiliser une partie de l'argent de ses clients pour investir", good: true)
option.question = quiz
option.save!

option = Option.create(content: "d'avoir plus de liberté fiscale et de protéger le marché boursier", good: false)
option.question = quiz
option.save!

option = Option.create(content: "d'être capable de fonctionner correctement sans investissement extérieur", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question"
quiz = Question.new(content: "Le PVC est un plastique qui est", learning_id: learninge.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "souple et difficile à recycler", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "dûr et facile à recycler", good: false)
option.question = quiz
option.save!

option = Option.create(content: "souple et facile à recycler", good: true)
option.question = quiz
option.save!

option = Option.create(content: "dûr et difficile à recycler", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 2"
quiz = Question.new(content: "Comment peut-on différencier le PET et le PEH ?", learning_id: learninge.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "le label sur le plastique et leur opacité", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "le label sur le plastique et la dureté", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur couleur", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur utilisation très différentes", good: false)
option.question = quiz
option.save!
puts "Options 2 added succesfully, well done it's amazing"

puts "making question 3"
quiz = Question.new(content: "De nombreux plastiques sont recyclables, et afin de faciliter cela, on les tries selon les :", learning_id: learninge.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "5 différents labels de plastiques", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "5 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents labels de plastique", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 4"
quiz = Question.new(content: "Quel est le plastique utilisé majoritairement pour les sachets de pains ou les sacs de nourriture surgelés ?", learning_id: learninge.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le PET", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le PP", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PS", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 5"
quiz = Question.new(content: "Quel est le plastique le plus recyclé au monde et donc le plus safe à acheté ?", learning_id: learninge.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polystyrène", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le PVC", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PET", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing and over"

puts "making question"
quiz = Question.new(content: "Quel est le plastique le moins recyclé au monde, et donc le plus nocif parmis ceux recyclables ?", learning_id: learninge.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polypropylene", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le polystyrène", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PVDC", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question"
quiz = Question.new(content: "Le PVC est un plastique qui est", learning_id: learningd.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "souple et difficile à recycler", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "dûr et facile à recycler", good: false)
option.question = quiz
option.save!

option = Option.create(content: "souple et facile à recycler", good: true)
option.question = quiz
option.save!

option = Option.create(content: "dûr et difficile à recycler", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 2"
quiz = Question.new(content: "Comment peut-on différencier le PET et le PEH ?", learning_id: learningd.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "le label sur le plastique et leur opacité", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "le label sur le plastique et la dureté", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur couleur", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur utilisation très différentes", good: false)
option.question = quiz
option.save!
puts "Options 2 added succesfully, well done it's amazing"

puts "making question 3"
quiz = Question.new(content: "De nombreux plastiques sont recyclables, et afin de faciliter cela, on les tries selon les :", learning_id: learningd.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "5 différents labels de plastiques", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "5 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents labels de plastique", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 4"
quiz = Question.new(content: "Quel est le plastique utilisé majoritairement pour les sachets de pains ou les sacs de nourriture surgelés ?", learning_id: learningd.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le PET", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le PP", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PS", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 5"
quiz = Question.new(content: "Quel est le plastique le plus recyclé au monde et donc le plus safe à acheté ?", learning_id: learningd.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polystyrène", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le PVC", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PET", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing and over"

puts "making question"
quiz = Question.new(content: "Quel est le plastique le moins recyclé au monde, et donc le plus nocif parmis ceux recyclables ?", learning_id: learningd.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polypropylene", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le polystyrène", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PVDC", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "Making a third course"
learningf = Learning.new(title: "Les déchets ménagers", topic: "Déchets complexes", city: "Bordeaux", difficulty: 2, score: 80)
learningf.save!
puts "Course made"

puts "Making a forth course"
learningg = Learning.new(title: "Habitudes de vie", topic: "Routine", city: "Bordeaux", difficulty: 2, score: 110)
learningg.save!
puts "Course made"

puts "Making a fifth course"
learningh = Learning.new(title: "La croissance verte", topic: "Ecologie", city: "Toutes", difficulty: 1, score: 120)
learningh.save!
puts "Course made"

puts "Making a sixth course"
learningi = Learning.new(title: "Se déplacer à Toulouse", topic: "Routine", city: "Toulouse", difficulty: 1, score: 80)
learningi.save!
puts "Course made"

puts "Adding a lesson in lecture 2 0/"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningf.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 1/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningf.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 2/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningf.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 3/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningf.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 0/"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningg.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 1/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningg.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 2/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningg.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 3/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningg.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 0/"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningh.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 1/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningh.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 2/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningh.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 3/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningh.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 0/"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningi.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 1/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningi.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 2/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningi.id)
lecture.save!
puts "lecture added to learning"

puts "Adding a lesson in lecture 2 3/7"
lecture = Lecture.new(title: "Apprendre", content: "<h5>Dans ce cours, vous allez apprendre à reconnaître les différents plastiques qui sont recyclables ainsi qu'apprendre ce qu'ils peuvent devenir une fois recyclés.</h5><br><p>Le plus important étant de reconnaître les différents labels, il existe 7 labels de plastique.</p><br><img src='https://blutopia.org/wp-content/uploads/2020/09/Label-Plastiques.jpg' alt='info-panel'>",learning_id: learningi.id)
lecture.save!
puts "lecture added to learning"

puts "making question"
quiz = Question.new(content: "Le PVC est un plastique qui est", learning_id: learningf.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "souple et difficile à recycler", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "dûr et facile à recycler", good: false)
option.question = quiz
option.save!

option = Option.create(content: "souple et facile à recycler", good: true)
option.question = quiz
option.save!

option = Option.create(content: "dûr et difficile à recycler", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 2"
quiz = Question.new(content: "Comment peut-on différencier le PET et le PEH ?", learning_id: learningf.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "le label sur le plastique et leur opacité", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "le label sur le plastique et la dureté", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur couleur", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur utilisation très différentes", good: false)
option.question = quiz
option.save!
puts "Options 2 added succesfully, well done it's amazing"

puts "making question 3"
quiz = Question.new(content: "De nombreux plastiques sont recyclables, et afin de faciliter cela, on les tries selon les :", learning_id: learningf.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "5 différents labels de plastiques", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "5 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents labels de plastique", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 4"
quiz = Question.new(content: "Quel est le plastique utilisé majoritairement pour les sachets de pains ou les sacs de nourriture surgelés ?", learning_id: learningf.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le PET", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le PP", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PS", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 5"
quiz = Question.new(content: "Quel est le plastique le plus recyclé au monde et donc le plus safe à acheté ?", learning_id: learningf.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polystyrène", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le PVC", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PET", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing and over"

puts "making question"
quiz = Question.new(content: "Quel est le plastique le moins recyclé au monde, et donc le plus nocif parmis ceux recyclables ?", learning_id: learningf.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polypropylene", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le polystyrène", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PVDC", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question"
quiz = Question.new(content: "Le PVC est un plastique qui est", learning_id: learningg.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "souple et difficile à recycler", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "dûr et facile à recycler", good: false)
option.question = quiz
option.save!

option = Option.create(content: "souple et facile à recycler", good: true)
option.question = quiz
option.save!

option = Option.create(content: "dûr et difficile à recycler", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 2"
quiz = Question.new(content: "Comment peut-on différencier le PET et le PEH ?", learning_id: learningg.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "le label sur le plastique et leur opacité", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "le label sur le plastique et la dureté", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur couleur", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur utilisation très différentes", good: false)
option.question = quiz
option.save!
puts "Options 2 added succesfully, well done it's amazing"

puts "making question 3"
quiz = Question.new(content: "De nombreux plastiques sont recyclables, et afin de faciliter cela, on les tries selon les :", learning_id: learningg.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "5 différents labels de plastiques", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "5 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents labels de plastique", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 4"
quiz = Question.new(content: "Quel est le plastique utilisé majoritairement pour les sachets de pains ou les sacs de nourriture surgelés ?", learning_id: learningg.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le PET", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le PP", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PS", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 5"
quiz = Question.new(content: "Quel est le plastique le plus recyclé au monde et donc le plus safe à acheté ?", learning_id: learningg.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polystyrène", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le PVC", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PET", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing and over"

puts "making question"
quiz = Question.new(content: "Quel est le plastique le moins recyclé au monde, et donc le plus nocif parmis ceux recyclables ?", learning_id: learningg.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polypropylene", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le polystyrène", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PVDC", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question"
quiz = Question.new(content: "Le PVC est un plastique qui est", learning_id: learningh.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "souple et difficile à recycler", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "dûr et facile à recycler", good: false)
option.question = quiz
option.save!

option = Option.create(content: "souple et facile à recycler", good: true)
option.question = quiz
option.save!

option = Option.create(content: "dûr et difficile à recycler", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 2"
quiz = Question.new(content: "Comment peut-on différencier le PET et le PEH ?", learning_id: learningh.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "le label sur le plastique et leur opacité", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "le label sur le plastique et la dureté", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur couleur", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur utilisation très différentes", good: false)
option.question = quiz
option.save!
puts "Options 2 added succesfully, well done it's amazing"

puts "making question 3"
quiz = Question.new(content: "De nombreux plastiques sont recyclables, et afin de faciliter cela, on les tries selon les :", learning_id: learningh.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "5 différents labels de plastiques", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "5 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents labels de plastique", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 4"
quiz = Question.new(content: "Quel est le plastique utilisé majoritairement pour les sachets de pains ou les sacs de nourriture surgelés ?", learning_id: learningh.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le PET", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le PP", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PS", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 5"
quiz = Question.new(content: "Quel est le plastique le plus recyclé au monde et donc le plus safe à acheté ?", learning_id: learningh.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polystyrène", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le PVC", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PET", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing and over"

puts "making question"
quiz = Question.new(content: "Quel est le plastique le moins recyclé au monde, et donc le plus nocif parmis ceux recyclables ?", learning_id: learningh.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polypropylene", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le polystyrène", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PVDC", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question"
quiz = Question.new(content: "Le PVC est un plastique qui est", learning_id: learningi.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "souple et difficile à recycler", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "dûr et facile à recycler", good: false)
option.question = quiz
option.save!

option = Option.create(content: "souple et facile à recycler", good: true)
option.question = quiz
option.save!

option = Option.create(content: "dûr et difficile à recycler", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 2"
quiz = Question.new(content: "Comment peut-on différencier le PET et le PEH ?", learning_id: learningi.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "le label sur le plastique et leur opacité", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "le label sur le plastique et la dureté", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur couleur", good: false)
option.question = quiz
option.save!

option = Option.create(content: "le label sur le plastique et leur utilisation très différentes", good: false)
option.question = quiz
option.save!
puts "Options 2 added succesfully, well done it's amazing"

puts "making question 3"
quiz = Question.new(content: "De nombreux plastiques sont recyclables, et afin de faciliter cela, on les tries selon les :", learning_id: learningi.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "5 différents labels de plastiques", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "5 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents types de plastiques", good: false)
option.question = quiz
option.save!

option = Option.create(content: "7 différents labels de plastique", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 4"
quiz = Question.new(content: "Quel est le plastique utilisé majoritairement pour les sachets de pains ou les sacs de nourriture surgelés ?", learning_id: learningi.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le PET", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le PP", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PS", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 5"
quiz = Question.new(content: "Quel est le plastique le plus recyclé au monde et donc le plus safe à acheté ?", learning_id: learningi.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polystyrène", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le PVC", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PET", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing and over"

puts "making question"
quiz = Question.new(content: "Quel est le plastique le moins recyclé au monde, et donc le plus nocif parmis ceux recyclables ?", learning_id: learningi.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Le polypropylene", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Le polystyrène", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le LP-DE", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Le PVDC", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"
