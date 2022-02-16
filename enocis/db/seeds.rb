# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product_category1 = ProductCategory.create!(
  id: 1,
  name: "Mobila Living",
  title: "Oferim solutii personalizate de mobila living potrivite stilului dumneavoastra",
  data_icon: "h"
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category1.id, name: 'description', body: '<div class="trix-content"><p>Cand vorbim de mobila living, fie ca alegem un design modern, minimalist, sau un design clasic, living-ul ramane zona unde petrecem timp alaturi de cei dragi, si este un spatiu care ne place sa transmita ceva despre personalitatea noastra.</p>

<p>Living-ul este considerat probabil cea mai reprezentativa camera a oricarei locuinte, si de obicei este camera a carei amenajare trebuie gandita pe termen lung. Din acest motiv nu trebuie facut rabat de la calitate pentru pret. In general living-ul sau sufrageria este acelasi spatiu cu camera de oaspeti, si trebuie amenajat cat mai cald pentru a crea o atmosfera cat mai primitoare, si de relaxare. Mai mult, fiind camera cea mai reprezentativa, este foarte important sa alegem cu atentie atat elementele cat si culorile folosite, pentru a fi in ton cu atmosfera creata de restul locuintei. </p>

<p>In ultima perioada conceptul de “open-space” se regaseste tot mai des in constructiile/renovarile de case/apartamente, si de cele mai multe ori bucataria este una cu livinigul astfel spatiul unde ne petrecem ziua cu cei dragi, devenind practic una cu locul de luat masa. Tocmai din acest motiv amplasamentul devine un factor esential in design-ul unui living, si cand alegem mobila living trebuiesc luate in considerare toate elementele care formeaza sapatiul. </p>

<p>Realizat din PAL si/sau MDF, este important pentru noi ca proiectul dumneavoastra de mobila living sa fie pe cat de estetic, pe atat de util, si usor de intretinut pentru a ii asigura longevitatea. </p></div>')
product_category1.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/interior-2685521_1920.jpg')), filename: 'interior-2685521_1920.jpg')
product_category1.front_image.attach(io: File.open(Rails.root.join('app/assets/images/apartment-clean-condominium-279719-e1533565764145.jpg')), filename: 'apartment-clean-condominium-279719-e1533565764145.jpg')

product1 = Product.create!(
  id: 1,
  name: "Living Venetia",
  price: "4,200",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "1"
)
product1.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_3.jpg')), filename: 'Living_3.jpg')

product2 = Product.create!(
  id: 2,
  name: "Living New York",
  price: "4,800",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "1"
)
product2.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_9.jpg')), filename: 'Living_9.jpg')

product3 = Product.create!(
  id: 3,
  name: "Living Mallorca",
  price: "11,300",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "1"
)
product3.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_11.jpg')), filename: 'Living_11.jpg')

product4 = Product.create!(
  id: 4,
  name: "Living Granada",
  price: "5,800",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "1"
)
product4.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_13.jpg')), filename: 'Living_13.jpg')

product5 = Product.create!(
  id: 5,
  name: "Living Boston",
  price: "3,900",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "1"
)
product5.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_17.jpg')), filename: 'Living_17.jpg')

product6 = Product.create!(
  id: 6,
  name: "Living Cordoba",
  price: "8,900",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF/Sticla",
  accessories: "Blum/Hafelle",
  color: "uni (poate varia in functie de optiunile clientilor)",
  product_category_id: "1"
)
product6.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_28.jpg')), filename: 'Living_28.jpg')

product7 = Product.create!(
  id: 7,
  name: "Living San Francisco",
  price: "4,700",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "1"
)
product7.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_30.jpg')), filename: 'Living_30.jpg')

product8 = Product.create!(
  id: 8,
  name: "Living Viena",
  price: "8,200",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "1"
)
product8.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_39.jpg')), filename: 'Living_39.jpg')

product9 = Product.create!(
  id: 9,
  name: "Living Malaga",
  price: "9,100",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF/Sticla",
  accessories: "Blum/Hafelle",
  color: "décor/uni (poate varia in functie de optiunile clientilor)",
  product_category_id: "1"
)
product9.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_42.jpg')), filename: 'Living_42.jpg')

product10 = Product.create!(
  id: 10,
  name: "Living Minsk",
  price: "9,300",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF",
  accessories: "Blum/Hafelle",
  color: "uni (poate varia in functie de optiunile clientilor)",
  product_category_id: "1"
)
product10.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_48.jpg')), filename: 'Living_48.jpg')

product11 = Product.create!(
  id: 11,
  name: "Living Geneva",
  price: "8,300",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF",
  accessories: "Blum/Hafelle",
  color: "uni (poate varia in functie de optiunile clientilor)",
  product_category_id: "1"
)
product11.image.attach(io: File.open(Rails.root.join('app/assets/images/Living_50.jpg')), filename: 'Living_50.jpg')

product_category2 = ProductCategory.create!(
  id: 2,
  name: "Mobila Bucatarie",
  title: "Mobila bucatarie creata pentru utilitatea si confortul dumneavoastra",
  data_icon: "v"
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category2.id, name: 'description', body: '<div class="trix-content"><p>Cand vine vorba de mobila bucatarie, ulititatea trebuie imbinata cu confortul intr-un dozaj optim. Stim cu totii ca o perioada buna din rutina zilnica ne-o petrecem in bucatarie, iar mobila de bucatarie trebuie organizata pentru a transforma experienta in una cat mai relaxanta. </p>

<p>Design-ul este un factor important, mai ales cand vorbim de amplasament, si trebuie intotdeauna adaptat la dimensiunile si forma spatiului disponibil. Orice bucatarie are zone de interes cum ar fi locul de gatit, sau locul de luat masa, si doar printr-o planificare amanuntita putem eficientiza spatiul. In ultima perioada conceptul de “open-space” se regaseste tot mai des in constructiile/renovarile de case/apartamente, si de cele mai multe ori bucataria este una cu livinigul, astfel spatiul unde ne petrecem ziua cu cei dragi, devenind practic una cu locul de luat masa. Tocmai din acest motiv amplasamentul devine un factor esential in design-ul unei bucatarii, si cand alegem mobila de bucatarie trebuiesc luate in considerare toate elementele care formeaza sapatiul. </p>
 
<p>Sa nu uitam ca mobila de bucatarie trebuie sa fie reprezentativa stilului dumneavoastra. Fie ca alegeti un stil clasic in care accentul se pune pe finisaje, sau unul minimalist in care reprezentative sunt liniile fine, este important sa fie in acelasi ton cu restul obiectelor din bucatarie, dar si cu restul locuintei, pentru o armonizare optima. </p>
 
<p>Mobila bucatarie realizata din PAL sau MDF, accesoriile alese, si culorile desenate, dau starea incaperii. Ele trebuiec alese cu grija pentru a evidentia atmosfera rece, de liniste, sau calda, vie, pe care doriti sa o emane bucatarie dumneavoastra.</p></div>')
product_category2.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/faucet-interior-kitchen-6256-e1533235036830.jpg')), filename: 'faucet-interior-kitchen-6256-e1533235036830.jpg')
product_category2.front_image.attach(io: File.open(Rails.root.join('app/assets/images/architecture-backsplash-cabinets-279648-e1533238248953.jpg')), filename: 'architecture-backsplash-cabinets-279648-e1533238248953.jpg')

product12 = Product.create!(
  id: 12,
  name: "Bucatarie Kentucky",
  price: "9,100",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "2"
)
product12.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_2.jpg')), filename: 'Bucatarie_2.jpg')

product13 = Product.create!(
  id: 13,
  name: "Bucatarie Cordoba",
  price: "12,300",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "2"
)
product13.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_7.jpg')), filename: 'Bucatarie_7.jpg')

product14 = Product.create!(
  id: 14,
  name: "Bucatarie Washington",
  price: "8,600",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "2"
)
product14.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_10.jpg')), filename: 'Bucatarie_10.jpg')

product15 = Product.create!(
  id: 15,
  name: "Bucatarie Los Angeles",
  price: "5,500",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "2"
)
product15.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_15.jpg')), filename: 'Bucatarie_15.jpg')

product16 = Product.create!(
  id: 16,
  name: "Bucatarie Manhattan",
  price: "20,900",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "2"
)
product16.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_18.jpg')), filename: 'Bucatarie_18.jpg')

product17 = Product.create!(
  id: 17,
  name: "Bucatarie Bronx",
  price: "16,100",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "2"
)
product17.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_19.jpg')), filename: 'Bucatarie_19.jpg')

product18 = Product.create!(
  id: 18,
  name: "Bucatarie Venetia",
  price: "18,100",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni (poate varia in functie de optiunile clientilor)",
  product_category_id: "2"
)
product18.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_25.jpg')), filename: 'Bucatarie_25.jpg')

product19 = Product.create!(
  id: 19,
  name: "Bucatarie Minsk",
  price: "18,400",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF/MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "uni (poate varia in functie de optiunile clientilor)",
  product_category_id: "2"
)
product19.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_30.jpg')), filename: 'Bucatarie_30.jpg')

product20 = Product.create!(
  id: 20,
  name: "Bucatarie Santa Ana",
  price: "26,700",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF",
  accessories: "Blum/Hafelle",
  color: "uni/décor (poate varia in functie de optiunile clientilor)",
  product_category_id: "2"
)
product20.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_36.jpg')), filename: 'Bucatarie_36.jpg')

product21 = Product.create!(
  id: 21,
  name: "Bucatarie Berlin",
  price: "18,300",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF",
  accessories: "Blum/Hafelle",
  color: "uni/décor (poate varia in functie de optiunile clientilor)",
  product_category_id: "2"
)
product21.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_44.jpg')), filename: 'Bucatarie_44.jpg')

product22 = Product.create!(
  id: 22,
  name: "Bucatarie Moscova",
  price: "22,900",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF/MDF Infoliat",
  accessories: "Blum/Hafelle",
  color: "uni (poate varia in functie de optiunile clientilor)",
  product_category_id: "2"
)
product22.image.attach(io: File.open(Rails.root.join('app/assets/images/Bucatarie_45.jpg')), filename: 'Bucatarie_45.jpg')


product_category3 = ProductCategory.create!(
  id: 3,
  name: "Mobila Dormitor",
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

product23 = Product.create!(
  id: 23,
  name: "Dormitor Mallorca",
  price: "6,300",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "3"
)
product23.image.attach(io: File.open(Rails.root.join('app/assets/images/Dormitor_1.jpg')), filename: 'Dormitor_1.jpg')

product24 = Product.create!(
  id: 24,
  name: "Dormitor New-York",
  price: "16,600",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "3"
)
product24.image.attach(io: File.open(Rails.root.join('app/assets/images/Dormitor_7.jpg')), filename: 'Dormitor_7.jpg')

product25 = Product.create!(
  id: 25,
  name: "Dormitor Boston",
  price: "7,100",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "3"
)
product25.image.attach(io: File.open(Rails.root.join('app/assets/images/Dormitor_17.jpg')), filename: 'Dormitor_17.jpg')

product26 = Product.create!(
  id: 26,
  name: "Dormitor Geneva",
  price: "4,300",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "uni/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "3"
)
product26.image.attach(io: File.open(Rails.root.join('app/assets/images/Dormitor_23.jpg')), filename: 'Dormitor_23.jpg')

product27 = Product.create!(
  id: 27,
  name: "Dormitor Cordoba",
  price: "14,700",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "3"
)
product27.image.attach(io: File.open(Rails.root.join('app/assets/images/Dormitor_24.jpg')), filename: 'Dormitor_24.jpg')

product28 = Product.create!(
  id: 28,
  name: "Dormitor San Francisco",
  price: "4,700",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "3"
)
product28.image.attach(io: File.open(Rails.root.join('app/assets/images/Dormitor_27.jpg')), filename: 'Dormitor_27.jpg')


product_category4 = ProductCategory.create!(
  id: 4,
  name: "Mobilier Baie",
  title: "Mobilier baie proiectat pentru a ingloba necsitatile dumneavoastra",
  data_icon: "Y"
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category4.id, name: 'description', body: '<div class="trix-content"><p>Punem la dispozitia dumneavoastra solutii practice, ergonomice si estetice de mobilier baie, realizate in concordanta cu dorintele dumneavoastra. Cand vorbim de mobilier baie, pana si alegerea optima a culorilor ajuta la o buna luminozitate si o ambienta relaxanta, lucruri necesare in locul unde ne desfasuram tabieturile zilnice. </p>

<p>Mobilierul de baie, pe langa natura estetica pe care o ofera, are o caracteristica practica in a ne ajuta sa pastram produsele cosmetice, prosoapele etc., dar si mai mult, ne poate ajuta in anumite situatii sa mascam instalatii sau alte elemente neestetice. </p>

<p>Design-ul este important si trebuie creat in ton cu restul elementelor din baie, si chiar si doar alegerea corecta a culorilor poate da viata acestui spatiu intim. </p>

<p>Realizat din PAL si/sau MDF, pe langa caracteristicile estetice si utilitatea oferita, ajuta la o usoara intretinere si o buna longevitate. </p></div>')
product_category4.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/apartment-bath-bathroom-930705-e1533656108155.jpg')), filename: 'apartment-bath-bathroom-930705-e1533656108155.jpg')
product_category4.front_image.attach(io: File.open(Rails.root.join('app/assets/images/bathroom-cabinet-candles-342800-e1533656205223.jpg')), filename: 'bathroom-cabinet-candles-342800-e1533656205223.jpg')

product29 = Product.create!(
  id: 29,
  name: "Baie Geneva",
  price: "2,200",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "alb/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "4"
)
product29.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_2.jpg')), filename: 'Baie_2.jpg')

product30 = Product.create!(
  id: 30,
  name: "Baie Bronx",
  price: "1,200",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "4"
)
product30.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_3.jpg')), filename: 'Baie_3.jpg')

product31 = Product.create!(
  id: 31,
  name: "Baie Minsk",
  price: "3,100",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat/MDF vopsit",
  accessories: "Blum/Hafelle",
  color: "alb/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "4"
)
product31.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_6.jpg')), filename: 'Baie_6.jpg')

product32 = Product.create!(
  id: 32,
  name: "Baie Cordoba",
  price: "5,300",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat/MDF vopsit",
  accessories: "Blum/Hafelle",
  color: "alb (poate varia in functie de optiunile clientilor)",
  product_category_id: "4"
)
product32.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_9.jpg')), filename: 'Baie_9.jpg')

product33 = Product.create!(
  id: 33,
  name: "Baie Manhattan",
  price: "3,600",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat/MDF vopsit",
  accessories: "Blum/Hafelle",
  color: "gri/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "4"
)
product33.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_16.jpg')), filename: 'Baie_16.jpg')

product34 = Product.create!(
  id: 34,
  name: "Baie Viena",
  price: "4,700",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "4"
)
product34.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_26.jpg')), filename: 'Baie_26.jpg')

product35 = Product.create!(
  id: 35,
  name: "Baie Dortmund",
  price: "1,100",
  dimensions: "variate in functie de spatiul existent",
  material: "MDF infoliat",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "4"
)
product35.image.attach(io: File.open(Rails.root.join('app/assets/images/Baie_30.jpg')), filename: 'Baie_30.jpg')


product_category5 = ProductCategory.create!(
  id: 5,
  name: "Mobilier Birou",
  title: "Mobilier birou adaptat la standardele dumneavoastra",
  data_icon: "l"
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category5.id, name: 'description', body: '<div class="trix-content"><p>Cand vorbim de mobilier birou, vorbim despre o organizare eleganta, functionala, practica si fiabila a elementelor, pentru a crea un mediu cat mai optim in atingerea rezultatelor. Mobilier birou trebuie sa atinga standarde cat mai apropiate de serviciile pe care le oferiti. </p></div>')
product_category5.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/books-clock-contemporary-941546-e1533658438648.jpg')), filename: 'books-clock-contemporary-941546-e1533658438648.jpg')
product_category5.front_image.attach(io: File.open(Rails.root.join('app/assets/images/bookcase-chairs-clean-667838-e1533659543426.jpg')), filename: 'bookcase-chairs-clean-667838-e1533659543426.jpg')

product36 = Product.create!(
  id: 36,
  name: "Birou San Francisco",
  price: "4,900",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "alb/decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "5"
)
product36.image.attach(io: File.open(Rails.root.join('app/assets/images/Birou_9.jpg')), filename: 'Birou_9.jpg')

product37 = Product.create!(
  id: 37,
  name: "Birou Manhattan",
  price: "4,100",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "5"
)
product37.image.attach(io: File.open(Rails.root.join('app/assets/images/Birou_11.jpg')), filename: 'Birou_11.jpg')

product38 = Product.create!(
  id: 38,
  name: "Birou Viena",
  price: "2,900",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL",
  accessories: "Blum/Hafelle",
  color: "decor (poate varia in functie de optiunile clientilor)",
  product_category_id: "5"
)
product38.image.attach(io: File.open(Rails.root.join('app/assets/images/Birou_13.jpg')), filename: 'Birou_13.jpg')

product39 = Product.create!(
  id: 39,
  name: "Birou Los Angeles",
  price: "6,800",
  dimensions: "variate in functie de spatiul existent",
  material: "PAL/Sticla",
  accessories: "Blum/Hafelle",
  color: "décor (poate varia in functie de optiunile clientilor)",
  product_category_id: "5"
)
product39.image.attach(io: File.open(Rails.root.join('app/assets/images/Birou_16.jpg')), filename: 'Birou_16.jpg')


product_category6 = ProductCategory.create!(
  id: 6,
  name: "Mobila Exterior",
  title: "Solutii personalizate de mobila exterior pentru spatiul dumneavoastra",
  data_icon: "H"
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category6.id, name: 'description', body: '<div class="trix-content"><p>Fie ca vorbim de curtea casei dumneavoastra sau de afacerea pe care o desfasurati in aer liber, va punem la dispozitie mobila exterior la cele mai inalte standarde. Mobila exterior, realizata din lemn, asigura longevitate, o utilitate optima si o intretinere cat mai usoara. </p></div>')
product_category6.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/balcony-cafe-chairs-1237073-2-e1533660340869.jpg')), filename: 'balcony-cafe-chairs-1237073-2-e1533660340869.jpg')
product_category6.front_image.attach(io: File.open(Rails.root.join('app/assets/images/autumn-basket-blur-263039-e1533660282783.jpg')), filename: 'autumn-basket-blur-263039-e1533660282783.jpg')