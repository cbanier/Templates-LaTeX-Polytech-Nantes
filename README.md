# Templates $\LaTeX$ Polytech Nantes

Voici un ensemble de modèles pour créer des rapports à Polytech Nantes.

Pour chaque rapport que vous créez, vous devez avoir dans votre dossier le fichier ```Polytech.cls```, votre fichier ```.tex``` et le fichier ```.cls``` correspondant au type de rapport que vous rédigez.

Votre dossier doit ressembler à ceci :

```sh
├── img
│   ├── polytech.eps
│   ├── ...
│   └── other_image.png
├── type_de_rapport.cls
├── Polytech.cls
└── rapport.tex
```

### Remarque :
Si vous écrivez un rapport assez long, il est conseillé de créer plusieurs fichiers ```.tex```.
Par exemple, pour le cahier des charges en PTRANS, votre dossier pourra ressembler à ceci :

```sh
├── CahierDesCharges
│   ├── besoins.tex
│   ├── biblio.bib
│   ├── introduction.tex
│   ├── ...
│   ├── planning.tex
│   └── risques.tex
├── img
│   ├── polytech.eps
│   ├── ...
│   └── other_image.png
├── CahierDesCharges.tex
├── PTRANS.cls
└── Polytech.cls
```

Vous devez ainsi ajouter ces quelques lignes dans votre ficher ```.tex```:

```tex
...

\begin{document}
\maketitle{img/google.png}

\section{Introduction}
\input{CahierDesCharges/introduction.tex}

...

\section{Planning}
\input{CahierDesCharges/planning.tex}

\end{document}
```