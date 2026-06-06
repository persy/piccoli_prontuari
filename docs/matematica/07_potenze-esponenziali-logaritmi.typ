#import "../../template/_global/template.typ": *
#import "../../template/_global/config.typ": *
#import "func/07_potenze-esponenziali-logaritmi.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
#set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 9pt, numbering("1", ..n))
  })

#intro[// TODO
Le definizioni e le proprietà delle potenze, già introdotte nei capitoli precedenti, vengono qui riprese per completezza e per spiegare la logica alla base di tali definizioni.]

== Potenze con esponente intero
=== Esponente intero maggiore o uguale a 2

#definizione(title: "Potenza", label: <def_potenza>)[Se $a in RR$ e $m in NN$, con $m >= 2$, si definisce:
$ a^m = underbrace(a dot a dot dots dot a, m "volte") $

Il numero reale $a^m$ si chiama potenza di base $a$ ed esponente $m$. Questa definizione, al momento, rappresenta una semplice abbreviazione per indicare un prodotto di $m$ fattori identici.]  

Le seguenti proprietà, dette proprietà formali delle potenze, possono essere facilmente verificate. Ponendo $a, b in RR$ (diversi da zero se compaiono al denominatore) e $m, n in NN$, con $m, n >= 2$, valgono:

$ a^m dot a^n = a^(m+n) \ (a dot b)^m = a^m dot b^m; $ <esponenziale_1>
$ a^m / a^n = a^(m-n), quad m >= n \ (a/b)^m = a^m / b^m $ <esponenziale_2>
$ (a^m)^n = a^(m dot n) $ <esponenziale_3>

=== Esponente 0 ed esponente 1  

La definizione si estende senza difficoltà al caso in cui l'esponente sia pari a 1. Si pone infatti:
$ a^1 = a. $ <esponenziale_4>

L'estensione della definizione al caso di esponente 0 richiede tuttavia una precisazione: bisogna escludere la base $a = 0$. Per qualsiasi $a in RR$ con $a != 0$, si definisce:
$ a^0 = 1. $ <esponenziale_5>

Mentre la definizione $a^1 = a$ risulta intuitiva, la scelta di definire $a^0 = 1$ potrebbe sembrare meno naturale e richiede una riflessione.  

Alcuni tentano di dimostrare che, se $x in RR$ e $x != 0$, allora $x^0 = 1$. Il ragionamento, per sommi capi, è il seguente: se $x != 0$ e $m in NN$, con $m >= 2$, allora:
$ 1 = x^m / x^m = x^(m-m) = x^0. $ <esponenziale_6>

Tuttavia, questo ragionamento presenta un errore logico: il simbolo $x^0$ non è stato ancora definito formalmente e non può essere utilizzato prima di precisare il suo significato. Sebbene sia vero che $x^m / x^m = 1$, non possiamo automaticamente dedurre che ciò coincida con $x^0$, poiché il valore di quest'ultimo non è noto in assenza di una definizione esplicita.

Questa linea di ragionamento, tuttavia, evidenzia un fatto importante: per mantenere valide le proprietà formali delle potenze espresse nelle relazioni @esponenziale_1, @esponenziale_2 e @esponenziale_3, è necessario introdurre esplicitamente le definizioni di @esponenziale_4 e @esponenziale_5. Questo approccio consente di estendere il concetto di potenza ad insiemi più ampi di esponenti, anche sacrificando alcune possibilità per le basi; in questo modo, le proprietà formali restano sempre applicabili. Alla fine, l'idea originaria di potenza come prodotto di fattori uguali diventa un concetto piuttosto astratto#footnote[L'argomentazione espressa nella @esponenziale_6 non è l'unica opzione possibile. Si può infatti considerare che $a^n = a^(n+0) = a^n · a^0$, da cui si deduce che $a^0 = 1$, se $a != 0$. Anche in questo caso, ci troviamo "obbligati" a definire $a^0 = 1$ per preservare la proprietà $a^(m+n) = a^m · a^n$.].

=== Esponente intero negativo  
Seguendo la metodologia già adottata, per garantire che la proprietà $a^(m+n) = a^m dot a^n$ rimanga valida anche con esponenti interi negativi, dobbiamo rispettare quanto segue:  
$ 1 = a^0 = a^(m-m) = a^m dot a^(-m) $
da cui si ricava:  
$ a^(-n) = 1 / a^n, quad a in RR, quad a != 0, quad n in NN, quad n > 0. $  

Non risulta difficile dimostrare che anche le altre proprietà formali delle potenze restano validissime in questo contesto.  

== Potenze con esponente razionale 

Iniziamo con un'osservazione importante, già anticipata in parte in un esempio alla @potenza_reali della @numeri_naturali_reali.  

Non è possibile definire in modo coerente la potenza con esponente razionale e base negativa conservando contemporaneamente sia le proprietà formali delle potenze sia la compatibilità con il caso degli esponenti interi.  

Infatti, indipendentemente dal significato attribuito al simbolo $(-2)^(1/2)$, il suo quadrato dovrebbe risultare positivo. Tuttavia, se volessimo mantenere valide tanto le proprietà delle potenze quanto le definizioni già introdotte per gli esponenti interi, dovremmo avere:  
$ -2 = (-2)^1 = (-2)^(#std.text(size: 0.6em)[$2/2$]) = ((-2)^(#std.text(size: 0.6em)[$1/2$]) )^2 = (sqrt(-2))^2 > 0 $  
il che è evidentemente contraddittorio.  

Nei casi di base nulla, è chiaro che definiremo $0^r = 0$ per ogni numero razionale $r > 0$, mentre, come già visto per gli esponenti interi, non attribuiremo alcun significato al simbolo $0^r$ quando $r <= 0$. Rimane da considerare come definire potenze con esponente razionale e base maggiore di zero. Ricorrendo alla strategia applicata per gli esponenti interi negativi, e assumendo $a > 0$, dobbiamo avere:  
$ a = a^1 = a^(#std.text(size: 0.6em)[$n/n$]) = (a^#std.text(size: 0.6em)[$1/n$])^n $  

Utilizzando quindi la definizione di radice aritmetica, definiamo:  
$ a^(#std.text(size: 0.6em)[$1/n$]) = root(n, a) $  

Per estensione delle proprietà delle potenze, per $a > 0$ deve valere anche:  
$ a^(#std.text(size: 0.6em)[$m/n$]) = (a^(#std.text(size: 0.6em)[$1/n$]))^m = (root(n, a))^m = root(n, a^m) $  

Considerando le proprietà delle radici aritmetiche, giungiamo infine alla conclusione che:  
$ m/n = p/q => a^(#std.text(size: 0.6em)[$m/n$]) = a^(#std.text(size: 0.6em)[$p/q$]) $  
e ciò garantisce coerenza con la definizione data.  

Non risulta difficile dimostrare, tenendo conto delle proprietà dei radicali, che la definizione sopra esposta soddisfa tutte le proprietà formali delle potenze.  

La convenzione che consente di definire le potenze con esponente razionale solo per basi positive non è universalmente accettata. Molti calcolatori, ad esempio, non restituiscono errori per operazioni come $(-1)^(#std.text(size: 0.6em)[$1/3$])$, mentre non supportano calcoli del tipo $(-1)^(0.333...)$, anche se nei sistemi numerici dei calcolatori $1/3$ e $0.333...$ sono considerati equivalenti. Tuttavia, una definizione coerente di potenza per basi negative ed esponenti razionali – seppur possibile in alcuni casi – comporterebbe la perdita delle proprietà formali delle potenze. I vantaggi di tale definizione sarebbero comunque inferiori ai notevoli svantaggi che ne deriverebbero; è quindi preferibile evitare simili estensioni.  

Per concludere l'analisi sulle potenze con esponente razionale, presentiamo un esempio che dimostra come le potenze con base negativa debbano essere gestite con estrema prudenza.

//
#esempio[Dimostra la relazione tra le espressioni:
$ (-1)^(#std.text(size: 0.6em)[$3/2$]), quad (-1)^(#std.text(size: 0.8em)[$2 space dot space$] #std.text(size: 0.6em)[$3 / 2$]), quad (-1)^3 $

Se le potenze con base negativa fossero sempre definite e rispettassero le proprietà formali, le tre espressioni dovrebbero avere lo stesso valore. Tuttavia, si verifica quanto segue:

+ $(-1)^(#std.text(size: 0.6em)[$3/2$])$ non è definito, poiché $-1$ non può essere elevato a una potenza razionale come $3/2$.
+ $(-1)^(#std.text(size: 0.8em)[$2 space dot space$] #std.text(size: 0.6em)[$3 / 2$])$ vale $1$. Infatti, prima si calcola $(-1)^2 = 1$ e successivamente si eleva il risultato a $3/2$, ottenendo $1$.
+ $(-1)^3$ è uguale a $-1$, come è intuitivo.]

== Potenze con esponente reale irrazionale

L'ultima estensione del concetto di potenza che si prende in esame riguarda l'utilizzo di esponenti reali irrazionali. Purtroppo, trattare rigorosamente questo tema richiede approcci complessi che esulano dagli obiettivi di questo testo. Qui si offre solo un'idea intuitiva del processo.

Considerando $a > 0$, $a in RR$, e $gamma in RR$ con $gamma$ irrazionale, possiamo rappresentare il valore di $gamma$ attraverso la sua forma decimale illimitata e non periodica: $gamma = alpha, beta_1 beta_2 beta_3 ...$. A partire dalla forma decimale di $gamma$, si costruisce una successione:  
$ a^alpha, quad a^(alpha, beta_1), quad a^(alpha, beta_1 beta_2), quad a^(alpha, beta_1 beta_2 beta_3), dots $  

Questa successione consiste di numeri reali positivi, con proprietà differenti a seconda del valore di $a$:  
- cresce se $a > 1$  
- decresce se $0 < a < 1$  
- rimane costante e uguale a $1$ se $a = 1$  

Con il progressivo avvicinarsi dell'esponente al numero $gamma$, la successione converge verso un numero reale ben definito, che si chiama "potenza con base $a$ e esponente $gamma$". Inoltre, nel caso in cui $gamma > 0$, si pone $0^gamma = 0$. Successivamente si può dimostrare che le proprietà formali delle potenze continuano a essere valide, sebbene la dimostrazione non sia immediata. Si osserva però che questo concetto esteso di potenza si discosta notevolmente dalla nozione originale di prodotto tra fattori uguali.

Per sintetizzare quanto affrontato finora, è utile definire gli ambiti in cui ha senso utilizzare il simbolo $a^gamma$, limitandoci al contesto reale:
1. per ogni $a in RR$, se $gamma$ è un intero $> 0$;
2. per tutti gli $a in RR$ escluso lo zero, se $gamma$ è un intero $<= 0$;
3. per $a >= 0$, se $gamma$ è un numero non intero e $> 0$;
4. per $a > 0$, se $gamma$ è un numero non intero e $< 0$.

Un aspetto cruciale nelle applicazioni è il confronto tra diverse potenze. Le problematiche si possono suddividere in tre categorie:  
+ confronto tra potenze con la stessa base  
+ confronto tra potenze con lo stesso esponente  
+ confronto tra potenze con basi ed esponenti diversi

I problemi dei primi due tipi risultano abbastanza semplici da risolvere, mentre quelli della terza categoria sono più complessi e richiedono analisi caso per caso. Ad esempio, il raffronto tra $a^b$ e $b^a$ può già essere problematico da interpretare#footnote[Il problema di individuare le soluzioni razionali per l'equazione $a^b = b^a$ è particolarmente interessante. Tra i numeri interi, l'unica soluzione possibile è $2^4 = 4^2$. Tuttavia, nel campo dei numeri razionali esistono infinite soluzioni. Un esempio di queste è: $(9/4)^(#std.text(size: 0.6em)[$27/8$]) = (27/8)^(#std.text(size: 0.6em)[$9/4$])$]: 

$ 2^3 < 3^2, quad 2^4 = 4^2, quad 2^5 > 5^2 $

== Funzioni esponenziali

Nella @funzioni abbiamo introdotto le funzioni potenza, ora ci concentriamo sulle funzioni esponenziali, anch'esse basate sul concetto di potenza. Queste funzioni si caratterizzano per avere una base fissa e un esponente variabile. Viene fornita la seguente definizione formale:

#definizione(title: "Funzione esponenziale", label: <def_esponenziale>)[Per ogni $a > 0$, si definisce funzione esponenziale di base $a$ la funzione $f: RR -> RR$, espressa da $f(x) = a^x$.]

Si dimostra il seguente teorema fondamentale:
#definizione(title: "Teorema")[Tutte le funzioni esponenziali presentano le seguenti caratteristiche:
- sono sempre positive
- sono strettamente crescenti se $a > 1$
- sono strettamente decrescenti se $0 < a < 1$
- sono costanti se $a = 1$
- per $a > 0$ e $a != 1$, le funzioni esponenziali assumono tutti i valori reali positivi una sola volta.]

Le proprietà delle potenze portano anche alle seguenti proprietà fondamentali delle funzioni esponenziali:
$ a^0 = 1 \ a^1 = a \ a^(x_1+x_2) = a^(x_1) dot a^(x_2) $

I grafici delle funzioni esponenziali, evidenziati in @funzione_esponenziale, mostrano chiaramente questi comportamenti.

#funzione_esponenziale

Un'altra notazione utilizzata per rappresentare le funzioni esponenziali è la seguente:
$ f(x) = a^x = exp_a (x) $
Quando non vi è rischio di ambiguità, si possono omettere le parentesi tonde intorno alla variabile, scrivendo semplicemente $ exp_a x $

Nel caso particolare in cui la base sia il numero di Nepero $e$, si fa riferimento semplicemente alla funzione esponenziale naturale, omettendo la specificazione della base:
$ f(x) = e^x = exp(x) $

Questa scelta è legata al fatto che la base $e$ è considerata la base naturale per le funzioni esponenziali. Il motivo sarà approfondito in futuri corsi di analisi matematica, ma possiamo anticipare che ciò dipende dal fatto che, con tale base, il coefficiente angolare della tangente al grafico coincide perfettamente con l'ordinata del punto di tangenza.

#funzione_esponenziale_e

Le proprietà di monotonia delle funzioni esponenziali risultano fondamentali per risolvere equazioni e disequazioni contenenti esponenziali. In particolare, se $a > 0$ con $a != 1$, per ogni coppia di numeri reali $x$ e $y$, valgono le seguenti implicazioni:

$ x = y &<==> a^x = a^y \ x < y &<==> a^x < a^y, quad "se" a > 1 \ x < y &<==> a^x > a^y, quad "se" 0 < a < 1 $ <proprieta_monotonia_esponenziali>

Un confronto interessante è quello tra funzioni esponenziali con basi diverse, come mostrato in @funzioni_esponenziali.

#funzioni_esponenziali

Un ulteriore confronto utile riguarda le funzioni potenza e le funzioni esponenziali: ad esempio, tra $2^x$ e $x^2$. In questo caso, per apprezzare al meglio il comportamento, è più significativo fare riferimento ai valori tabulati piuttosto che ai grafici. La @tabella_funzioni_potenza_esponenziali, relativa esclusivamente ad alcuni valori positivi della variabile, evidenzia che per valori piccoli di $x$, i risultati di $x^2$ e $2^x$ sono confrontabili; tuttavia, per valori più grandi di $x$, la funzione esponenziale $2^x$ cresce molto più rapidamente rispetto alla funzione quadratica $x^2$.

#tabella_funzioni_potenza_esponenziali

== I logaritmi  

Come già affermato nel teorema in @def_esponenziale, le funzioni esponenziali con una base $a$ diversa da 1, e con $a > 0$, sono biunivoche tra $RR$ ed $RR^(>0)$. Questo implica che, se $a$ e $b$ sono numeri reali strettamente positivi e $a != 1$, l'equazione:  
$ a^x = b $  
ammette un'unica soluzione per l'incognita $x$. Da qui, possiamo formulare la seguente definizione:  

#definizione(title: "Logaritmo", label: <def_logaritmo>)[Dati $a, b in RR$, con $a > 0$, $a != 1$ e $b > 0$, la soluzione unica dell'equazione $ a^x = b $ è chiamata logaritmo in base $a$ di $b$ e si indica con la notazione $log_a(b)$, o più semplicemente $log_a b$.] 

Dalla suddetta definizione discende la relazione fondamentale:  
$ a^(log_a b) = b, quad a > 0, quad a != 1, quad b > 0 $  

Questa relazione si interpreta nel seguente modo: "il logaritmo in base $a$ (positiva e diversa da 1) del numero reale positivo $b$ rappresenta l'esponente che bisogna assegnare ad $a$ per ottenere $b$".  

#esempio[Si ha $log_3 81 = 4$, dato che $3^4 = 81$][Si ha $log_2 (1/8) = -3$, dato che $2^(-3) = 1/8$][Si ha $log_5 (root(3, 25)) = 2/3$, dato che $5^(#std.text(size: 0.6em)[$2/3$]) = root(3, 5^2) = root(3, 25)$]  

È importante prestare attenzione ai vincoli imposti sui numeri $a$ e $b$ affinché la definizione di logaritmo abbia senso. Ad esempio, anche se $(-2)^3 = -8$, ovvero, anche se l'esponente $3$ applicato a $-2$ dà come risultato $-8$, non è possibile definire il logaritmo a base negativa: infatti, non esiste una definizione valida per i logaritmi con base negativa, quindi non si può scrivere che $log_(-2)(-8) = 3$.  

In termini di funzioni inverse, la @def_logaritmo può essere interpretata come l'inversa della funzione $f(x) a^x$ in $RR^(>0)$, \data dalla funzione:  
$ log_a : RR_(>0) -> RR, quad x |-> log_a x, quad a > 0, quad a != 1. $  

Il grafico delle funzioni logaritmiche ha una forma caratteristica, come illustrato in @funzione_logaritmo.  

#funzione_logaritmo 

Analogamente alle funzioni esponenziali, anche per i logaritmi la base di maggior interesse è il numero di Nepero, indicato con $e$. In questo caso si preferisce omettere esplicitamente l'indicazione della base e si utilizza#footnote[#show math.equation: set text(size: 0.85em)
In alcuni libri di testo il logaritmo naturale è scritto nella forma $log(x)$, mentre in altri questa forma è usata per designare il logaritmo in base 10, $log_10 (x)$. Quest'ultimo viene ulteriormente identificato con $"Log" (x)$, forma ormai in disuso. In questo testo adotteremo la notazione standard, ufficialmente prevista dalle norme ISO.] la scrittura abbreviata $ln(x)$ (che si legge "logaritmo naturale") al posto di $log_e x$. Per comprendere appieno il motivo di questa scelta, occorrerà approfondire lo studio in corsi avanzati di analisi matematica, tuttavia possiamo anticipare che, utilizzando questa base, il coefficiente angolare della tangente al grafico viene a coincidere col reciproco dell'ascissa del punto di tangenza.  

#funzione_logaritmo_ln

Il confronto tra @funzione_esponenziale_e e @funzione_logaritmo_ln risulta particolarmente interessante. Per maggiore chiarezza, abbiamo rappresentato graficamente entrambe le funzioni e le loro rispettive tangenti nei punti "corrispondenti" nella figura 7.6.

Poiché le funzioni $e^x$ e $ln x$ sono reciprocamente inverse, i loro grafici risultano simmetrici rispetto alla bisettrice del primo e terzo quadrante. Questa simmetria si estende anche alle tangenti tracciate nei punti $P$ e $P'$, che sono simmetriche rispetto alla stessa bisettrice. Di conseguenza, gli angoli $alpha$ e $beta$, evidenziati nella figura 7.6, sono complementari. Come verrà approfondito nel capitolo dedicato alla geometria analitica, questo implica che i rispettivi coefficienti angolari delle tangenti siano l'uno il reciproco dell'altro. Inoltre, dal momento che per definizione $y_P = x_(P')$, ne deriva che il coefficiente angolare della tangente in $P$ al grafico di $e^x$ è pari a $y_P$, mentre quello della tangente al grafico di $ln x$ in $P'$ sarà $1 / y_P = 1 / x_(P')$, esattamente come anticipato.

Questo aspetto risulta particolarmente utile quando ci si dedica alla risoluzione di equazioni e disequazioni: saper interpretare con disinvoltura i grafici delle funzioni esponenziali e logaritmiche, tenendo ben presente la loro relazione di inversa reciprocità, è fondamentale.

#funzione_esp_e_ln

Un ragionamento simile può essere applicato anche alle funzioni trigonometriche. Un'analisi accurata nelle @grafico_esp_2 e @grafico_log_2, relativa ai grafici delle funzioni $2^x$ e $log_2 x$, potrà ulteriormente chiarire come sfruttare al meglio questi strumenti grafici per l'analisi delle funzioni.

#funzioni_log2_2x

//
Le relazioni tra una funzione e la sua inversa comportano conseguenze fondamentali, come mostrano le seguenti equazioni, valide se $a > 0, a != 1$:

$ log_a a^x = x, quad forall x in RR \  a^(log_a x) = x, quad forall x in RR, x > 0 \  log_a = 0 \  log_a a = 1 $

Si osservi che, nelle ultime due proprietà sopra riportate, l'ipotesi $a != 1$ è essenziale. Infatti, se $a = 1$, si avrebbe $log_1 1 = 0$ dalla terza relazione, ma anche $log_11 = 1$ dalla quarta, il che risulta logicamente contraddittorio.

Le proprietà di monotonia delle funzioni logaritmiche derivano direttamente dalle analoghe proprietà delle funzioni esponenziali. Perciò, in analogia con le relazioni @proprieta_monotonia_esponenziali, se $x$ e $y$ sono numeri reali positivi, valgono le seguenti affermazioni:

$ x = y <==> log_a x = log_a y \ x < y <==> log_a x) < log_a y, quad a > 1 \ x < y <==> log_a x > log_a y, quad a < 1 $

Dalle proprietà delle potenze si possono dedurre anche due importanti proprietà dei logaritmi:

$ log_a (alpha * beta) = log_a alpha + log_a beta, quad alpha > 0, beta > 0 \ log_a alpha^beta = beta dot log_a alpha, quad alpha > 0 $ <proprieta_logaritmi>

#grafici_proprieta_logaritmi

La dimostrazione di tali proprietà risulta particolarmente intuitiva se si utilizza un approccio grafico. Analizziamo la prima proprietà attraverso la @grafico_proprieta_logaritmi1. Dal grafico, si può dedurre che, "leggendo il grafico all'inverso", otteniamo: $ x_1 = log_a alpha, quad x_2 = log_a beta, quad x_1 + x_2 = log_a (alpha dot beta) $

Utilizzando la @grafico_proprieta_logaritmi1, si osserva il grafico in senso inverso e si deduce che: $ x_1 = log_a alpha, quad x_2 = beta dot x_1 = log_a (alpha^beta) $

È fondamentale prestare attenzione all'uso delle proprietà @proprieta_logaritmi: per garantirne la validità devono valere le condizioni $ alpha > 0, quad beta > 0 $

Tale situazione è simile a quella che si verifica per i radicali (vedi equazioni @radicali2a e @radicali2 nella @numeri_naturali_reali). Per chiarire questi aspetti consideriamo i seguenti esempi.

#esempio[Verifica che:
$ log_a ((-2)(-3)) = log_a 2 + log_a 3 $
In generale, $log_a (alpha beta) = log_a |alpha| + log_a |beta|$, quando sia $alpha$ sia $beta$ sono negativi.][Verifica che:
$ log_a ((-5)^2) = 2 log_a 5 $
In generale, $log_a (x^2) = 2 log_a |x|$]

Un aspetto rilevante per le applicazioni riguarda le formule di cambio base nelle potenze e nei logaritmi:
$ a^alpha = b^(alpha log_b (a)), quad log_a b = (log_c b) / (log_c a) $

Entrambe queste relazioni sono una diretta conseguenza della definizione di logaritmo. Per la prima formula si ha:
$ b^(alpha log_b (a)) = b^(log_b (a^alpha)) = a^alpha $

Per la seconda formula:
$ a^(log_a b) = b &=> log_c (a^(log_a b)) = log_c b \
  &=> log_a b dot log_c a = log_c b \
  &=> log_a b = (log_c b) / (log_c a) $

Da questa seconda relazione, se $c = b$, si ha:
$ log_a b = 1 / (log_b a) $

== Funzioni del tipo $f(x)^(g(x))$

Consideriamo ora una funzione espressa come $f(x)^(g(x))$ e cerchiamo di trovare il suo dominio naturale. Per definizione, il dominio naturale di una funzione su variabili reali è l'insieme dei valori di $x$ per cui i calcoli necessari per definire il valore della funzione hanno senso.

Indicando con $E$ il dominio dell'esponente $g(x)$, il dominio $D$ della funzione $f(x)^(g(x))$ si ottiene come unione tra i seguenti tre insiemi:
$ D_1 &= {x | f(x) > 0} inter E \ D_2 &= {x | f(x) = 0} inter {x | g(x) > 0} \ D_3 &= {x | f(x) < 0} inter {x | g(x) in ZZ} $

#esempio[La funzione $f(x) = x^x$ ha come dominio naturale: $ {x in ZZ | x < 0} union ]0, +oo[ $ <fx-gx1>][La funzione $f(x) = x^(#std.text(size: 0.6em)[$2/x$])$ ha come dominio naturale: $ RR backslash {0} $<fx-gx2>][La funzione $f(x) = x^(2x)$ ha come dominio naturale: $ {..., -3, -5/2, -2, -3/2, -1, -1/2} union ]0, +oo[ $<fx-gx3> ovvero l'insieme dei numeri reali positivi e, tra i numeri negativi, quelli per cui $2x$ è intero, cioè quelli della forma $ x = -n/2, quad n in NN, quad n >= 1 $]

Si noti che le funzioni degli esempi @fx-gx2 e @fx-gx3 presentano differenze significative nei rispettivi domini naturali. Di solito, tuttavia, quando si opera con funzioni di questo tipo si accetta come dominio solo l'insieme $D_1$ degli insiemi definiti sopra. Per questi valori di $x$, e solo per essi, è possibile applicare la pratica formula:
$ f(x)^(g(x)) = a^(g(x) dot log_a f(x)), quad "se " f(x) > 0 " e " a > 0, quad a != 1 $

La rilevanza di questa formula risiede nella capacità di trasformare una funzione del tipo $f(x)^(g(x))$ in una forma esponenziale con base fissa. Scegliendo comunemente come base il numero $e$, la formula diventa:
$ f(x)^(g(x)) = e^(g(x) dot ln f(x)), quad "se " f(x) > 0 $

//
== Equazioni e disequazioni esponenziali e logaritmiche

Le equazioni esponenziali sono caratterizzate dalla presenza dell'incognita nell'esponente, mentre le equazioni logaritmiche si distinguono per l'incognita che figura come argomento dei logaritmi. La risoluzione di tali equazioni può resultar particolarmente complessa. Ad esempio, l'equazione $x + 2^x = 0$ non ammette soluzioni maggiori o uguali a zero, in quanto il primo membro rappresenta la somma di due numeri non negativi. Tuttavia, potrebbe avere soluzioni negative, dato che in tali casi il primo membro diventa una somma di un numero negativo con un altro positivo non superiore a $1$. In effetti, le proprietà della funzione indicano che l'equazione ha esattamente una soluzione compresa tra $-1$ e $0$. 

Purtroppo, non esistono metodi elementari per determinarla in modo preciso, anche se sono disponibili tecniche che permettono di calcolarne un valore approssimato con un numero arbitrario di cifre decimali, un aspetto cruciale per molte applicazioni pratiche. Vista la complessità di queste tecniche, in questa sede ci limitiamo a fornire, nella @grafico_x_2_x, il grafico della funzione definita dal primo membro $f(x) = x + 2^x$, che conferma quanto affermato: il grafico interseca l'asse delle ascisse in un solo punto, $P$.

#grafico_x_2_x

Considerazioni analoghe valgono per le disequazioni. In questo capitolo ci occuperemo esclusivamente di alcuni casi più semplici.

=== Equazioni e disequazioni elementari

Sono definite elementari le equazioni esponenziali o logaritmiche che assumono la forma:  
$ a^x = b \ log_a x = b $

Per le equazioni esponenziali, se $b <= 0$, queste non ammettono soluzioni. Nel caso in cui $b > 0$, per risolverle si prende il logaritmo, solitamente alla base $a$, di entrambi i membri. Per quanto riguarda le equazioni logaritmiche, si comincia verificando il dominio di esistenza del logaritmo ($x > 0$) e successivamente si applica l'esponenziale alla base $a$ su entrambi i membri.  

Le disequazioni elementari, invece, sono espresse nelle forme:  
$ a^x lt.gt.eq b \ log_a x lt.gt.eq b $

Ovvero, si tratta delle versioni in cui il segno di uguaglianza nelle equazioni sopra riportate è sostituito da un segno di disuguaglianza. Per risolverle è fondamentale tenere a mente che:
+ le funzioni esponenziali sono sempre rigorosamente positive per qualsiasi valore dell'esponente.  
+ se $a > 1$, sia le funzioni esponenziali che logaritmiche sono strettamente crescenti; invece, se $0 < a < 1$, esse risultano strettamente decrescenti.  

In base a queste caratteristiche, sarà necessario, se opportuno, prendere il logaritmo o l'esponenziale di entrambi i membri della disequazione, prestando particolare attenzione al cambio di verso: per $0 < a < 1$ è necessario invertirlo, mentre per $a > 1$ non ci sono cambiamenti del verso.

#esempio[Risolvere l'equazione: $ 3^x = 5 $ Prendendo il logaritmo in base $3$ di entrambi i membri:  
$ log_3 3^x = log_3 5 $  
Applichiamo la proprietà dei logaritmi:  
$ x dot log_3 3 &= log_3 5 \ x &= log_3 5 $  
Un'alternativa sarebbe stata utilizzare i logaritmi naturali (base $e$), ottenendo:  
$ x = (ln 5) / (ln 5), $  
risultato equivalente grazie alla formula del cambio di base. Per risolvere la disequazione $3^x < 5$, si procede in modo analogo considerando che $3 > 1$. La soluzione è $ x < log_3 5 $][Risolvere l'equazione: $ (1/2)^x = 3 $  
Procedendo come nell'esempio precedente:  
$ log_(#std.text(size: 0.6em)[$1/2$])(1/2)^x = log_(#std.text(size: 0.6em)[$1/2$])3, $  
da cui si ottiene $x = log_(#std.text(size: 0.6em)[$1/2$])3$.  

Per risolvere la disequazione $(1/2)^x > 3$ si tiene conto che $a = 1/2 < 1$, quindi è necessario invertire il verso nella soluzione. Si ottiene:  
$ x < log_(#std.text(size: 0.6em)[$1/2$])3 $][Risolvere l'equazione: $ 3^x = -2 $ Poiché l'espressione $3^x$ è sempre positiva e il secondo membro negativo, non esistono soluzioni.  

Per la disequazione $3^x < -2$, nessuna soluzione per lo stesso motivo. Al contrario, per $3^x > -2$, essendo la funzione esponenziale positiva per ogni esponente, l'insieme delle soluzioni è $RR$.][Risolvere l'equazione: $ log_2 x = 5 $ Applicando l'esponenziale in base $2$ a entrambi i membri dell'equazione, otteniamo $2^(log_2 x) = 2^5$, che si semplifica in $ x = 32 $ 

Per risolvere la disequazione $log_2(x) < 5$, utilizziamo lo stesso metodo, arrivando a $0 < x < 32$, ricordando che l'argomento del logaritmo deve essere necessariamente positivo.][Risolvere l'equazione:  $ log_(#std.text(size: 0.6em)[$1/2$]) x = -2 $ Elevando entrambi i membri alla potenza in base $1/2$, otteniamo $(1/2)^(log_(#std.text(size: 0.6em)[$1/2$]) x) = (1/2)^(-2)$, che porta a: $ x = 4 $

Per la disequazione $log_(#std.text(size: 0.6em)[$1/2$])(x) < -2$, applicando il medesimo ragionamento troviamo $x > 4$. Viceversa, per la disequazione $log_(#std.text(size: 0.6em)[$1/2$]) x > -2$ si può seguire lo stesso procedimento; tuttavia, è importante ricordare che l'argomento del logaritmo deve essere strettamente positivo. Pertanto, la soluzione sarà $0 < x < 4$.]

In generale, non vi sono differenze significative tra le tecniche utilizzate per risolvere equazioni e disequazioni logaritmiche. Tuttavia, è fondamentale tenere presente che, nel caso delle equazioni, non è rilevante se la funzione logaritmica sia crescente o decrescente. Questo dettaglio diventa invece essenziale quando si affrontano le disequazioni.

=== Equazioni e disequazioni non elementari

Per affrontare equazioni e disequazioni non elementari non esiste un metodo standard applicabile universalmente. L'approccio principale consiste nel tentare di semplificare il problema, riconducendolo a uno o più casi di equazioni elementari. A tal proposito, esamineremo una serie di esempi esplicativi che illustrano alcune tra le strategie più utilizzate.

#esempio[Risolvere l'equazione $ 2^(x^2-1) = 8 $  
Anche se all'apparenza complessa, questa è in realtà un'equazione elementare. Prendendo il logaritmo in base $2$ su entrambi i membri e ricordando che $log_2 8 = log_2 2^3 = 3$, otteniamo:  
$ x^2 - 1 = 3 $  
da cui segue:  
$ x^2 = 4 \ x = plus.minus 2. $  
In alternativa, si sarebbe potuto osservare direttamente che $8 = 2^3$, concludendo subito che $x^2 - 1 = 3$.][
Risolvere l'equazione: $ log_5(x + |x| + 1) = 0 $  
Anche in questo caso si tratta di un'equazione elementare. Il dominio del termine a sinistra è $RR$, come è facile verificare. Elevando entrambi i membri all'esponenziale in base $5$ si ottiene:  
$ x + |x| + 1 = 1 $  
che ha come soluzione $lr(]-oo, 0])$.][Risolvere l'equazione: $ 2^(x+1) = 5 - 4^(x-1) $  
La strategia per trasformare l'equazione è:  
$ 2^x dot 2^1 = 5 - 4^x dot 4^(-1) \ 2^x dot 2 = 5 - 2^(2x) dot 4^(-1) $  

Poniamo ora $t = 2^x$. Si ottiene, semplificando, l'equazione quadratica:  
$ t^2 + 8t - 20 = 0, $  
che risolta fornisce:  
$ t = -10 or t = 2 $  

Analizziamo le soluzioni:  
- la condizione $t = -10$ non è valida in quanto $t = 2^x > 0$  
- la condizione $t = 2$ conduce a $2^x = 2$, da cui segue che $x = 1.$  

La soluzione dell'equazione originaria è dunque $S = {1}$.]La stessa metodologia può essere applicata ad altre equazioni contenenti solo termini del tipo $a^x$ o $log_a x$, purché la sostituzione $t = a^x$ o $t = log_a x$ conduca a un'equazione risolvibile. Proponiamo alcuni esempi qui di seguito.  
#esempio[Risolviamo l'equazione: $ 9^x - 2 dot 3^x - 5 = 0 $

Sostituendo t = $3^x$, con $t > 0$, si ottiene: 

$ t^2 - 2t - 5 = 0 \ t_(1,2) = 1 plus.minus sqrt(6) $

Poiché $t > 0$ l'unica soluzione accettabile è $1 + sqrt(6)$. Ripristinando la variabile, il risultato è $x = log_3 (1 + sqrt(6))$.][Risolviamo l'equazione: 

$ log_5^2 x + log_5 x - 6 = 0 $

Poniamo il dominio $x > 0$ e operiamo la sostituzione $t = log_5 x$:

$ t^2 + t - 6 = 0 \ (t + 3)(t-2) = 0 $

Si ottengono due valori: $t = -3$ e $t = 2$. Ripristinando la variabile si ottiene $x =  1/125 or x = 25$, entrambe accettabili.

][Risolviamo l'equazione: 
$ log_3^2 x + log_3 x^2 - 6 = 0 $

Si pone $x > 0$ e si applicano le proprietà dei logaritmi:

$ (log_3 x)^2 + 2 log_3 x - 6 = 0 $

Sostituendo $t = log_3 x$:

$ t^2 + 2t - 6 = 0 \ t_(1,2) = -1 plus.minus sqrt(7) $

Ripristinando la variabile si ottiene $x_(1,2) = 3^(-1 plus.minus sqrt(7))$.

] 

In alcune delle equazioni sopra proposte compare una notazione come $log_2^5 x$. Questa scrittura, sebbene ambigua, è ormai di uso comune e va interpretata come $(log_5(x))^2$.  
Per essere più precisi, si dovrebbe scrivere $(log_5(x))^2$, ma in assenza di ambiguità si tende a minimizzare il numero di parentesi. Nota inoltre che:  
$ log_3^2 x != log_3 x^2 $ <relazione_logaritmo>
La differenza risiede nell'ordine in cui vengono effettuate le operazioni:
- in $log_3^2 x$, si calcola prima il logaritmo in base $3$ del numero $x$ e successivamente si eleva il risultato al quadrato.
- in $log_3 x^2$, invece, si calcola prima il quadrato di $x$ e poi il logaritmo del risultato.

Se risolviamo l'equazione $ log_3^2 x = log_3 x^2 $
si ottiene $ (log_3 x)^2 = 2 log_3 |x| $
Poiché il dominio impone $x > 0$, ne deriva $|x| = x$. Ponendo $log_3(x) = t$, si giunge a $t = 0$ oppure $t = 2$, da cui segue che $x = 1$ oppure $x = 9$. Questa soluzione trova conferma nei grafici delle due funzioni rappresentate nella relazione @relazione_logaritmo: come evidenziato nella @grafico_log3_2x, vi è una chiara distinzione tra i due casi e l'uguaglianza risulta valida solo per $x = 1 or x = 9$.

#grafico_log3_2x

#v(4em)
#esempio[Risolviamo l'equazione:  
$ log_5(x - 3) - log_5(5 - x) = 0 $  

Come prima cosa, individuiamo il dominio:  
$ cases( x - 3 > 0,  
  5 - x > 0   
) $  
da cui si ottiene $3 < x < 5$.  

L'equazione può essere riscritta nella forma:  
$ log_5 (x - 3) / (5 - x) = 0 $  
A questo punto eleviamo entrambi i membri dell'equazione alla potenza della base $5$, ottenendo:  
$ (x - 3) / (5 - x) = 1 $  

Risolviamo l'equazione:  
$ x - 3 = 5 - x \ x = 4 $  

Poiché il valore trovato $x = 4$ rientra nel dominio precedentemente calcolato ($3 < x < 5$), la soluzione è valida. Inoltre, è importante notare che abbiamo semplificato il denominatore poiché, in base al dominio, esso è sicuramente positivo e, quindi, diverso da zero. Perciò, la soluzione finale è $S = {4}$.  

Un'ulteriore considerazione: siamo passati alla scrittura $log_5(x - 3) / (5 - x)$ solo dopo aver determinato il dominio della funzione. In questo caso particolare, determinare prima il dominio non comporta differenze, poiché le due funzioni $log_5(x - 3) - log_5(5 - x)$ e $log_5 (x - 3) / (5 - x)$ hanno lo stesso dominio. Tuttavia, questa equivalenza non è sempre valida.][Per esempio, consideriamo le seguenti funzioni:  
$ log_5(x - 3) - log_5(x - 5) \ log_5((x - 3) / (x - 5)) $  

La prima ha come dominio $x > 5$, mentre la seconda ha come dominio $x < 3$ o $x > 5$. Questo perché:  
- nel caso della prima funzione, occorre risolvere il sistema:  
  $ cases( x - 3 > 0,  
    x - 5 > 0  
  ) $  

- nel caso della seconda funzione, invece, bisogna considerare la disequazione fratta:  
  $ (x - 3) / (x - 5) > 0 $  

Il grafico relativo al sistema è questo:  

#tabella_ver_diseq_log

Invece, il grafico relativo alla disequazione fratte è questo:

#schema_diseq_log

][Risolvere la disequazione:
$ 3^(x+2) - 9/5 dot 5^(x+1) < 3^x - 5^x $
Applicando le giuste regole, si ottiene:
$ 3^x dot 3^2 - 9/5 dot 5^x dot 5 < 3^x - 5^x \ 9 dot 3^x - 9 dot 5^x < 3^x - 5^x \ 8 (3^x < 5^x) < 0 $

Dividendo tutti i termini per $8$ e semplificando, si ottiene:
$ 3^x < 5^x \ (3/5)^x < 1 $
L'ultima è una disequazione elementare, la cui soluzione è $x > 0$. Si nota che il verso della disequazione cambia perché $3/5 < 1$.][Risolvere la disequazione:
$ ln(2^x - 2) > ln(2 dot 2^(2x) + 2) - ln(2^x - 1) $ Per prima cosa troviamo il dominio di esistenza:
$ cases(
  2^x - 2 > 0,
  2 times 2^(2x) + 2 > 0,
  2^x - 1 > 0
) $

La prima e la terza hanno soluzioni elementari, rispettivamente $x > 1$ e $x > 0$; la seconda è sempre vera, essendo il primo membro la somma di due numeri strettamente positivi; il dominio della funzione è quindi $x > 1$.

Sostituendo $t = 2^x$ e semplificando con le proprietà dei logaritmi, si ottiene:
$ ln(t - 2) > ln(2 dot t^2 + 2) - ln(t - 1)  \ ln ((t - 2)(t - 1))/(2t^2 + 2) > 0 \ ((t - 2)(t -1))/(2t^2 + 2) > 1 $

Eliminando il denominatore, che è strettamente positivo, si giunge a:
$ (t - 2)(t - 1) > (2t^2 + 2). $

Questa disequazione è di secondo grado, con soluzioni apparenti $-3 < t < 0$. Tuttavia, ciò viene escluso perché $t = 2^x$, e $t > 0$. Il problema, dunque, non ha soluzioni valide.][$ 2^(sqrt(3-x)) / ((x-1) ln(x+2)) > 0 $

1. Calcoliamo innanzitutto il dominio della funzione:
$ cases(
  3 - x >= 0 &=> x <= 3,
  x + 2 > 0 &=> x > -2,
  (x - 1) ln(x + 2) != 0 &=> x != 1 and x != -1
) $

Combinando tutte le condizioni, il dominio è: $]-2, -1[ union ]-1, 1[ union ]1, 3]$.

A questo punto, si analizza il segno dei fattori al numeratore e al denominatore all'interno del dominio. Il numeratore è strettamente positivo e si semplifica. Rimane da studiare il segno dei due fattori al denominatore, $x - 1$ e $ln(x + 2)$:

#schema_segni16

L'insieme delle soluzioni della disequazione è: $S = ]-2, -1[ union ]1, 3]$.]

//
Nel trovare le soluzioni alle disequazioni elementari, a cui tutte le altre possono essere ricondotte, è fondamentale prestare particolare attenzione sia alla base degli esponenziali e dei logaritmi, sia al requisito che l'argomento del logaritmo sia rigorosamente positivo. Per ridurre al minimo il rischio di errori o dimenticanze, è spesso utile ricorrere alle rappresentazioni grafiche, che offrono una visione più intuitiva del problema. Questo approccio è particolarmente evidente negli esempi seguenti.

#v(2em)
#esempio[Risolvere la disequazione:  
$ log_(#std.text(size: 0.6em)[$2/3$]) x > -2 $

Sebbene la risoluzione algebrica sia semplice e diretta, l'uso della rappresentazione grafica permette una comprensione visiva più immediata e aiuta ad evitare di commettere grossolani errori o dimenticanze durante il processo.

La soluzione è:  
$ S = lr(\] 0, (2/3)^(-2) \[) = lr(\] 0, 9/4 \[) $

#grafico_log2_3
][Risolvere la disequazione:  
$ log_3 x < 2 $  
La soluzione algebrica è immediata, calcolando   
$x < 3^2$ e dunque $x < 9$ si ottiene:  
$ S = lr(\]0, 9\[) $ 

#grafico_log3_2

][Risolvere il sistema di disequazioni: 

$ 2 < 3^x < 4 $

Si ottiene che $x$ è compreso tra $log_3 2$ e $log_3 4$. 

$ S = lr(\]log_3 2, log_3 4\[) $  

#grafico_2_3x_4

]

// TODO:Esercizi