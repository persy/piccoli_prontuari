# Manuali per il WikiBigino

![Static Badge](https://img.shields.io/badge/typst-blue?logo=typst&logoColor=fff&color=%23239dad&link=https%3A%2F%2Ftypst.app%2F) [![Licenza: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC_BY--NC--SA_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/) 

In questo repository trovi i file sorgente in [typst](https://github.com/typst/typst) per compilare i manuali, in formato PDF, che verranno pubblicati sul [WikiBigino](https://wikibigino.miraheze.org/wiki/Pagina_principale).

Di seguito una tabella con le materie trattate e il livello di completamento dei rispettivi libri:

| Materia        | Stesura testo | Formattazione | Media | Approfondimenti | Esercizi e quiz |
| -------------- | ------------- | ------------- | ----- | --------------- | --------------- |
| biologia       | ✅            | ✍️             | -     | -               | -               |
| chimica        | ✅            | -             | -     | -               | -               |
| filosofia      | ✅            | -             | -     | -               | -               |
| fisica         | ✅            | -             | -     | -               | -               |
| lett. latina   | ✅            | -             | -     | -               | -               |
| lett. italiana | ✅            | -             | -     | -               | -               |
| sc. d. Terra   | ✅            | -             | -     | -               | -               |
| storia         | ✅            | -             | -     | -               | -               |
| lett. inglese  | ✅            | -             | -     | -               | -               |
| matematica     | ✅            | -             | -     | -               | -               |
| st. dell'arte  | ✅            | -             | -     | -               | -               |

I testi sorgente sono formattati in [typst](https://typst.app/), utilizzando [Tinymist](https://github.com/Myriad-Dreamin/tinymist).  

Di seguito viene riportata la timeline del dettaglio

## Fase 1: Stesura del testo
- [x] Importazione testi dal WikiBigino
- [x] Riformulazione e adattamento
- [ ] Correzioni grammaticali e sintattiche
- [ ] Formule matematiche e chimiche

## Fase 2: Formattazione
- [ ] Correzione leggibilità e omogeneità dei testi
  - [ ] Controllo di maiuscole, minuscole, corsivo, grassetto, lunghezza paragrafi, colori
- [ ] Titoli, indici
- [ ] Accessibilità del testo [[link](https://staging.typst.app/docs/guides/accessibility)]

## Fase 3: Media
- [ ] Immagini e didascalie
- [ ] Link

## Fase 4: Approfondimenti
- [ ] Approfondimenti per:
  - Biologia
  - Filosofia
  - Letteratura italiana
  - Letteratura latina
  - Letteratura inglese
  - Scienze della Terra
  - Storia
  - Storia dell'arte

## Fase 5: Esercizi e quiz
- [ ] Esercizi per:
  - Matematica
  - Chimica
  - Fisica
- [ ] Quiz per tutte le materie

## Questo repository

### Cosa contiene

- Essendo file .typ, possono essere aperti da qualsiasi editor di testo, notepad incluso 🍋. Per invece esportare i libri, leggi la sezione sotto
- Tutti i libri utilizzano lo stesso template (`template.typ`), con alcune modifiche particolari (colori, copertine)
- Ogni materia ha una sua cartella (es. biologia, fisica, letteratura italiana...), al cui interno ci sono due sottocartelle: _testi, per i testi, _media per le immagini
- Il file `.typ` con il nome della materia, non incluso nelle suddette sottocartelle, è quello che compila il libro (es. `biologia.typ`, `fisica.typ`, `letteratura_italiana.typ`)

### Come esportare i .pdf

- Clona il repository
- Installa typst seguendo la [guida](https://github.com/typst/typst?tab=readme-ov-file#installation) oppure usa VS Code e l'[estensione ufficiale](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist).
- Posizionati nella cartella root di una materia (es. manuali/biologia/), compila ed esporta i file con il comando:

```typst
typst compile file.typ
```

- Sostituisci `file.typ` con il file della materia all'interno dell'omonima cartella (es. `biologia.typ`)

```typst
typst compile biologia.typ
```
