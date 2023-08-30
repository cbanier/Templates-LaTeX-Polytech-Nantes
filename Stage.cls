% Auteur : Corentin Banier (cbanier.github.io)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Stage}[23/05/2023, Style pour les rapports liés aux stages]

\LoadClass{Polytech}
\usepackage[export]{adjustbox}
\usepackage{multirow}
\usepackage{array}
\usepackage{cellspace}

\setlength\cellspacetoplimit{5pt}
\setlength\cellspacebottomlimit{5pt}

\sectionfont{\fontsize{14}{10}\selectfont}
\subsectionfont{\fontsize{12}{10}\selectfont}

\newcommand{\@dateRedactionRapport}{}
\newcommand{\@dateDebutStage}{}
\newcommand{\@dateFinStage}{}
\newcommand{\@nomEntreprise}{}
\newcommand{\@adresseEntreprise}{}
\newcommand{\@lienEntreprise}{}
\newcommand{\@logoEntreprise}{}
\newcommand{\@tuteurEntreprise}{}
\newcommand{\@fonctionTuteur}{}
\newcommand{\@mailTuteur}{}
\newcommand{\@telephoneTuteur}{}
\newcommand{\@accueil}{}

\newcommand{\dateRedactionRapport}[1]{\renewcommand{\@dateRedactionRapport}{#1}}
\newcommand{\dateDebutStage}[1]{\renewcommand{\@dateDebutStage}{#1}}
\newcommand{\dateFinStage}[1]{\renewcommand{\@dateFinStage}{#1}}
\newcommand{\nomEntreprise}[1]{\renewcommand{\@nomEntreprise}{#1}}
\newcommand{\adresseEntreprise}[1]{\renewcommand{\@adresseEntreprise}{#1}}
\newcommand{\lienEntreprise}[1]{\renewcommand{\@lienEntreprise}{#1}}
\newcommand{\logoEntreprise}[1]{\renewcommand{\@logoEntreprise}{#1}}
\newcommand{\tuteurEntreprise}[1]{\renewcommand{\@tuteurEntreprise}{#1}}
\newcommand{\fonctionTuteur}[1]{\renewcommand{\@fonctionTuteur}{#1}}
\newcommand{\mailTuteur}[1]{\renewcommand{\@mailTuteur}{#1}}
\newcommand{\telephoneTuteur}[1]{\renewcommand{\@telephoneTuteur}{#1}}
\newcommand{\accueil}[1]{\renewcommand{\@accueil}{#1}}

\newcommandx{\maketitleEN}[1]{
    \suppressfloats[t]
    \begin{minipage}[t]{0.5\linewidth}
        \begin{center}
            \begin{adjustbox}{valign=t}
                \includegraphics[width=6cm]{\@logoEntreprise}
            \end{adjustbox}
        \end{center}
    \end{minipage}
    \hfill
    \begin{minipage}[t]{0.5\linewidth}
        \begin{center}
            \begin{adjustbox}{valign=t}
                \includegraphics[width=6cm]{\@logopolytech}
            \end{adjustbox}
        \end{center}
    \end{minipage}

    \vspace{5cm}

    % ---------------------------------------------------------------------------
    
    \begin{center}
        \text{\ \textcolor{darkbluePolytech}{\rule{0.9\linewidth}{1pt}}}
        \par
        \Huge{\textbf{\textcolor{darkbluePolytech}{#1th-year internship report}}}
        \par
        \vspace{0.5cm}
        \Large{\textcolor{darkbluePolytech}{\textbf{{\@sujet}}}}
        \text{\ \textcolor{darkbluePolytech}{\rule{0.9\linewidth}{1pt}}}
    
        \vspace{3cm}

        % ---------------------------------------------------------------------------
        
        \Large{\textbf{\@author}}
        \par
        \vspace{0.25cm}
        \large{
            \emph{From \@dateDebutStage}
            \emph{to \@dateFinStage}
        }
        
        \vfill
        % ---------------------------------------------------------------------------
        
        \large{
            \begin{tabular}{>{\bfseries}c c}
                Company supervisor & \@tuteurEntreprise \vspace{0.1cm}\\
                Hosting organization & \href{\@lienEntreprise}{\@nomEntreprise} \vspace{0.5cm}\\
                Academic supervisor & \@professeur \vspace{0.1cm}\\
                Educational institution & \href{https://polytech.univ-nantes.fr/en}{Polytech Nantes}\\
            \end{tabular}
        }
    \end{center}

    \pagestyle{empty}
    \clearpage
}

\newcommandx{\maketitleFR}[1]{
    \suppressfloats[t]
    \begin{minipage}[t]{0.5\linewidth}
        \begin{center}
            \begin{adjustbox}{valign=t}
                \includegraphics[width=6cm]{\@logoEntreprise}
            \end{adjustbox}
        \end{center}
    \end{minipage}
    \hfill
    \begin{minipage}[t]{0.5\linewidth}
        \begin{center}
            \begin{adjustbox}{valign=t}
                \includegraphics[width=6cm]{\@logopolytech}
            \end{adjustbox}
        \end{center}
    \end{minipage}

    \vspace{5cm}

    % ---------------------------------------------------------------------------
    
    \begin{center}
        \text{\ \textcolor{darkbluePolytech}{\rule{0.9\linewidth}{1pt}}}
        \par
        \Huge{\textbf{\textcolor{darkbluePolytech}{Rapport de stage #1\ieme{} année}}}
        \par
        \vspace{0.5cm}
        \Large{\textcolor{darkbluePolytech}{\textbf{{\@sujet}}}}
        \text{\ \textcolor{darkbluePolytech}{\rule{0.9\linewidth}{1pt}}}
    
        \vspace{3cm}

        % ---------------------------------------------------------------------------
        
        \Large{\textbf{\@author}}
        \par
        \vspace{0.25cm}
        \large{
            \emph{Du \@dateDebutStage}
            \emph{au \@dateFinStage}
        }
        
        \vfill
        % ---------------------------------------------------------------------------
        
        \large{
            \begin{tabular}{>{\bfseries}c c}
                Référent entreprise & \@tuteurEntreprise \vspace{0.1cm}\\
                Établissement d'accueil & \href{\@lienEntreprise}{\@nomEntreprise} \vspace{0.5cm}\\
                Référent académique & \@professeur \vspace{0.1cm}\\
                Établissement de formation & \href{https://polytech.univ-nantes.fr/}{Polytech Nantes}\\
            \end{tabular}
        }
    \end{center}

    \pagestyle{empty}
    \clearpage
}

\newcommandx{\rapportArrivee}[1]{
    \suppressfloats[t]
    \begin{minipage}[t]{0.6\linewidth}
        \large{\textbf{\@author}}
        \\[9pt]
        \@departement
        \\[9pt]
        \normalsize{
            Rédigé le : \@dateRedactionRapport
            \\[6pt]
            Période du {\@dateDebutStage} au \@dateFinStage
            \\[6pt]
            Référent : \@professeur
        }
    \end{minipage}
    \hfill
    \begin{minipage}[t]{0.4\linewidth}
        \begin{adjustbox}{valign=t}
            \centering
            \includegraphics[width=\linewidth]{\@logopolytech}
        \end{adjustbox}
    \end{minipage}
    
    \vspace{0.5cm}
    
    \begin{center}
        \huge{\textbf{\textcolor{darkbluePolytech}{Rapport d'arrivée stage de #1 ème année}}}
        \\[10pt]
        \begin{table}[htpb]
            \centering
            \begin{tabular}{|Sl|Sl|}
                \hline
                \@nomEntreprise & 
                \multirow{3}{*}{
                    \includegraphics[width=7.5cm]{\@logoEntreprise}
                } \\
                \begin{tabular}[c]{@{}l@{}}\@adresseEntreprise\end{tabular} &  \\
                \href{\@lienEntreprise}{Lien entreprise} &  \\ \hline
                \end{tabular}
        \end{table}
    \end{center}

    % ---------------------------------------------------------------------------
    
    \begin{center}
        \large{\textcolor{darkbluePolytech}{Informations concernant votre tuteur de stage de l’entreprise ou de l’université d’accueil}}
    \end{center}
    Prénom Nom : \@tuteurEntreprise
    \\[6pt]
    Fonction / Titre : \@fonctionTuteur
    \\[6pt]
    Adresse E-mail : \@mailTuteur
    \\[6pt]
    Téléphone: \@telephoneTuteur
    
    \vspace{0.5cm}

    % ---------------------------------------------------------------------------

    \begin{center}
        \large{\textcolor{darkbluePolytech}{Informations concernant votre sujet du stage}}
    \end{center}
    
    \underline{Sujet :} \@sujet    
    
    \vspace{0.5cm}
    
    \underline{Conditions d'accueil :} \@accueil

    \pagestyle{empty}
}