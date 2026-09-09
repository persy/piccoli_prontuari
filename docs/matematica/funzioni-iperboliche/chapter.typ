#import "../../../template/_global/template.typ": *
#import "../../../template/_global/config.typ": *
#import "figures.typ": *

// Workaround per stile font delle formule matematiche, da sistemare in futuro
/* #set math.equation(numbering: (..n) => {
  text(font: sans-fonts, size: 11pt, numbering("1", ..n))
  }) */

= Funzioni iperboliche <funzioni_iperboliche>

#intro[In questo capitolo introduciamo le funzioni iperboliche, costruite in stretta analogia con le funzioni trigonometriche ma a partire dall'iperbole equilatera anziché dalla circonferenza goniometrica. Vedremo come queste funzioni siano esprimibili tramite la funzione esponenziale, ne studieremo le inverse e le principali formule, che ricalcano da vicino quelle già note per seno e coseno.]

== Esploriamo le funzioni trigonometriche

Le funzioni trigonometriche, e in particolare il seno e il coseno, sono state introdotte a partire dalla circonferenza goniometrica. Dato un numero reale $x$ e il punto $A(1, 0)$, si individua sulla circonferenza goniometrica un punto $P$ tale che la lunghezza dell'arco $A P$ sia pari a $|x|$, muovendosi in senso antiorario se $x$ è positivo e in senso orario se $x$ è negativo. La misura di questo arco coincide con l'ampiezza in radianti dell'angolo al centro corrispondente. Il coseno e il seno di $x$ corrispondono rispettivamente all'ascissa e all'ordinata del punto $P$.

Considerando il settore circolare $A O P$ illustrato nella @settore_circolare, la sua area è $(|x|) / 2$. Pertanto, si possono definire il coseno e il seno di un numero reale $x in [-2pi, 2pi]$ come l'ascissa e l'ordinata del punto $P$ sulla circonferenza goniometrica che individua un settore circolare $A O P$ di area $(|x|) / 2$ (ottenuto tramite rotazione antioraria se $x > 0$, oraria se $x < 0$). Per gli altri valori ci si avvale della periodicità delle funzioni.

#settore_circolare

Sostituiamo ora la circonferenza goniometrica con il ramo destro dell'iperbole equilatera di equazione $X^2 - Y^2 = 1$. Assegnato un numero reale $x$, si individua sull'iperbole il punto $P$ per cui l'area del settore iperbolico $A O P$ (@settore_iperbolico) sia $(|x|) / 2$, collocandosi nel primo o nel quarto quadrante a seconda del segno di $x$.

#definizione(title: "Coseno e seno iperbolico", label: <def-coseno-seno-iperbolico>)[L'ascissa e l'ordinata del punto $P$ così individuato sul ramo destro dell'iperbole equilatera $X^2 - Y^2 = 1$ sono chiamate rispettivamente coseno iperbolico e seno iperbolico di $x$:
$ X_P = cosh x quad "e" quad Y_P = sinh x $]

Queste denominazioni nascono dal fatto che tali funzioni condividono proprietà notevolmente simili a quelle delle funzioni trigonometriche, specialmente per quanto riguarda le formule di addizione e sottrazione.

#settore_iperbolico

Si può dimostrare che l'area del settore iperbolico tende all'infinito man mano che il punto $P$ si allontana lungo il ramo dell'iperbole; per questo motivo le funzioni iperboliche sono definite su tutto $RR$ e, a differenza delle funzioni trigonometriche, non sono periodiche.

Queste funzioni non aumentano il numero delle funzioni elementari, poiché si può dimostrare che sono correlate alla funzione esponenziale secondo le seguenti formule:

$ cosh x = (e^x + e^(-x)) / 2 $
$ sinh x = (e^x - e^(-x)) / 2 $

Da queste relazioni si ricava direttamente:
$ e^x = cosh x + sinh x $

Pertanto, sarebbe stato possibile definire la funzione esponenziale partendo dalle funzioni iperboliche, introducendo il concetto di potenza a esponente reale in modo alternativo rispetto a quanto visto nel @potenze-esponente-reale-irrazionale.

#grafici_funzioni_iperboliche 

La funzione coseno iperbolico (@grafico_cosh) è pari (come il coseno classico) e sempre positiva, con punto di minimo assoluto $(0, 1)$. La funzione seno iperbolico (@grafico_sinh) è dispari (come il seno classico) e strettamente crescente.

Analogamente a quanto fatto per le funzioni trigonometriche, si definiscono altre funzioni iperboliche. Ci concentreremo sulla tangente iperbolica (@grafico_tanh), definita come:
$ tanh x = (sinh x) / (cosh x) = (e^x - e^(-x)) / (e^x + e^(-x)) $

La funzione è dispari e strettamente crescente, con due asintoti orizzontali di equazioni $y = 1$ e $y = -1$.

#grafico_tanh

=== Le funzioni iperboliche inverse

Costruire le inverse delle funzioni iperboliche è più semplice rispetto alle trigonometriche:
- $sinh x$ e $tanh x$ sono strettamente crescenti su $RR$, quindi invertibili senza restrizioni di dominio.
- $cosh x$ è invertibile restringendone il dominio a $[0, +infinity[$.

I codomini e domini corrispondenti per le inverse sono:
- per $"arsinh"(x)$: $D = RR$, $"Im" = RR$
- per $"arcosh"(x)$: $D = [1, +infinity[$, $"Im" = [0, +infinity[$
- per $"artanh"(x)$: $D = ]-1, 1[$, $"Im" = RR$

In italiano queste inverse sono tradizionalmente chiamate settore coseno iperbolico, settore seno iperbolico e settore tangente iperbolica, in virtù della loro definizione geometrica (forniscono il doppio dell'area del settore iperbolico). Tuttavia, la notazione standard ufficiale impiega la sigla ar ("area"):
- inversa del coseno iperbolico: $"arcosh"(x)$
- inversa del seno iperbolico: $"arsinh"(x)$
- inversa della tangente iperbolica: $"artanh"(x)$

Vengono utilizzati comunemente anche altri nomi: $"settsinh"(x)$, $"argsinh"(x)$, $"arcsinh"(x)$, $"asinh"(x)$ e analoghi per le altre funzioni. È importante notare che, secondo la convenzione UNI CEI ISO, si utilizza $"arsinh"$ (area seno iperbolico) anziché $"arcsinh"$, distinguendo in questo modo dalle funzioni trigonometriche dove si usa $"arcsin"$ (arco seno).

#grafici_funzioni_iperboliche_inverse

Le funzioni iperboliche si possono esprimere utilizzando la funzione esponenziale e le loro inverse si esprimono tramite la funzione logaritmo naturale.
Per il seno iperbolico inverso (@grafico_inversa_sinh):
$ y = (e^x - e^(-x)) / 2 => e^(2x) - 2y e^x - 1 = 0 => \ => e^x = y + sqrt(y^2 + 1) => \ => x = ln(y + sqrt(y^2 + 1)) $
  da cui si ottiene:
  $ "arsinh"(x) = ln(x + sqrt(x^2 + 1)), quad x in RR $
Per il coseno iperbolico inverso (@grafico_inversa_cosh):
$ y = (e^x + e^(-x)) / 2 => e^(2x) - 2y e^x + 1 = 0 => \ => e^x = y + sqrt(y^2 - 1) => \ => x = ln(y + sqrt(y^2 - 1)) $
  da cui si ottiene:
$ "arcosh"(x) = ln(x + sqrt(x^2 - 1)), quad x >= 1 $
Per la tangente iperbolica inversa (@grafico_inversa_tanh):
$ y = (e^x - e^(-x)) / (e^x + e^(-x)) => \ => e^(2x)(y - 1) + y + 1 = 0 => e^(2x) = (1 + y) / (1 - y) => \ => x = 1/2 ln((1 + y) / (1 - y)) $
  da cui:
$ "artanh"(x) = 1/2 ln((1 + x) / (1 - x)), quad -1 < x < 1 $

#grafico_inversa_tanh

=== Formule coinvolgenti le funzioni iperboliche

Le formule per le funzioni iperboliche sono simili a quelle delle funzioni trigonometriche, il che giustifica la loro nomenclatura.

==== Relazione fondamentale
Deriva dal fatto che il punto di coordinate $(cosh x, sinh x)$ appartiene all'iperbole equilatera $X^2 - Y^2 = 1$:
$ cosh^2 x - sinh^2 x = 1 $

==== Formule di addizione e sottrazione
Si ottengono applicando le proprietà delle potenze:
$ cosh(x + y) = cosh x cosh y + sinh x sinh y \ cosh(x - y) = cosh x cosh y - sinh x sinh y \ sinh(x + y) = sinh x cosh y + cosh x sinh y \ sinh(x - y) = sinh x cosh y - cosh x sinh y $

==== Formule di duplicazione
Dalle formule di addizione, ponendo $x = y$:
$ cosh(2x) = 2 cosh^2 x - 1 = 2 sinh^2 x + 1 = cosh^2 x + sinh^2 x \ sinh(2x) = 2 sinh x cosh x $

==== Formule di prostaferesi

Per ampliare la comprensione delle similitudini tra le funzioni trigonometriche e quelle iperboliche, riportiamo le formule di prostaferesi:

$ cosh x + cosh y = 2 cosh((x + y) / 2) cosh((x - y) / 2) \ cosh x - cosh y = 2 sinh((x + y) / 2) sinh((x - y) / 2) \ sinh x + sinh y = 2 sinh((x + y) / 2) cosh((x - y) / 2) \ sinh x - sinh y = 2 cosh((x + y) / 2) sinh((x - y) / 2) $