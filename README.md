# Manuali per il WikiBigino

![Static Badge](https://img.shields.io/badge/typst-blue?logo=typst&logoColor=fff&color=%23239dad&link=https%3A%2F%2Ftypst.app%2F) [![Licenza: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC_BY--NC--SA_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/) 

In questo repository trovi i file sorgente in [typst](https://github.com/typst/typst) per compilare i manuali, in formato PDF, che verranno pubblicati sul [WikiBigino](https://wikibigino.miraheze.org/wiki/Pagina_principale). 

Per scaricare i pdf già compilati, vai al [sito](https://persy.github.io/piccoli_prontuari/) dedicato.

## Struttura del repository

```bash
├── docs/
│   ├── \<materia\>/
│   │   ├── img/
│   │   │   ├── immagine.png
│   │   │   └── diagramma.jpg
│   │   ├── 00_introduzione.typ
│   │   ├── 01_capitolo.typ
│   │   ├── 02_capitolo.typ
│   │   └── ...
│   └── \<materia\>/
│       ├── img/
│       │   ├── immagine.png
│       │   └── diagramma.jpg
│       ├── 00_introduzione.typ
│       ├── 01_capitolo.typ
│       ├── 02_capitolo.typ
│       └── ...
└── template/
    ├── global/
    │   ├── config.typ
    │   ├── template.typ
    │   └── ...
    ├── \<materia\>/
    │   ├── main.typ
    │   ├── cover.typ
    │   └── retro.typ
    └── \<materia\>/
        ├── main.typ
        ├── cover.typ
        └── retro.typ
```

- I testi sono formattati in [typst](https://typst.app/), utilizzando [Tinymist](https://github.com/Myriad-Dreamin/tinymist) e si trovano nella cartella `docs/`, suddivisi per materia 
- Essendo file `.typ`, possono essere aperti da qualsiasi editor di testo, notepad incluso 🍋. Per invece esportare i manuali completi, leggi la sezione sotto
- Tutti i libri utilizzano lo stesso template (`template.typ`), con alcune modifiche particolari (colori, copertine, retro)
- Le immagini `img/` sono all'interno della sottocartella della materia, sempre in `docs/` (es. `docs/biologia/img/`)

### Come esportare il pdf di un manuale

- Clona il repository
- Installa typst seguendo la [guida](https://github.com/typst/typst?tab=readme-ov-file#installation), sfrutta [tinymist](https://github.com/Myriad-Dreamin/tinymist) oppure usa VS Code assieme all'[estensione ufficiale](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist).
- Posizionati nella sottocartella di una materia, all'interno della cartella /template (es. /template/biologia/)
- Compila ed esporta il file con il comando:

```typst
typst compile --font-paths ./fonts main.typ
```

N.B. Usando `tinymist`, il file `main` verrà automaticamente designato come principale, risolvendo i collegamenti e i riferimenti fra i subfile[^1]. Nel caso volessi impostare manualmente, invoca su VSCode il comando "Pin the Main File to the Currently Open Document" oppure digita:

```typst
Typst Pin Main
```


Di seguito una tabella con le materie trattate e il livello di completamento dei rispettivi libri:

| Materia        | Stesura testo | Formattazione | Media | Approfondimenti | Esercizi e quiz |
| -------------- | ------------- | ------------- | ----- | --------------- | --------------- |
| biologia       | ✅            | ✅             | -     | -               | -               |
| chimica        | ✅            | ✅             | -     | -               | -               |
| filosofia      | ✅            | ✅             | -     | -               | -               |
| fisica         | ✅            | ✅             | -     | -               | -               |
| lett. latina   | ✅            | ✅             | -     | -               | -               |
| lett. italiana | ✅            | ✅             | -     | -               | -               |
| sc. d. Terra   | ✅            | ✅             | -     | -               | -               |
| storia         | ✅            | ✅             | -     | -               | -               |
| lett. inglese  | ✅            | ✅             | -     | -               | -               |
| matematica     | ✍️            | -             | -     | -               | -               |
| st. dell'arte  | ✅            | ✅             | -     | -               | -               |

[^1]: https://myriad-dreamin.github.io/tinymist/feature/project.html#:~:text=Use%20command%20Typst%20Pin%20Main,to%20unset%20the%20main%20file.