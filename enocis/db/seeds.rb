# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product_category1 = ProductCategory.create!(
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
  data_icon: "v"
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
  data_icon: "Y"
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
  data_icon: "l"
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
  data_icon: "H"
)
ActionText::RichText.create!(record_type: 'ProductCategory',record_id: product_category6.id, name: 'description', body: '<div class="trix-content"><p>Fie ca vorbim de curtea casei dumneavoastra sau de afacerea pe care o desfasurati in aer liber, va punem la dispozitie mobila exterior la cele mai inalte standarde. Mobila exterior, realizata din lemn, asigura longevitate, o utilitate optima si o intretinere cat mai usoara. </p></div>')
product_category6.cover_image.attach(io: File.open(Rails.root.join('app/assets/images/balcony-cafe-chairs-1237073-2-e1533660340869.jpg')), filename: 'balcony-cafe-chairs-1237073-2-e1533660340869.jpg')
product_category6.front_image.attach(io: File.open(Rails.root.join('app/assets/images/autumn-basket-blur-263039-e1533660282783.jpg')), filename: 'autumn-basket-blur-263039-e1533660282783.jpg')

frezarimdf_category1 = FrezarimdfCategory.create!(
  name: "Clasic",
  data_icon: "N"
)
frezarimdf_category2 = FrezarimdfCategory.create!(
  name: "Modern",
  data_icon: "A"
)
frezarimdf_category3 = FrezarimdfCategory.create!(
  name: "Line",
  data_icon: "7"
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
ActionText::RichText.create!(record_type: 'Project',record_id: project8.id, name: 'description', body: '<div class="trix-content"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Hoc sic expositum dissimile est superiori. Virtutis, magnitudinis animi, patientiae, fortitudinis fomentis dolor mitigari solet. Omnis enim est natura diligens sui. Respondeat totidem verbis. Duo Reges: constructio interrete. </p>

  <p>Haec quo modo conveniant, non sane intellego. Tum Quintus: Est plane, Piso, ut dicis, inquit. Iam in altera philosophiae parte. Primum divisit ineleganter; Summum ením bonum exposuit vacuitatem doloris; Gerendus est mos, modo recte sentiat. </p>
  
  <p>Cur id non ita fit? Hic ambiguo ludimur. Tum Torquatus: Prorsus, inquit, assentior; Confecta res esset. </p>
  
  <p>Zenonis est, inquam, hoc Stoici. Nobis aliter videtur, recte secusne, postea; Negare non possum. Si longus, levis. Dici enim nihil potest verius. </p>
  
  <p>Quae diligentissime contra Aristonem dicuntur a Chryippo. Tollenda est atque extrahenda radicitus. Nam ante Aristippus, et ille melius. Quorum altera prosunt, nocent altera. Quod totum contra est. </p>
  
  </div>')

