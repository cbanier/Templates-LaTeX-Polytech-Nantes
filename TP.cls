% Auteur : Corentin Banier (cbanier.github.io)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TP}[07/04/2023, Style pour les rapports de TP, etc.]

\LoadClass{Polytech}

\renewcommandx{\maketitle}{
  \suppressfloats[t]
  \par
  \begin{center}
    \if@nologo
      \else
    \includegraphics[height=4cm]{\@logopolytech}
      \fi
    \par
      \vspace{2.5cm}

    \textcolor{bluePolytech}{\LARGE{\textbf{\@matiere}}}
    \par
    \vspace{2.5cm}
    \par
    \text{\ \rule{0.9\linewidth}{1pt}}
      \Huge{\textbf{{\@title}}}
      \\[12pt]
      \large{\textbf{{\@sujet}}}
    \text{\ \rule{0.9\linewidth}{1pt}}
   \par
    \vspace{3cm}
      \Large{
        \begin{tabular}[t]{c}%
        \@author
      \end{tabular}
    }

    \par
    \vfill
    \small{\@professeur}
    \par
    \textcolor{bluePolytech}{\small\@annee}
    \vspace{0.7cm}
  \end{center}
  \thispagestyle{empty}
  \clearpage
}