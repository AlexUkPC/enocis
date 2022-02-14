# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product_category1 = ProductCategory.create!(
  id: 1,
  name: "Mobila living",
  title: "Oferim solutii personalizate de mobila living potrivite stilului dumneavoastra",
  data_icon: "h"
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category1.id, name: 'description', body: '<div class="trix-content"><p>Cand vorbim de mobila living, fie ca alegem un design modern, minimalist, sau un design clasic, living-ul ramane zona unde petrecem timp alaturi de cei dragi, si este un spatiu care ne place sa transmita ceva despre personalitatea noastra.</p>

<p>Living-ul este considerat probabil cea mai reprezentativa camera a oricarei locuinte, si de obicei este camera a carei amenajare trebuie gandita pe termen lung. Din acest motiv nu trebuie facut rabat de la calitate pentru pret. In general living-ul sau sufrageria este acelasi spatiu cu camera de oaspeti, si trebuie amenajat cat mai cald pentru a crea o atmosfera cat mai primitoare, si de relaxare. Mai mult, fiind camera cea mai reprezentativa, este foarte important sa alegem cu atentie atat elementele cat si culorile folosite, pentru a fi in ton cu atmosfera creata de restul locuintei. </p>

<p>In ultima perioada conceptul de “open-space” se regaseste tot mai des in constructiile/renovarile de case/apartamente, si de cele mai multe ori bucataria este una cu livinigul astfel spatiul unde ne petrecem ziua cu cei dragi, devenind practic una cu locul de luat masa. Tocmai din acest motiv amplasamentul devine un factor esential in design-ul unui living, si cand alegem mobila living trebuiesc luate in considerare toate elementele care formeaza sapatiul. </p>

<p>Realizat din PAL si/sau MDF, este important pentru noi ca proiectul dumneavoastra de mobila living sa fie pe cat de estetic, pe atat de util, si usor de intretinut pentru a ii asigura longevitatea. </p></div>')
product_category1.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/interior-2685521_1920.jpg')), filename: 'interior-2685521_1920.jpg')
product_category1.front_image.attach(io: File.open(Rails.root.join('app/assets/images/apartment-clean-condominium-279719-e1533565764145.jpg')), filename: 'apartment-clean-condominium-279719-e1533565764145.jpg')

product_category2 = ProductCategory.create!(
  id: 2,
  name: "Mobila bucatarie",
  title: "Mobila bucatarie creata pentru utilitatea si confortul dumneavoastra",
  data_icon: "v"
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category2.id, name: 'description', body: '<div class="trix-content"><p>Cand vine vorba de mobila bucatarie, ulititatea trebuie imbinata cu confortul intr-un dozaj optim. Stim cu totii ca o perioada buna din rutina zilnica ne-o petrecem in bucatarie, iar mobila de bucatarie trebuie organizata pentru a transforma experienta in una cat mai relaxanta. </p>

<p>Design-ul este un factor important, mai ales cand vorbim de amplasament, si trebuie intotdeauna adaptat la dimensiunile si forma spatiului disponibil. Orice bucatarie are zone de interes cum ar fi locul de gatit, sau locul de luat masa, si doar printr-o planificare amanuntita putem eficientiza spatiul. In ultima perioada conceptul de “open-space” se regaseste tot mai des in constructiile/renovarile de case/apartamente, si de cele mai multe ori bucataria este una cu livinigul, astfel spatiul unde ne petrecem ziua cu cei dragi, devenind practic una cu locul de luat masa. Tocmai din acest motiv amplasamentul devine un factor esential in design-ul unei bucatarii, si cand alegem mobila de bucatarie trebuiesc luate in considerare toate elementele care formeaza sapatiul. </p>
 
<p>Sa nu uitam ca mobila de bucatarie trebuie sa fie reprezentativa stilului dumneavoastra. Fie ca alegeti un stil clasic in care accentul se pune pe finisaje, sau unul minimalist in care reprezentative sunt liniile fine, este important sa fie in acelasi ton cu restul obiectelor din bucatarie, dar si cu restul locuintei, pentru o armonizare optima. </p>
 
<p>Mobila bucatarie realizata din PAL sau MDF, accesoriile alese, si culorile desenate, dau starea incaperii. Ele trebuiec alese cu grija pentru a evidentia atmosfera rece, de liniste, sau calda, vie, pe care doriti sa o emane bucatarie dumneavoastra.</p></div>')
product_category2.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/faucet-interior-kitchen-6256-e1533235036830.jpg')), filename: 'faucet-interior-kitchen-6256-e1533235036830.jpg')
product_category2.front_image.attach(io: File.open(Rails.root.join('app/assets/images/architecture-backsplash-cabinets-279648-e1533238248953.jpg')), filename: 'architecture-backsplash-cabinets-279648-e1533238248953.jpg')

product_category3 = ProductCategory.create!(
  id: 3,
  name: "Mobila dormitor",
  title: "Mobila dormitor personalizata pentru confortul dumneavoastra",
  data_icon: "z"
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category3.id, name: 'description', body: '<div class="trix-content"><p>Odihna este poate cel mai important factor pentru a avea o viata sanatoasa, si din acest motiv punem accentul ca mobila dormitor sa creeze o ambienta perfecta pentru nevoile dumneavoastra. Mobila dormitor in general nu trebuie sa fie aglomerata, pentru a crea o atmosfera aerisita, relaxanta. </p>

<p>Design-ul vine complementar utilitatii, dar nu trebuie ignorat. Este foarte important pentru cine este destinat un dormitor. Fie ca e vorba de un dormitor matrimonial pentru adulti, sau dormitorul copiilor, dormitorul trebuie sa aiba caracteristicile care ofera cea mai optima stare de liniste potrivita persoanei caruia ii este destinat. </p>

<p>In general un dormitor ar trebui mobilat cat mai minimalist ca si numar de elemente, doar cu elemente foarte utile cum ar fi patul, o comoda, si poate un dulap, iar dupa, in functie de necesitati, adaugate elemente ca birou, scaune si alte elemente necesare. In functie de necestiati putem umple spatiul cu toate elementele pe care le dorim atata timp cat avem buna cunostinta ca un dormitor aglomerat inseamna o atmosfera incarcata. </p>

<p>In functie de personalitatea fiecaruia dintre noi, culorile alese pot fi reci, care sa emane acea atmosfera linistita de care unii din noi avem nevoie sa ne odihnim, sau calde, vii, care sa emane acea atmosfera de “acasa” pe care unii din noi o cautam cand ne odihnim. La fel de important este sa urmam pe cat se poate acelasi ton cu restul locuintei. </p>

<p>Realizata din PAL si/sau MDF, mobila dormitor trebuie sa ofere atat utilitate cat si confort, dar poate si mai important o usoara intretinere care duce la longevitate.</p></div>')
product_category3.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/bed-bedroom-closet-90319-1-e1533654677490.jpg')), filename: 'bed-bedroom-closet-90319-1-e1533654677490.jpg')
product_category3.front_image.attach(io: File.open(Rails.root.join('app/assets/images/architecture-backsplash-cabinets-279648-e1533238248953.jpg')), filename: 'architecture-backsplash-cabinets-279648-e1533238248953.jpg')

product_category4 = ProductCategory.create!(
  id: 4,
  name: "Mobilier baie",
  title: "Mobilier baie proiectat pentru a ingloba necsitatile dumneavoastra",
  data_icon: "Y"
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category4.id, name: 'description', body: '<div class="trix-content"><p>Punem la dispozitia dumneavoastra solutii practice, ergonomice si estetice de mobilier baie, realizate in concordanta cu dorintele dumneavoastra. Cand vorbim de mobilier baie, pana si alegerea optima a culorilor ajuta la o buna luminozitate si o ambienta relaxanta, lucruri necesare in locul unde ne desfasuram tabieturile zilnice. </p>

<p>Mobilierul de baie, pe langa natura estetica pe care o ofera, are o caracteristica practica in a ne ajuta sa pastram produsele cosmetice, prosoapele etc., dar si mai mult, ne poate ajuta in anumite situatii sa mascam instalatii sau alte elemente neestetice. </p>

<p>Design-ul este important si trebuie creat in ton cu restul elementelor din baie, si chiar si doar alegerea corecta a culorilor poate da viata acestui spatiu intim. </p>

<p>Realizat din PAL si/sau MDF, pe langa caracteristicile estetice si utilitatea oferita, ajuta la o usoara intretinere si o buna longevitate. </p></div>')
product_category4.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/apartment-bath-bathroom-930705-e1533656108155.jpg')), filename: 'apartment-bath-bathroom-930705-e1533656108155.jpg')
product_category4.front_image.attach(io: File.open(Rails.root.join('app/assets/images/bathroom-cabinet-candles-342800-e1533656205223.jpg')), filename: 'bathroom-cabinet-candles-342800-e1533656205223.jpg')

product_category5 = ProductCategory.create!(
  id: 5,
  name: "Mobilier birou",
  title: "Mobilier birou adaptat la standardele dumneavoastra",
  data_icon: "l"
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category5.id, name: 'description', body: '<div class="trix-content"><p>Cand vorbim de mobilier birou, vorbim despre o organizare eleganta, functionala, practica si fiabila a elementelor, pentru a crea un mediu cat mai optim in atingerea rezultatelor. Mobilier birou trebuie sa atinga standarde cat mai apropiate de serviciile pe care le oferiti. </p></div>')
product_category5.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/books-clock-contemporary-941546-e1533658438648.jpg')), filename: 'books-clock-contemporary-941546-e1533658438648.jpg')
product_category5.front_image.attach(io: File.open(Rails.root.join('app/assets/images/bookcase-chairs-clean-667838-e1533659543426.jpg')), filename: 'bookcase-chairs-clean-667838-e1533659543426.jpg')

product_category6 = ProductCategory.create!(
  id: 6,
  name: "Mobila exterior",
  title: "Solutii personalizate de mobila exterior pentru spatiul dumneavoastra",
  data_icon: "H"
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category6.id, name: 'description', body: '<div class="trix-content"><p>Fie ca vorbim de curtea casei dumneavoastra sau de afacerea pe care o desfasurati in aer liber, va punem la dispozitie mobila exterior la cele mai inalte standarde. Mobila exterior, realizata din lemn, asigura longevitate, o utilitate optima si o intretinere cat mai usoara. </p></div>')
product_category6.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/balcony-cafe-chairs-1237073-2-e1533660340869.jpg')), filename: 'balcony-cafe-chairs-1237073-2-e1533660340869.jpg')
product_category6.front_image.attach(io: File.open(Rails.root.join('app/assets/images/autumn-basket-blur-263039-e1533660282783.jpg')), filename: 'autumn-basket-blur-263039-e1533660282783.jpg')