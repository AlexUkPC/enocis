# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = CreateAdminService.new.call
user2 = User.find_or_create_by!(email: 'mapadrianpetre@gmail.com') do |user|
  user.password = '123456'
  user.password_confirmation = '123456'
  user.admin!
end
user3 = User.find_or_create_by!(email: 'vlad.rogna@gmail.com') do |user|
  user.password = '123456'
  user.password_confirmation = '123456'
  user.admin!
end
user4 = User.find_or_create_by!(email: 'andreescucristiana@gmail.com') do |user|
  user.password = '123456'
  user.password_confirmation = '123456'
  user.admin!
end
icon = Hash.new
[*'a'..'z', *'A'..'Z', *'0'..'9'].each { |letter| icon[letter] = Icon.create!(letter: letter) }

etline_icon = Hash.new
["icon-mobile", "icon-laptop", "icon-desktop", "icon-tablet", "icon-phone", "icon-document", "icon-documents", "icon-search", "icon-clipboard", "icon-newspaper", "icon-notebook", "icon-book-open", "icon-browser", "icon-calendar", "icon-presentation", "icon-picture", "icon-pictures", "icon-video", "icon-camera", "icon-printer", "icon-toolbox", "icon-briefcase", "icon-wallet", "icon-gift", "icon-bargraph", "icon-grid", "icon-expand", "icon-focus", "icon-edit", "icon-adjustments", "icon-ribbon", "icon-hourglass", "icon-lock", "icon-megaphone", "icon-shield", "icon-trophy", "icon-flag", "icon-map", "icon-puzzle", "icon-basket", "icon-envelope", "icon-streetsign", "icon-telescope", "icon-gears", "icon-key", "icon-paperclip", "icon-attachment", "icon-pricetags", "icon-lightbulb", "icon-layers", "icon-pencil", "icon-tools", "icon-tools-2", "icon-scissors", "icon-paintbrush", "icon-magnifying-glass", "icon-circle-compass", "icon-linegraph", "icon-mic", "icon-strategy", "icon-beaker", "icon-caution", "icon-recycle", "icon-anchor", "icon-profile-male", "icon-profile-female", "icon-bike", "icon-wine", "icon-hotairballoon", "icon-globe", "icon-genius", "icon-map-pin", "icon-dial", "icon-chat", "icon-heart", "icon-cloud", "icon-upload", "icon-download", "icon-target", "icon-hazardous", "icon-piechart", "icon-speedometer", "icon-global", "icon-compass", "icon-lifesaver", "icon-clock", "icon-aperture", "icon-quote", "icon-scope", "icon-alarmclock", "icon-refresh", "icon-happy", "icon-sad", "icon-facebook", "icon-twitter", "icon-googleplus", "icon-rss", "icon-tumblr", "icon-linkedin", "icon-dribbble"].each { |name| etline_icon[name] = EtlineIcon.create!(name: name) }

service1 = Service.create!(
  title: "Design",
  etline_icon_id: etline_icon['icon-tools'].id,
)
ActionText::RichText.create!(record_type: 'Service',record_id: service1.id, name: 'description', body: '<div class="trix-content"><p>Fie ca vorbim de clasic sau de modern, echipa noastra de design este aici pentru a va oferi solutii personalizate, special create pentru a fi adaptate la nevoile dumneavoastra. Fiecare proiect este conceput de designerii nostrii impreuna cu dumneavoastra pentru a construi cea mai buna solutie care sa se adapteze exact la dorintele si viziunea dumneavoastra.</p></div>')
service1.images.attach([{io: File.open(Rails.root.join('app/assets/images/services-design.jpg')), filename: 'services-design.jpg'}])

service2 = Service.create!(
  title: "Relocare",
  etline_icon_id: etline_icon['icon-tools-2'].id,
)
ActionText::RichText.create!(record_type: 'Service',record_id: service2.id, name: 'description', body: '<div class="trix-content"><p>Daca doriti o relocare a mobilierului, echipa noastra de montaj va sta la dispozitie cu servicii de demontare, transport si montare a mobilierului existent. Tinem la proiectele create alaturi de clientii nostri, si ne dorim ca acestea sa fie intotdeauna intr-o stare perfecta. Din acest motiv, fie ca va schimbati locuinta, sau doar doriti sa schimbati locul mobilei, echipa noastra va sta la dispozitie pentru a va oferi siguranta ca totul se intampla in conditii cat mai optime.</p></div>')
service2.images.attach([{io: File.open(Rails.root.join('app/assets/images/services-relocare.jpg')), filename: 'services-relocare.jpg'}, {io: File.open(Rails.root.join('app/assets/images/services-relocare-2.jpg')), filename: 'services-relocare-2.jpg'}])

service3 = Service.create!(
  title: "Revizuirea mobilierului semestrial/anual",
  etline_icon_id: etline_icon['icon-alarmclock'].id,
)
ActionText::RichText.create!(record_type: 'Service',record_id: service3.id, name: 'description', body: '<div class="trix-content"><p>Echipa noastra va sta la dispozitie pentru revizuiri semestriale sau anuale ale mobilierului pentru a ne asigura ca produsele achizitionate se afla mereu in cea mai buna stare. Produsele oferite sunt cartea noastra de vizita si functionalitatea lor 100% este un reper de calitate pentru noi.</p></div>')

service4 = Service.create!(
  title: "Recondiționare pentru mobilierul existent",
  etline_icon_id: etline_icon['icon-recycle'].id,
)
ActionText::RichText.create!(record_type: 'Service',record_id: service4.id, name: 'description', body: '<div class="trix-content"><p>Stim ce inseamna sa ai o piesa de mobilier cu o valoare sentimentala, sau poate cu o utilitate de neinlocuit, si din acest motiv punem la dispozitia clientilor nostri solutii de reconditionare a mobilierului existent.</p></div>')
service4.images.attach([{io: File.open(Rails.root.join('app/assets/images/services-reconditionare.jpg')), filename: 'services-reconditionare.jpg'}, {io: File.open(Rails.root.join('app/assets/images/services-reconditionare-2.jpg')), filename: 'services-reconditionare-2.jpg'}, {io: File.open(Rails.root.join('app/assets/images/services-reconditionare-3.jpg')), filename: 'services-reconditionare-3.jpg'}])

service5 = Service.create!(
  title: "Servicii CNC",
  etline_icon_id: etline_icon['icon-gears'].id,
)
ActionText::RichText.create!(record_type: 'Service',record_id: service5.id, name: 'description', body: '<div class="trix-content"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt praesentium quidem ut ab! Officia, facere fugiat aspernatur sunt eligendi recusandae sint totam nemo nisi, tenetur ut praesentium. Alias, expedita voluptates.</p></div>')
service5.images.attach([{io: File.open(Rails.root.join('app/assets/images/services-cnc.jpg')), filename: 'services-cnc.jpg'}, {io: File.open(Rails.root.join('app/assets/images/services-cnc-2.jpg')), filename: 'services-cnc-2.jpg'}, {io: File.open(Rails.root.join('app/assets/images/services-cnc-3.jpg')), filename: 'services-cnc-3.jpg'}, {io: File.open(Rails.root.join('app/assets/images/services-cnc-4.jpg')), filename: 'services-cnc-4.jpg'}, {io: File.open(Rails.root.join('app/assets/images/services-cnc-5.jpg')), filename: 'services-cnc-5.jpg'}])

youtube1 = Youtube.create!(
  url: "https://www.youtube.com/watch?v=ZhiBI4nJFkI",
  service_id: service1.id
)
youtube2 = Youtube.create!(
  url: "https://www.youtube.com/watch?v=BHACKCNDMW8",
  service_id: service1.id
)
youtube3 = Youtube.create!(
  url: "https://www.youtube.com/watch?v=BHACKCNDMW8",
  service_id: service2.id
)
youtube4 = Youtube.create!(
  url: "https://www.youtube.com/watch?v=BHACKCNDMW8",
  service_id: service3.id
)
youtube5 = Youtube.create!(
  url: "https://www.youtube.com/watch?v=V_3FeIVOB3k",
  service_id: service4.id
)
youtube6 = Youtube.create!(
  url: "https://www.youtube.com/watch?v=BHACKCNDMW8",
  service_id: service4.id
)
youtube7 = Youtube.create!(
  url: "https://www.youtube.com/watch?v=bGCLRBSLsgQ",
  service_id: service5.id
)
youtube8 = Youtube.create!(
  url: "https://www.youtube.com/watch?v=PsWZpIoSFXY",
  service_id: service5.id
)
youtube9 = Youtube.create!(
  url: "https://www.youtube.com/watch?v=bL_L9JWdAp8",
  service_id: service5.id
)

social_project1 = SocialProject.create!(
  title: "Proiect social 1",
)
social_project1.main_image.attach(io: File.open(Rails.root.join('app/assets/images/social_projects_1_main_image.jpg')), filename: 'social_projects_1_main_image.jpg')
ActionText::RichText.create!(record_type: 'SocialProject',record_id: social_project1.id, name: 'description', body: '<div class="trix-content"><p>Am avut parte ieri de o zi cu totul specială! Un grup de elevi curioși dar și isteți ne-au făcut o vizită! Am vorbit în primul rând despre reguli de conduită în fabrică, dar am descoperit și tipuri de materiale sau cum funcționează diferitele utilaje. Am încheiat turul nostru cu o sesiune de art&craft ( coșulețe pentru ouăle de Paște) . Și după atâta trudă meritau o mică gustare 😉! A fost o super zi iar copiii ne-au încărcat cu cea mai pură bucurie și energie pozitivă! Mulțumim copii!</p></div>')
social_project1.images.attach([{io: File.open(Rails.root.join('app/assets/images/social_projects_1_image_1.jpg')), filename: 'social_projects_1_image_1.jpg'},{io: File.open(Rails.root.join('app/assets/images/social_projects_1_image_2.jpg')), filename: 'social_projects_1_image_2.jpg'},{io: File.open(Rails.root.join('app/assets/images/social_projects_1_image_3.jpg')), filename: 'social_projects_1_image_3.jpg'}])

social_project2 = SocialProject.create!(
  title: "Proiect social 2",
)
social_project2.main_image.attach(io: File.open(Rails.root.join('app/assets/images/social_projects_2_main_image.jpg')), filename: 'social_projects_2_main_image.jpg')
ActionText::RichText.create!(record_type: 'SocialProject',record_id: social_project2.id, name: 'description', body: '<div class="trix-content"><p>Sint modo partes vitae beatae. Nihil ad rem! Ne sit sane; Confecta res esset. Sed tamen intellego quid velit. Qui est in parvis malis. Sed quae tandem ista ratio est? Nam, ut sint illa vendibiliora, haec uberiora certe sunt.</p></div>')
social_project2.images.attach([{io: File.open(Rails.root.join('app/assets/images/social_projects_2_image_1.jpg')), filename: 'social_projects_2_image_1.jpg'},{io: File.open(Rails.root.join('app/assets/images/social_projects_2_image_2.jpg')), filename: 'social_projects_2_image_2.jpg'}])

social_project3 = SocialProject.create!(
  title: "Proiect social 3",
)
social_project3.main_image.attach(io: File.open(Rails.root.join('app/assets/images/social_projects_3_main_image.jpg')), filename: 'social_projects_3_main_image.jpg')
ActionText::RichText.create!(record_type: 'SocialProject',record_id: social_project3.id, name: 'description', body: '<div class="trix-content"><p>Qua igitur re ab deo vincitur, si aeternitate non vincitur? Tubulo putas dicere? Qua tu etiam inprudens utebare non numquam. Qui autem esse poteris, nisi te amor ipse ceperit? </p></div>')
social_project3.images.attach([{io: File.open(Rails.root.join('app/assets/images/social_projects_3_image_1.jpg')), filename: 'social_projects_3_image_1.jpg'},{io: File.open(Rails.root.join('app/assets/images/social_projects_3_image_2.jpg')), filename: 'social_projects_3_image_2.jpg'}])

social_project4 = SocialProject.create!(
  title: "Proiect social 4",
)
social_project4.main_image.attach(io: File.open(Rails.root.join('app/assets/images/social_projects_4_main_image.jpg')), filename: 'social_projects_4_main_image.jpg')
ActionText::RichText.create!(record_type: 'SocialProject',record_id: social_project4.id, name: 'description', body: '<div class="trix-content"><p>Qua igitur re ab deo vincitur, si aeternitate non vincitur? Tubulo putas dicere? Qua tu etiam inprudens utebare non numquam. Qui autem esse poteris, nisi te amor ipse ceperit? </p></div>')
social_project4.images.attach([{io: File.open(Rails.root.join('app/assets/images/social_projects_3_image_1.jpg')), filename: 'social_projects_3_image_1.jpg'},{io: File.open(Rails.root.join('app/assets/images/social_projects_3_image_2.jpg')), filename: 'social_projects_3_image_2.jpg'}])

social_project5 = SocialProject.create!(
  title: "Proiect social 5",
)
social_project5.main_image.attach(io: File.open(Rails.root.join('app/assets/images/social_projects_5_main_image.jpg')), filename: 'social_projects_5_main_image.jpg')
ActionText::RichText.create!(record_type: 'SocialProject',record_id: social_project5.id, name: 'description', body: '<div class="trix-content"><p>Qua igitur re ab deo vincitur, si aeternitate non vincitur? Tubulo putas dicere? Qua tu etiam inprudens utebare non numquam. Qui autem esse poteris, nisi te amor ipse ceperit? </p></div>')
social_project5.images.attach([{io: File.open(Rails.root.join('app/assets/images/social_projects_3_image_1.jpg')), filename: 'social_projects_3_image_1.jpg'},{io: File.open(Rails.root.join('app/assets/images/social_projects_3_image_2.jpg')), filename: 'social_projects_3_image_2.jpg'}])

social_project6 = SocialProject.create!(
  title: "Proiect social 6",
)
social_project6.main_image.attach(io: File.open(Rails.root.join('app/assets/images/social_projects_6_main_image.jpg')), filename: 'social_projects_6_main_image.jpg')
ActionText::RichText.create!(record_type: 'SocialProject',record_id: social_project6.id, name: 'description', body: '<div class="trix-content"><p>Qua igitur re ab deo vincitur, si aeternitate non vincitur? Tubulo putas dicere? Qua tu etiam inprudens utebare non numquam. Qui autem esse poteris, nisi te amor ipse ceperit? </p></div>')
social_project6.images.attach([{io: File.open(Rails.root.join('app/assets/images/social_projects_3_image_1.jpg')), filename: 'social_projects_3_image_1.jpg'},{io: File.open(Rails.root.join('app/assets/images/social_projects_3_image_2.jpg')), filename: 'social_projects_3_image_2.jpg'}])

social_project7 = SocialProject.create!(
  title: "Proiect social 7",
)
social_project7.main_image.attach(io: File.open(Rails.root.join('app/assets/images/social_projects_7_main_image.jpg')), filename: 'social_projects_7_main_image.jpg')
ActionText::RichText.create!(record_type: 'SocialProject',record_id: social_project7.id, name: 'description', body: '<div class="trix-content"><p>Qua igitur re ab deo vincitur, si aeternitate non vincitur? Tubulo putas dicere? Qua tu etiam inprudens utebare non numquam. Qui autem esse poteris, nisi te amor ipse ceperit? </p></div>')
social_project7.images.attach([{io: File.open(Rails.root.join('app/assets/images/social_projects_3_image_1.jpg')), filename: 'social_projects_3_image_1.jpg'},{io: File.open(Rails.root.join('app/assets/images/social_projects_3_image_2.jpg')), filename: 'social_projects_3_image_2.jpg'}])

youtubesp1 = Youtubesp.create!(
  url: "https://www.youtube.com/watch?v=Ftc1m6bP0Lo",
  social_project_id: social_project1.id
)
youtubesp2 = Youtubesp.create!(
  url: "https://www.youtube.com/watch?v=mQw3LrayLYc",
  social_project_id: social_project1.id
)
youtubesp3 = Youtubesp.create!(
  url: "https://www.youtube.com/watch?v=mQw3LrayLYc",
  social_project_id: social_project2.id
)
youtubesp4 = Youtubesp.create!(
  url: "https://www.youtube.com/watch?v=mQw3LrayLYc",
  social_project_id: social_project3.id
)
youtubesp5 = Youtubesp.create!(
  url: "https://www.youtube.com/watch?v=Ftc1m6bP0Lo",
  social_project_id: social_project3.id
)
youtubesp6 = Youtubesp.create!(
  url: "https://www.youtube.com/watch?v=6exB9O_kT54",
  social_project_id: social_project3.id
)
youtubesp7 = Youtubesp.create!(
  url: "https://www.youtube.com/watch?v=6exB9O_kT54",
  social_project_id: social_project4.id
)

company = Company.create!(
  address: "Drumul de Centura Chitila-Mogosoaia nr. 3-5",
  url_google_maps: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2845.2510482887897!2d25.98209531552577!3d44.510010979101295!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNDTCsDMwJzM2LjAiTiAyNcKwNTknMDMuNCJF!5e0!3m2!1sro!2sro!4v1534928716237",
  phone: "0723.609.644",
  phone_name: "John Doe",
  phone2: "0723.609.645",
  phone2_name: "John Doe",
  phone3: "0723.609.646",
  phone3_name: "John Doe",
  email1: "info@enocis.ro",
  email2: "contact@enocis.ro",
  facebook: "https://www.facebook.com/Enocismobila/",
  instagram: "https://www.instagram.com/enocis_furniture",
  email_notice_contact: "alexrogna@yahoo.com"
)
company.frezari_mdf_cover_image.attach(io: File.open(Rails.root.join('app/assets/images/frezari.jpg')), filename: 'frezari.jpg')
company.frezari_mdf_front_image.attach(io: File.open(Rails.root.join('app/assets/images/frezari.jpg')), filename: 'frezari.jpg')
company.projects_cover_image.attach(io: File.open(Rails.root.join('app/assets/images/projects_bg.jpg')), filename: 'projects_bg.jpg')
company.projects_front_image.attach(io: File.open(Rails.root.join('app/assets/images/projects_front.jpg')), filename: 'projects_front.jpg')
company.social_projects_cover_image.attach(io: File.open(Rails.root.join('app/assets/images/social_projects_bg.jpg')), filename: 'social_projects_bg.jpg')
company.social_projects_front_image.attach(io: File.open(Rails.root.join('app/assets/images/social_projects_front.jpg')), filename: 'social_projects_front.jpg')
company.services_cover_image.attach(io: File.open(Rails.root.join('app/assets/images/furniture-handmade-man-279645-e1533310206405.jpg')), filename: 'furniture-handmade-man-279645-e1533310206405.jpg')
company.services_front_image.attach(io: File.open(Rails.root.join('app/assets/images/abstract-architect-architectural-design-323645-e1533310392294.jpg')), filename: 'abstract-architect-architectural-design-323645-e1533310392294.jpg')
company.contact_cover_image.attach(io: File.open(Rails.root.join('app/assets/images/blur-bottle-bright-building-273238.jpg')), filename: 'blur-bottle-bright-building-273238.jpg')
company.politica_de_confidentialitate_cover_image.attach(io: File.open(Rails.root.join('app/assets/images/furniture-handmade-man-279645-e1533310206405.jpg')), filename: 'furniture-handmade-man-279645-e1533310206405.jpg')
company.politica_cookies_cover_image.attach(io: File.open(Rails.root.join('app/assets/images/furniture-handmade-man-279645-e1533310206405.jpg')), filename: 'furniture-handmade-man-279645-e1533310206405.jpg')

product_category1 = ProductCategory.create!(
  name: "Mobila Living",
  title: "Oferim solutii personalizate de mobila living potrivite stilului dumneavoastra",
  data_icon: "h",
  icon_id: icon['h'].id
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category1.id, name: 'description', body: '<div class="trix-content"><p>Cand vorbim de mobila living, fie ca alegem un design modern, minimalist, sau un design clasic, living-ul ramane zona unde petrecem timp alaturi de cei dragi, si este un spatiu care ne place sa transmita ceva despre personalitatea noastra.</p>

<p>Living-ul este considerat probabil cea mai reprezentativa camera a oricarei locuinte, si de obicei este camera a carei amenajare trebuie gandita pe termen lung. Din acest motiv nu trebuie facut rabat de la calitate pentru pret. In general living-ul sau sufrageria este acelasi spatiu cu camera de oaspeti, si trebuie amenajat cat mai cald pentru a crea o atmosfera cat mai primitoare, si de relaxare. Mai mult, fiind camera cea mai reprezentativa, este foarte important sa alegem cu atentie atat elementele cat si culorile folosite, pentru a fi in ton cu atmosfera creata de restul locuintei. </p>

<p>In ultima perioada conceptul de “open-space” se regaseste tot mai des in constructiile/renovarile de case/apartamente, si de cele mai multe ori bucataria este una cu livinigul astfel spatiul unde ne petrecem ziua cu cei dragi, devenind practic una cu locul de luat masa. Tocmai din acest motiv amplasamentul devine un factor esential in design-ul unui living, si cand alegem mobila living trebuiesc luate in considerare toate elementele care formeaza sapatiul. </p>

<p>Realizat din PAL si/sau MDF, este important pentru noi ca proiectul dumneavoastra de mobila living sa fie pe cat de estetic, pe atat de util, si usor de intretinut pentru a ii asigura longevitatea. </p></div>')
product_category1.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/interior-2685521_1920.jpg')), filename: 'interior-2685521_1920.jpg')
product_category1.front_image.attach(io: File.open(Rails.root.join('app/assets/images/apartment-clean-condominium-279719-e1533565764145.jpg')), filename: 'apartment-clean-condominium-279719-e1533565764145.jpg')

product1 = Product.create!(
  name: "Living Venetia",
  price: "4,200",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category1.id
)
product1.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_3.jpg')), filename: 'Living_3.jpg')

product2 = Product.create!(
  name: "Living New York",
  price: "4,800",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category1.id
)
product2.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_9.jpg')), filename: 'Living_9.jpg')

product3 = Product.create!(
  name: "Living Mallorca",
  price: "11,300",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category1.id
)
product3.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_11.jpg')), filename: 'Living_11.jpg')

product4 = Product.create!(
  name: "Living Granada",
  price: "5,800",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category1.id
)
product4.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_13.jpg')), filename: 'Living_13.jpg')

product5 = Product.create!(
  name: "Living Boston",
  price: "3,900",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category1.id
)
product5.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_17.jpg')), filename: 'Living_17.jpg')

product6 = Product.create!(
  name: "Living Cordoba",
  price: "8,900",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF/Sticla",
  accessories: "Blum/Hafelle",
  color: "uni (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category1.id
)
product6.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_28.jpg')), filename: 'Living_28.jpg')

product7 = Product.create!(
  name: "Living San Francisco",
  price: "4,700",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category1.id
)
product7.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_30.jpg')), filename: 'Living_30.jpg')

product8 = Product.create!(
  name: "Living Viena",
  price: "8,200",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category1.id
)
product8.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_39.jpg')), filename: 'Living_39.jpg')

product9 = Product.create!(
  name: "Living Malaga",
  price: "9,100",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF/Sticla",
  accessories: "Blum/Hafelle",
  color: "décor/uni (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category1.id
)
product9.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_42.jpg')), filename: 'Living_42.jpg')

product10 = Product.create!(
  name: "Living Minsk",
  price: "9,300",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF",
  accessories: "Blum/Hafelle",
  color: "uni (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category1.id
)
product10.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_48.jpg')), filename: 'Living_48.jpg')

product11 = Product.create!(
  name: "Living Geneva",
  price: "8,300",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF",
  accessories: "Blum/Hafelle",
  color: "uni (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category1.id
)
product11.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_50.jpg')), filename: 'Living_50.jpg')

product_category2 = ProductCategory.create!(
  name: "Mobila Bucatarie",
  title: "Mobila bucatarie creata pentru utilitatea si confortul dumneavoastra",
  data_icon: "v",
  icon_id: icon['v'].id
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category2.id, name: 'description', body: '<div class="trix-content"><p>Cand vine vorba de mobila bucatarie, ulititatea trebuie imbinata cu confortul intr-un dozaj optim. Stim cu totii ca o perioada buna din rutina zilnica ne-o petrecem in bucatarie, iar mobila de bucatarie trebuie organizata pentru a transforma experienta in una cat mai relaxanta. </p>

<p>Design-ul este un factor important, mai ales cand vorbim de amplasament, si trebuie intotdeauna adaptat la dimensiunile si forma spatiului disponibil. Orice bucatarie are zone de interes cum ar fi locul de gatit, sau locul de luat masa, si doar printr-o planificare amanuntita putem eficientiza spatiul. In ultima perioada conceptul de “open-space” se regaseste tot mai des in constructiile/renovarile de case/apartamente, si de cele mai multe ori bucataria este una cu livinigul, astfel spatiul unde ne petrecem ziua cu cei dragi, devenind practic una cu locul de luat masa. Tocmai din acest motiv amplasamentul devine un factor esential in design-ul unei bucatarii, si cand alegem mobila de bucatarie trebuiesc luate in considerare toate elementele care formeaza sapatiul. </p>
 
<p>Sa nu uitam ca mobila de bucatarie trebuie sa fie reprezentativa stilului dumneavoastra. Fie ca alegeti un stil clasic in care accentul se pune pe finisaje, sau unul minimalist in care reprezentative sunt liniile fine, este important sa fie in acelasi ton cu restul obiectelor din bucatarie, dar si cu restul locuintei, pentru o armonizare optima. </p>
 
<p>Mobila bucatarie realizata din PAL sau MDF, accesoriile alese, si culorile desenate, dau starea incaperii. Ele trebuiec alese cu grija pentru a evidentia atmosfera rece, de liniste, sau calda, vie, pe care doriti sa o emane bucatarie dumneavoastra.</p></div>')
product_category2.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/faucet-interior-kitchen-6256-e1533235036830.jpg')), filename: 'faucet-interior-kitchen-6256-e1533235036830.jpg')
product_category2.front_image.attach(io: File.open(Rails.root.join('app/assets/images/architecture-backsplash-cabinets-279648-e1533238248953.jpg')), filename: 'architecture-backsplash-cabinets-279648-e1533238248953.jpg')

product12 = Product.create!(
  name: "Bucatarie Kentucky",
  price: "9,100",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category2.id
)
product12.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_2.jpg')), filename: 'Bucatarie_2.jpg')

product13 = Product.create!(
  name: "Bucatarie Cordoba",
  price: "12,300",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category2.id
)
product13.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_7.jpg')), filename: 'Bucatarie_7.jpg')

product14 = Product.create!(
  name: "Bucatarie Washington",
  price: "8,600",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category2.id
)
product14.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_10.jpg')), filename: 'Bucatarie_10.jpg')

product15 = Product.create!(
  name: "Bucatarie Los Angeles",
  price: "5,500",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category2.id
)
product15.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_15.jpg')), filename: 'Bucatarie_15.jpg')

product16 = Product.create!(
  name: "Bucatarie Manhattan",
  price: "20,900",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category2.id
)
product16.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_18.jpg')), filename: 'Bucatarie_18.jpg')

product17 = Product.create!(
  name: "Bucatarie Bronx",
  price: "16,100",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category2.id
)
product17.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_19.jpg')), filename: 'Bucatarie_19.jpg')

product18 = Product.create!(
  name: "Bucatarie Venetia",
  price: "18,100",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category2.id
)
product18.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_25.jpg')), filename: 'Bucatarie_25.jpg')

product19 = Product.create!(
  name: "Bucatarie Minsk",
  price: "18,400",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category2.id
)
product19.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_30.jpg')), filename: 'Bucatarie_30.jpg')

product20 = Product.create!(
  name: "Bucatarie Santa Ana",
  price: "26,700",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF",
  accessories: "Blum/Hafelle",
  color: "uni/décor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category2.id
)
product20.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_36.jpg')), filename: 'Bucatarie_36.jpg')

product21 = Product.create!(
  name: "Bucatarie Berlin",
  price: "18,300",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF",
  accessories: "Blum/Hafelle",
  color: "uni/décor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category2.id
)
product21.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_44.jpg')), filename: 'Bucatarie_44.jpg')

product22 = Product.create!(
  name: "Bucatarie Moscova",
  price: "22,900",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF/MDF Infoliat",
  accessories: "Blum/Hafelle",
  color: "uni (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category2.id
)
product22.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_45.jpg')), filename: 'Bucatarie_45.jpg')

product_category3 = ProductCategory.create!(
  name: "Mobila Dormitor",
  title: "Mobila dormitor personalizata pentru confortul dumneavoastra",
  data_icon: "z",
  icon_id: icon['z'].id
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category3.id, name: 'description', body: '<div class="trix-content"><p>Odihna este poate cel mai important factor pentru a avea o viata sanatoasa, si din acest motiv punem accentul ca mobila dormitor sa creeze o ambienta perfecta pentru nevoile dumneavoastra. Mobila dormitor in general nu trebuie sa fie aglomerata, pentru a crea o atmosfera aerisita, relaxanta. </p>

<p>Design-ul vine complementar utilitatii, dar nu trebuie ignorat. Este foarte important pentru cine este destinat un dormitor. Fie ca e vorba de un dormitor matrimonial pentru adulti, sau dormitorul copiilor, dormitorul trebuie sa aiba caracteristicile care ofera cea mai optima stare de liniste potrivita persoanei caruia ii este destinat. </p>

<p>In general un dormitor ar trebui mobilat cat mai minimalist ca si numar de elemente, doar cu elemente foarte utile cum ar fi patul, o comoda, si poate un dulap, iar dupa, in functie de necesitati, adaugate elemente ca birou, scaune si alte elemente necesare. In functie de necestiati putem umple spatiul cu toate elementele pe care le dorim atata timp cat avem buna cunostinta ca un dormitor aglomerat inseamna o atmosfera incarcata. </p>

<p>In functie de personalitatea fiecaruia dintre noi, culorile alese pot fi reci, care sa emane acea atmosfera linistita de care unii din noi avem nevoie sa ne odihnim, sau calde, vii, care sa emane acea atmosfera de “acasa” pe care unii din noi o cautam cand ne odihnim. La fel de important este sa urmam pe cat se poate acelasi ton cu restul locuintei. </p>

<p>Realizata din PAL si/sau MDF, mobila dormitor trebuie sa ofere atat utilitate cat si confort, dar poate si mai important o usoara intretinere care duce la longevitate.</p></div>')
product_category3.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/bed-bedroom-closet-90319-1-e1533654677490.jpg')), filename: 'bed-bedroom-closet-90319-1-e1533654677490.jpg')
product_category3.front_image.attach(io: File.open(Rails.root.join('app/assets/images/architecture-backsplash-cabinets-279648-e1533238248953.jpg')), filename: 'architecture-backsplash-cabinets-279648-e1533238248953.jpg')

product23 = Product.create!(
  name: "Dormitor Mallorca",
  price: "6,300",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category3.id
)
product23.image.attach(io: File.open(Rails.root.join('app/assets/images/Dormitor_1.jpg')), filename: 'Dormitor_1.jpg')

product24 = Product.create!(
  name: "Dormitor New-York",
  price: "16,600",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category3.id
)
product24.image.attach(io: File.open(Rails.root.join('app/assets/images/Dormitor_7.jpg')), filename: 'Dormitor_7.jpg')

product25 = Product.create!(
  name: "Dormitor Boston",
  price: "7,100",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category3.id
)
product25.image.attach(io: File.open(Rails.root.join('app/assets/images/Dormitor_17.jpg')), filename: 'Dormitor_17.jpg')

product26 = Product.create!(
  name: "Dormitor Geneva",
  price: "4,300",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category3.id
)
product26.image.attach(io: File.open(Rails.root.join('app/assets/images/Dormitor_23.jpg')), filename: 'Dormitor_23.jpg')

product27 = Product.create!(
  name: "Dormitor Cordoba",
  price: "14,700",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category3.id
)
product27.image.attach(io: File.open(Rails.root.join('app/assets/images/Dormitor_24.jpg')), filename: 'Dormitor_24.jpg')

product28 = Product.create!(
  name: "Dormitor San Francisco",
  price: "4,700",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category3.id
)
product28.image.attach(io: File.open(Rails.root.join('app/assets/images/Dormitor_27.jpg')), filename: 'Dormitor_27.jpg')

product_category4 = ProductCategory.create!(
  name: "Mobilier Baie",
  title: "Mobilier baie proiectat pentru a ingloba necsitatile dumneavoastra",
  data_icon: "Y",
  icon_id: icon['Y'].id
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category4.id, name: 'description', body: '<div class="trix-content"><p>Punem la dispozitia dumneavoastra solutii practice, ergonomice si estetice de mobilier baie, realizate in concordanta cu dorintele dumneavoastra. Cand vorbim de mobilier baie, pana si alegerea optima a culorilor ajuta la o buna luminozitate si o ambienta relaxanta, lucruri necesare in locul unde ne desfasuram tabieturile zilnice. </p>

<p>Mobilierul de baie, pe langa natura estetica pe care o ofera, are o caracteristica practica in a ne ajuta sa pastram produsele cosmetice, prosoapele etc., dar si mai mult, ne poate ajuta in anumite situatii sa mascam instalatii sau alte elemente neestetice. </p>

<p>Design-ul este important si trebuie creat in ton cu restul elementelor din baie, si chiar si doar alegerea corecta a culorilor poate da viata acestui spatiu intim. </p>

<p>Realizat din PAL si/sau MDF, pe langa caracteristicile estetice si utilitatea oferita, ajuta la o usoara intretinere si o buna longevitate. </p></div>')
product_category4.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/apartment-bath-bathroom-930705-e1533656108155.jpg')), filename: 'apartment-bath-bathroom-930705-e1533656108155.jpg')
product_category4.front_image.attach(io: File.open(Rails.root.join('app/assets/images/bathroom-cabinet-candles-342800-e1533656205223.jpg')), filename: 'bathroom-cabinet-candles-342800-e1533656205223.jpg')

product29 = Product.create!(
  name: "Baie Geneva",
  price: "2,200",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "alb/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category4.id
)
product29.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_2.jpg')), filename: 'Baie_2.jpg')

product30 = Product.create!(
  name: "Baie Bronx",
  price: "1,200",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category4.id
)
product30.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_3.jpg')), filename: 'Baie_3.jpg')

product31 = Product.create!(
  name: "Baie Minsk",
  price: "3,100",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat/MDF vopsit",
  accessories: "Blum/Hafelle",
  color: "alb/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category4.id
)
product31.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_6.jpg')), filename: 'Baie_6.jpg')

product32 = Product.create!(
  name: "Baie Cordoba",
  price: "5,300",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat/MDF vopsit",
  accessories: "Blum/Hafelle",
  color: "alb (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category4.id
)
product32.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_9.jpg')), filename: 'Baie_9.jpg')

product33 = Product.create!(
  name: "Baie Manhattan",
  price: "3,600",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat/MDF vopsit",
  accessories: "Blum/Hafelle",
  color: "gri/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category4.id
)
product33.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_16.jpg')), filename: 'Baie_16.jpg')

product34 = Product.create!(
  name: "Baie Viena",
  price: "4,700",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category4.id
)
product34.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_26.jpg')), filename: 'Baie_26.jpg')

product35 = Product.create!(
  name: "Baie Dortmund",
  price: "1,100",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category4.id
)
product35.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_30.jpg')), filename: 'Baie_30.jpg')

product_category5 = ProductCategory.create!(
  name: "Mobilier Birou",
  title: "Mobilier birou adaptat la standardele dumneavoastra",
  data_icon: "l",
  icon_id: icon['l'].id
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category5.id, name: 'description', body: '<div class="trix-content"><p>Cand vorbim de mobilier birou, vorbim despre o organizare eleganta, functionala, practica si fiabila a elementelor, pentru a crea un mediu cat mai optim in atingerea rezultatelor. Mobilier birou trebuie sa atinga standarde cat mai apropiate de serviciile pe care le oferiti. </p></div>')
product_category5.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/books-clock-contemporary-941546-e1533658438648.jpg')), filename: 'books-clock-contemporary-941546-e1533658438648.jpg')
product_category5.front_image.attach(io: File.open(Rails.root.join('app/assets/images/bookcase-chairs-clean-667838-e1533659543426.jpg')), filename: 'bookcase-chairs-clean-667838-e1533659543426.jpg')

product36 = Product.create!(
  name: "Birou San Francisco",
  price: "4,900",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "alb/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category5.id
)
product36.image.attach(io: File.open(Rails.root.join('app/assets/images/Birou_9.jpg')), filename: 'Birou_9.jpg')

product37 = Product.create!(
  name: "Birou Manhattan",
  price: "4,100",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category5.id
)
product37.image.attach(io: File.open(Rails.root.join('app/assets/images/Birou_11.jpg')), filename: 'Birou_11.jpg')

product38 = Product.create!(
  name: "Birou Viena",
  price: "2,900",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category5.id
)
product38.image.attach(io: File.open(Rails.root.join('app/assets/images/Birou_13.jpg')), filename: 'Birou_13.jpg')

product39 = Product.create!(
  name: "Birou Los Angeles",
  price: "6,800",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/Sticla",
  accessories: "Blum/Hafelle",
  color: "décor (poate varia in functie de optiunile clientilor)",
  product_category_id: product_category5.id
)
product39.image.attach(io: File.open(Rails.root.join('app/assets/images/Birou_16.jpg')), filename: 'Birou_16.jpg')

product_category6 = ProductCategory.create!(
  name: "Mobila Exterior",
  title: "Solutii personalizate de mobila exterior pentru spatiul dumneavoastra",
  data_icon: "H",
  icon_id: icon['H'].id
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category6.id, name: 'description', body: '<div class="trix-content"><p>Fie ca vorbim de curtea casei dumneavoastra sau de afacerea pe care o desfasurati in aer liber, va punem la dispozitie mobila exterior la cele mai inalte standarde. Mobila exterior, realizata din lemn, asigura longevitate, o utilitate optima si o intretinere cat mai usoara. </p></div>')
product_category6.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/balcony-cafe-chairs-1237073-2-e1533660340869.jpg')), filename: 'balcony-cafe-chairs-1237073-2-e1533660340869.jpg')
product_category6.front_image.attach(io: File.open(Rails.root.join('app/assets/images/autumn-basket-blur-263039-e1533660282783.jpg')), filename: 'autumn-basket-blur-263039-e1533660282783.jpg')

frezarimdf_category1 = FrezarimdfCategory.create!(
  name: "Clasic",
  data_icon: "N",
  icon_id: icon['N'].id
)
frezarimdf_category2 = FrezarimdfCategory.create!(
  name: "Modern",
  data_icon: "A",
  icon_id: icon['A'].id
)
frezarimdf_category3 = FrezarimdfCategory.create!(
  name: "Line",
  data_icon: "7",
  icon_id: icon['7'].id
)
frezarimdf1 = Frezarimdf.create!(
  name: "ENO-01",
  frezarimdf_category_id: frezarimdf_category1.id
)
frezarimdf1.image_svg.attach(io: File.open(Rails.root.join('app/assets/images/V90_Drept.svg')), filename: 'V90_Drept.svg')

frezarimdf2 = Frezarimdf.create!(
  name: "ENO-02",
  frezarimdf_category_id: frezarimdf_category1.id
)
frezarimdf2.image_svg.attach(io: File.open(Rails.root.join('app/assets/images/V90_Rotund.svg')), filename: 'V90_Rotund.svg')

frezarimdf3 = Frezarimdf.create!(
  name: "ENO-03",
  frezarimdf_category_id: frezarimdf_category1.id
)
frezarimdf3.image_svg.attach(io: File.open(Rails.root.join('app/assets/images/V90A_Arcuit.svg')), filename: 'V90A_Arcuit.svg')

frezarimdf4 = Frezarimdf.create!(
  name: "ENO-04",
  frezarimdf_category_id: frezarimdf_category1.id
)
frezarimdf4.image_svg.attach(io: File.open(Rails.root.join('app/assets/images/V120_Drept.svg')), filename: 'V120_Drept.svg')

frezarimdf5 = Frezarimdf.create!(
  name: "ENO-05",
  frezarimdf_category_id: frezarimdf_category2.id
)
frezarimdf5.image_svg.attach(io: File.open(Rails.root.join('app/assets/images/KL5.svg')), filename: 'KL5.svg')

frezarimdf6 = Frezarimdf.create!(
  name: "ENO-06",
  frezarimdf_category_id: frezarimdf_category2.id
)
frezarimdf6.image_svg.attach(io: File.open(Rails.root.join('app/assets/images/KS8.svg')), filename: 'KS8.svg')

frezarimdf7 = Frezarimdf.create!(
  name: "ENO-07",
  frezarimdf_category_id: frezarimdf_category3.id
)
frezarimdf7.image_svg.attach(io: File.open(Rails.root.join('app/assets/images/LM66_Drept.svg')), filename: 'LM66_Drept.svg')

project_category1 = ProjectCategory.create!(
  name: "Living"
)
project_category2 = ProjectCategory.create!(
  name: "Bucatarie"
)
project_category3 = ProjectCategory.create!(
  name: "Dormitor"
)
project_category4 = ProjectCategory.create!(
  name: "Baie"
)
project_category5 = ProjectCategory.create!(
  name: "Birou"
)
project_category6 = ProjectCategory.create!(
  name: "Exterior"
)
project1 = Project.create!(
  name: "Project Venetia",
  author: "John Doe",
  date: "2022-02-10",
  project_category_ids: [project_category1.id, project_category2.id]
)
project1.images.attach([{io: File.open(Rails.root.join('app/assets/images/Living_3.jpg')), filename: 'Living_3.jpg'},{io: File.open(Rails.root.join('app/assets/images/Bucatarie_25.jpg')), filename: 'Bucatarie_25.jpg'}])
ActionText::RichText.create!(record_type: 'Project',record_id: project1.id, name: 'description', body: '<div class="trix-content"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Hoc mihi cum tuo fratre convenit. Duarum enim vitarum nobis erunt instituta capienda. </p>

  <p>Age, inquies, ista parva sunt. Ut proverbia non nulla veriora sint quam vestra dogmata. Audeo dicere, inquit. </p>
  
  <p>Quamquam haec quidem praeposita recte et reiecta dicere licebit. Quae similitudo in genere etiam humano apparet. Sic consequentibus vestris sublatis prima tolluntur. Sed quanta sit alias, nunc tantum possitne esse tanta. Comprehensum, quod cognitum non habet? Quare attende, quaeso. Is es profecto tu. Hunc vos beatum; </p>
  
  <p>Quod quidem iam fit etiam in Academia. Scrupulum, inquam, abeunti; Tamen a proposito, inquam, aberramus. Nam ista vestra: Si gravis, brevis; </p>
  
  <p>Et quod est munus, quod opus sapientiae? Multoque hoc melius nos veriusque quam Stoici. Duo Reges: constructio interrete. An hoc usque quaque, aliter in vita? Qui ita affectus, beatum esse numquam probabis; </p></div>')
  
project2 = Project.create!(
  name: "Project Mallorca",
  author: "John Doe",
  date: "2021-12-01",
  project_category_ids: [project_category1.id, project_category3.id]
)
project2.images.attach([{io: File.open(Rails.root.join('app/assets/images/Living_11.jpg')), filename: 'Living_11.jpg'},{io: File.open(Rails.root.join('app/assets/images/Dormitor_1.jpg')), filename: 'Dormitor_1.jpg'}])
ActionText::RichText.create!(record_type: 'Project',record_id: project2.id, name: 'description', body: '<div class="trix-content"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Egone quaeris, inquit, quid sentiam? At multis malis affectus. Iam in altera philosophiae parte. </p>

  <p>Igitur ne dolorem quidem. Tum Piso: Quoniam igitur aliquid omnes, quid Lucius noster? Simus igitur contenti his. Si enim ad populum me vocas, eum. Ille incendat? Hic ambiguo ludimur. Pauca mutat vel plura sane; Quaerimus enim finem bonorum. </p>
  
  <p>At ille pellit, qui permulcet sensum voluptate. Haec para/doca illi, nos admirabilia dicamus. Nam ista vestra: Si gravis, brevis; Quare ad ea primum, si videtur; Quid ergo hoc loco intellegit honestum? Videsne, ut haec concinant? Nos vero, inquit ille; </p>
  
  <p>Duo Reges: constructio interrete. An eiusdem modi? Itaque vides, quo modo loquantur, nova verba fingunt, deserunt usitata. Non est igitur voluptas bonum. Quid Zeno? Qui convenit? </p>
  
  <p>Vestri haec verecundius, illi fortasse constantius. Tum mihi Piso: Quid ergo? Efficiens dici potest. Summus dolor plures dies manere non potest? Quis est tam dissimile homini. </p></div>')

project3 = Project.create!(
  name: "Project Boston",
  author: "John Doe",
  date: "2021-08-17",
  project_category_ids: [project_category1.id, project_category3.id]
)
project3.images.attach([{io: File.open(Rails.root.join('app/assets/images/Living_17.jpg')), filename: 'Living_17.jpg'},{io: File.open(Rails.root.join('app/assets/images/Dormitor_17.jpg')), filename: 'Dormitor_17.jpg'}])
ActionText::RichText.create!(record_type: 'Project',record_id: project3.id, name: 'description', body: '<div class="trix-content"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non laboro, inquit, de nomine. Duo Reges: constructio interrete. Aliter enim nosmet ipsos nosse non possumus. At enim hic etiam dolore. Sed ego in hoc resisto; Primum quid tu dicis breve? </p>

  <p>Primum in nostrane potestate est, quid meminerimus? Quid sequatur, quid repugnet, vident. Magna laus. Frater et T. </p>
  
  <p>Quis hoc dicit? Itaque his sapiens semper vacabit. </p>
  
  <p>Non igitur bene. Efficiens dici potest. Quis istud, quaeso, nesciebat? Multoque hoc melius nos veriusque quam Stoici. Quo modo autem philosophus loquitur? Quae cum dixisset, finem ille. Quod quidem nobis non saepe contingit. Graece donan, Latine voluptatem vocant. Quae diligentissime contra Aristonem dicuntur a Chryippo. </p>
  
  <p>Ita relinquet duas, de quibus etiam atque etiam consideret. Quid ergo hoc loco intellegit honestum? </p>
  
  </div>')

project4 = Project.create!(
  name: "Project Cordoba",
  author: "John Doe",
  date: "2021-10-17",
  project_category_ids: [project_category1.id, project_category2.id, project_category3.id, project_category4.id,]
)
project4.images.attach([{io: File.open(Rails.root.join('app/assets/images/Living_28.jpg')), filename: 'Living_28.jpg'},{io: File.open(Rails.root.join('app/assets/images/Bucatarie_7.jpg')), filename: 'Bucatarie_7.jpg'},{io: File.open(Rails.root.join('app/assets/images/Dormitor_24.jpg')), filename: 'Dormitor_24.jpg'},{io: File.open(Rails.root.join('app/assets/images/Baie_9.jpg')), filename: 'Baie_9.jpg'}])
ActionText::RichText.create!(record_type: 'Project',record_id: project4.id, name: 'description', body: '<div class="trix-content"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla erit controversia. Ille enim occurrentia nescio quae comminiscebatur; Quod cum dixissent, ille contra. Sint modo partes vitae beatae. </p>

  <p>Qua tu etiam inprudens utebare non numquam. Hoc loco tenere se Triarius non potuit. Apud ceteros autem philosophos, qui quaesivit aliquid, tacet; Quae cum dixisset, finem ille. Quid enim possumus hoc agere divinius? Quis Aristidem non mortuum diligit? Falli igitur possumus. Utilitatis causa amicitia est quaesita. </p>
  
  <p>Qui convenit? At certe gravius. Illum mallem levares, quo optimum atque humanissimum virum, Cn. Quod ea non occurrentia fingunt, vincunt Aristonem; </p>
  
  <p>Quorum altera prosunt, nocent altera. Ut id aliis narrare gestiant? Profectus in exilium Tubulus statim nec respondere ausus; Hoc tu nunc in illo probas. </p>
  
  <p>Tollenda est atque extrahenda radicitus. Duo Reges: constructio interrete. Sed ille, ut dixi, vitiose. Istic sum, inquit. </p>
  
  </div>')

project5 = Project.create!(
  name: "Project San Francisco",
  author: "John Doe",
  date: "2021-10-17",
  project_category_ids: [project_category1.id, project_category3.id, project_category5.id,]
)
project5.images.attach([{io: File.open(Rails.root.join('app/assets/images/Living_30.jpg')), filename: 'Living_30.jpg'},{io: File.open(Rails.root.join('app/assets/images/Dormitor_27.jpg')), filename: 'Dormitor_27.jpg'},{io: File.open(Rails.root.join('app/assets/images/Birou_9.jpg')), filename: 'Birou_9.jpg'}])
ActionText::RichText.create!(record_type: 'Project',record_id: project5.id, name: 'description', body: '<div class="trix-content"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Restatis igitur vos; Duo Reges: constructio interrete. </p>

  <p>Ac tamen hic mallet non dolere. Beatus sibi videtur esse moriens. Ratio quidem vestra sic cogit. Tria genera bonorum; Istic sum, inquit. Quid iudicant sensus? Aliter enim explicari, quod quaeritur, non potest. Minime vero, inquit ille, consentit. </p>
  
  <p>Hos contra singulos dici est melius. Quam ob rem tandem, inquit, non satisfacit? Tum Quintus: Est plane, Piso, ut dicis, inquit. Fortasse id optimum, sed ubi illud: Plus semper voluptatis? </p>
  
  <p>Estne, quaeso, inquam, sitienti in bibendo voluptas? Quippe: habes enim a rhetoribus; Solum praeterea formosum, solum liberum, solum civem, stultost; Sed residamus, inquit, si placet. Sed nunc, quod agimus; Erat enim Polemonis. </p>
  
  <p>Ergo instituto veterum, quo etiam Stoici utuntur, hinc capiamus exordium. Qualem igitur hominem natura inchoavit? Bonum integritas corporis: misera debilitas. Quae cum dixisset, finem ille. Ratio quidem vestra sic cogit. </p>
  
  </div>')

project6 = Project.create!(
  name: "Project Viena",
  author: "John Doe",
  date: "2021-10-17",
  project_category_ids: [project_category1.id, project_category4.id, project_category5.id]
)
project6.images.attach([{io: File.open(Rails.root.join('app/assets/images/Living_39.jpg')), filename: 'Living_39.jpg'},{io: File.open(Rails.root.join('app/assets/images/Baie_26.jpg')), filename: 'Baie_26.jpg'},{io: File.open(Rails.root.join('app/assets/images/Birou_13.jpg')), filename: 'Birou_13.jpg'}])
ActionText::RichText.create!(record_type: 'Project',record_id: project6.id, name: 'description', body: '<div class="trix-content"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Istam voluptatem, inquit, Epicurus ignorat? Beatus sibi videtur esse moriens. Istic sum, inquit. Restatis igitur vos; Nam Pyrrho, Aristo, Erillus iam diu abiecti. Nos vero, inquit ille; </p>

  <p>At certe gravius. Duo Reges: constructio interrete. Sed nimis multa. Quid est igitur, inquit, quod requiras? Hoc ne statuam quidem dicturam pater aiebat, si loqui posset. Quo modo autem philosophus loquitur? </p>
  
  <p>Qui non moveatur et offensione turpitudinis et comprobatione honestatis? Sin tantum modo ad indicia veteris memoriae cognoscenda, curiosorum. Eam stabilem appellas. Non risu potius quam oratione eiciendum? Restatis igitur vos; </p>
  
  <p>Quamquam id quidem licebit iis existimare, qui legerint. Neutrum vero, inquit ille. Cave putes quicquam esse verius. Pauca mutat vel plura sane; Non dolere, inquam, istud quam vim habeat postea videro; Recte dicis; </p>
  
  <p>Eam tum adesse, cum dolor omnis absit; Si quicquam extra virtutem habeatur in bonis. Erit enim mecum, si tecum erit. Fortemne possumus dicere eundem illum Torquatum? </p>
  
  </div>')

project7 = Project.create!(
  name: "Project Minsk",
  author: "John Doe",
  date: "2022-02-20",
  project_category_ids: [project_category1.id, project_category2.id, project_category4.id,]
)
project7.images.attach([{io: File.open(Rails.root.join('app/assets/images/Living_48.jpg')), filename: 'Living_48.jpg'},{io: File.open(Rails.root.join('app/assets/images/Bucatarie_30.jpg')), filename: 'Bucatarie_30.jpg'},{io: File.open(Rails.root.join('app/assets/images/Baie_6.jpg')), filename: 'Baie_6.jpg'}])
ActionText::RichText.create!(record_type: 'Project',record_id: project7.id, name: 'description', body: '<div class="trix-content"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ego in hoc resisto; Duo Reges: constructio interrete. Hoc non est positum in nostra actione. Nondum autem explanatum satis, erat, quid maxime natura vellet. Illi enim inter se dissentiunt. </p>

  <p>Traditur, inquit, ab Epicuro ratio neglegendi doloris. Quo tandem modo? </p>
  
  <p>Nam Pyrrho, Aristo, Erillus iam diu abiecti. Sed ad bona praeterita redeamus. Bonum integritas corporis: misera debilitas. Sequitur disserendi ratio cognitioque naturae; Haeret in salebra. Multoque hoc melius nos veriusque quam Stoici. Hic nihil fuit, quod quaereremus. Qualem igitur hominem natura inchoavit? </p>
  
  <p>Itaque his sapiens semper vacabit. Quod cum dixissent, ille contra. Quis hoc dicit? Praeteritis, inquit, gaudeo. </p>
  
  <p>Itaque contra est, ac dicitis; Nos commodius agimus. Itaque fecimus. Quo modo autem philosophus loquitur? </p>
  
  </div>')

project8 = Project.create!(
  name: "Project Geneva",
  author: "John Doe",
  date: "2021-03-11",
  project_category_ids: [project_category1.id, project_category3.id, project_category4.id]
)
project8.images.attach([{io: File.open(Rails.root.join('app/assets/images/Living_50.jpg')), filename: 'Living_50.jpg'},{io: File.open(Rails.root.join('app/assets/images/Dormitor_23.jpg')), filename: 'Dormitor_23.jpg'},{io: File.open(Rails.root.join('app/assets/images/Baie_2.jpg')), filename: 'Baie_2.jpg'}])
ActionText::RichText.create!(record_type: 'Project',record_id: project8.id, name: 'description', body: '<div class="trix-content"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Hoc sic expositum dissimile est superiori. Virtutisa, magnitudinis animi, patientiae, fortitudinis fomentis dolor mitigari solet. Omnis enim est natura diligens sui. Respondeat totidem verbis. Duo Reges: constructio interrete. </p>

  <p>Haec quo modo conveniant, non sane intellego. Tum Quintus: Est plane, Piso, ut dicis, inquit. Iam in altera philosophiae parte. Primum divisit ineleganter; Summum ením bonum exposuit vacuitatem doloris; Gerendus est mos, modo recte sentiat. </p>
  
  <p>Cur id non ita fit? Hic ambiguo ludimur. Tum Torquatus: Prorsus, inquit, assentior; Confecta res esset. </p>
  
  <p>Zenonis est, inquam, hoc Stoici. Nobis aliter videtur, recte secusne, postea; Negare non possum. Si longus, levis. Dici enim nihil potest verius. </p>
  
  <p>Quae diligentissime contra Aristonem dicuntur a Chryippo. Tollenda est atque extrahenda radicitus. Nam ante Aristippus, et ille melius. Quorum altera prosunt, nocent altera. Quod totum contra est. </p>
  
  </div>')

testimonial1 = Testimonial.create!(
  name: "John Doe",
  title: "CEO",
  comment: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias, quis consectetur accusantium veritatis, reiciendis, odio praesentium dolorem dolorum labore odit suscipit tenetur explicabo non cumque excepturi temporibus obcaecati itaque hic",
  approved: true
)
testimonial1.image.attach(io: File.open(Rails.root.join('app/assets/images/testimonial1.png')), filename: 'testimonial1.png')

testimonial2 = Testimonial.create!(
  name: "Lily Smith",
  title: "Manager",
  comment: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias, quis consectetur accusantium veritatis, reiciendis, odio praesentium dolorem dolorum labore odit suscipit tenetur explicabo non cumque excepturi temporibus obcaecati itaque hic",
  approved: true
)
testimonial2.image.attach(io: File.open(Rails.root.join('app/assets/images/testimonial2.jpg')), filename: 'testimonial2.jpg')