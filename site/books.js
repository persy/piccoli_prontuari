// books.js — unica fonte di dati per le materie. Aggiungere/modificare un
// manuale richiede di toccare solo questo file, non index.html.
//
// onlineHref: null finché la versione HTML di quella materia non è pronta
// (il pulsante "Leggi online" appare disattivato con l'etichetta "Presto disponibile").
//
// colorClass: deve corrispondere a una delle classi colore definite in style.css
// (.matematica, .fisica, .chimica, .biologia, .scienze-terra, .letteratura-it,
// .letteratura-en, .letteratura-la, .storia, .storia-arte, .filosofia).
// È separato da "slug" perché slug segue i nomi file reali (es. scienze_terra.pdf),
// mentre le classi colore in CSS usano nomi abbreviati con trattino.

// Interruttore unico per tutto il sito: false = "Leggi online" appare sempre
// disattivato ("Presto disponibile") ovunque, a prescindere da onlineHref.
const ONLINE_READING_ENABLED = true;

const AREAS = [
  {
    title: "Scienze, matematica e tecnologia",
    books: [
      {
        slug: "matematica",
        colorClass: "matematica",
        title: "Matematica (in scrittura)",
        description: "Un percorso completo tra algebra, geometria, analisi e statistica, pensato per chi cerca definizioni chiare e dimostrazioni rigorose senza perdersi nei dettagli superflui.",
        cover: "assets/matematica.webp",
        pdfHref: "pdf/matematica.pdf",
        onlineHref: null,
      },
      {
        slug: "fisica",
        colorClass: "fisica",
        title: "Fisica",
        description: "Dalla meccanica classica alla fisica quantistica, un viaggio attraverso le leggi che governano l'universo: teoria, formule e schemi per orientarsi tra onde, energia e relatività.",
        cover: "assets/fisica.webp",
        pdfHref: "pdf/fisica.pdf",
        /* onlineHref: "online/fisica/", */
        onlineHref: null,
      },
      {
        slug: "chimica",
        colorClass: "chimica",
        title: "Chimica",
        description: "Dalla struttura della materia alle reazioni più complesse, tra chimica inorganica e organica: un prontuario pensato per richiamare rapidamente concetti, formule e meccanismi di reazione.",
        cover: "assets/chimica.webp",
        pdfHref: "pdf/chimica.pdf",
        onlineHref: null,
      },
      {
        slug: "biologia",
        colorClass: "biologia",
        title: "Biologia",
        description: "Dalla cellula agli ecosistemi, un racconto della vita su più scale: biochimica, genetica ed evoluzione, fino al funzionamento del corpo umano, con i concetti sempre collegati tra loro.",
        cover: "assets/biologia.webp",
        pdfHref: "pdf/biologia.pdf",
        onlineHref: null,
      },
      {
        slug: "scienze_terra",
        colorClass: "scienze-terra",
        title: "Scienze della Terra",
        description: "Il nostro pianeta raccontato tra astronomia, geologia e fenomeni atmosferici: una guida per capire le dinamiche che modellano la Terra, dai moti celesti ai processi meteorologici.",
        cover: "assets/scienze_terra.webp",
        pdfHref: "pdf/scienze_terra.pdf",
        onlineHref: null,
      },
    ],
  },
  {
    title: "Lingue e letterature",
    books: [
      {
        slug: "letteratura_italiana",
        colorClass: "letteratura-it",
        title: "Letteratura italiana",
        description: "Un percorso tra autori, opere e correnti che hanno attraversato la letteratura italiana dalle origini a oggi, con gli strumenti per leggere prosa, poesia e teatro con più consapevolezza.",
        cover: "assets/letteratura_italiana.webp",
        pdfHref: "pdf/letteratura_italiana.pdf",
        onlineHref: null,
      },
      {
        slug: "letteratura_inglese",
        colorClass: "letteratura-en",
        title: "Letteratura inglese",
        description: "Dalle origini anglosassoni al Novecento, la storia della letteratura inglese in un unico prontuario: autori, movimenti e testi chiave per orientarsi tra secoli di produzione letteraria.",
        cover: "assets/letteratura_inglese.webp",
        pdfHref: "pdf/letteratura_inglese.pdf",
        onlineHref: null,
      },
      {
        slug: "letteratura_latina",
        colorClass: "letteratura-la",
        title: "Letteratura latina",
        description: "Gli autori e le opere che hanno definito la letteratura latina, dall'età arcaica al Medioevo, organizzati per generi e forme letterarie per orientarsi tra classici sempre attuali.",
        cover: "assets/letteratura_latina.webp",
        pdfHref: "pdf/letteratura_latina.pdf",
        onlineHref: null,
      },
    ],
  },
  {
    title: "Scienze umane e cultura",
    books: [
      {
        slug: "storia",
        colorClass: "storia",
        title: "Storia",
        description: "Dalla Preistoria al mondo contemporaneo, una sintesi degli eventi, dei protagonisti e dei contesti che hanno segnato la storia, con schede e cronologie per orientarsi rapidamente.",
        cover: "assets/storia.webp",
        pdfHref: "pdf/storia.pdf",
        onlineHref: null,
      },
      {
        slug: "storia_arte",
        colorClass: "storia-arte",
        title: "Storia dell'arte",
        description: "Un viaggio tra correnti, autori e capolavori, dall'arte antica alle avanguardie del Novecento, per riconoscere stili, tecniche e contesti storici delle opere più significative.",
        cover: "assets/storia_arte.webp",
        pdfHref: "pdf/storia_arte.pdf",
        onlineHref: null,
      },
      {
        slug: "filosofia",
        colorClass: "filosofia",
        title: "Filosofia",
        description: "Le grandi domande e i pensatori che hanno provato a rispondervi, dalla metafisica alla morale, dall'epistemologia alla filosofia politica: una mappa nella storia del pensiero.",
        cover: "assets/filosofia.webp",
        pdfHref: "pdf/filosofia.pdf",
        onlineHref: null,
      },
    ],
  },
];