% Auteur : Corentin Banier (cbanier.github.io)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{HES}[07/04/2023, Style pour les rapports de HES]

\LoadClass{Polytech}
\usepackage[export]{adjustbox}

\sectionfont{\fontsize{14}{10}\selectfont}
\subsectionfont{\fontsize{12}{10}\selectfont}

\renewcommandx{\maketitle}{
    \suppressfloats[t]
    \begin{minipage}[t]{0.6\linewidth}
        \begin{center}    
            \large{\textbf{{\@matiere}}}
            \\[7pt]
            \normalsize{\@sujet}
            \\[7pt]
            \begin{tabular}[t]{c}%
                \@author
            \end{tabular}
        \end{center}
    \end{minipage}
    \hfill
    \begin{minipage}[t]{0.3\linewidth}
        \begin{adjustbox}{valign=t}
            \centering
            \includegraphics[width=\linewidth]{\@logopolytech}
        \end{adjustbox}
    \end{minipage}

    \vspace{0.5cm}
}
