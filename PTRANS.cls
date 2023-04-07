% Auteur : Corentin Banier (cbanier.github.io)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Ptrans}[15/03/2023, Style pour les rapports de Ptrans]

\LoadClass{Polytech}

% Création de nouvelles variables pour le Ptrans
\newcommand{\@logoentreprise}{\empty}
\newcommand{\@logoentreprisebis}{\empty}
\newcommand{\@nomentreprise}{\empty}
% si le nom de l'entreprise est beaucoup trop long
\newcommand{\@nomentreprisebis}{\empty} 

\newcommand{\@tuteuracademique}{\empty}
\newcommand{\@tuteurentreprise}{\empty}

% Commandes pour modifier le contenu des variables depuis un fichier .tex
\newcommand{\logoentreprise}[1]{\renewcommand{\@logoentreprise}{#1}}
\newcommand{\logoentreprisebis}[1]{\renewcommand{\@logoentreprisebis}{#1}}
\newcommand{\nomentreprise}[1]{\renewcommand{\@nomentreprise}{#1}}
\newcommand{\nomentreprisebis}[1]{\renewcommand{\@nomentreprisebis}{#1}}
\newcommand{\tuteuracademique}[1]{\renewcommand{\@tuteuracademique}{#1}}
\newcommand{\tuteurentreprise}[1]{\renewcommand{\@tuteurentreprise}{#1}}

% Definition de la commande \maketitle
\renewcommandx{\maketitle}[2][2={}]{
  \suppressfloats[t]
  \par
  \begin{center}
    \if@nologo
	  \else
    \begin{minipage}{\dimexpr\textwidth}
        \hfill
        \includegraphics[height=1.7cm]{#1}
        \hfill
        \includegraphics[height=2cm]{\@logopolytech}
        \hfill
        \@ifmtarg{#2}{}{
            \includegraphics[height=1.7cm]{#2}   
            \hfill
        }
    \end{minipage}
	  \fi

	  \vspace{5.5cm}
      \text{\ \rule{0.9\linewidth}{1pt}}
      \Huge{\textbf{{\@title}}}
      \par
      \vspace{0.5cm}
      \par
      \large{\textbf{{\@sujet}}}
      \text{\ \rule{0.9\linewidth}{1pt}}
	  \par
	  
    \vspace{2cm}
	  \LARGE{
	    \begin{tabular}[t]{c}%
        \@author
      \end{tabular}
      }
	  \par

    \vspace{2.5cm}
    \small{
      \begin{tabular}{>{\bfseries}c c}
        Matière & \@matiere \\
        Date & \today \\
        Version & \@version \vspace{0.5cm} \\
        Tuteur académique & \@tuteuracademique \vspace{0.1cm}\\
        Établissement & \@etablissement \vspace{0.5cm}\\
        Tuteur entreprise & \@tuteurentreprise \vspace{0.1cm}\\
        Entreprise & \@nomentreprise\\
        & \@nomentreprisebis 
      \end{tabular}
      }
    \par
	\vfill

  \end{center}
  % Pas de numéro de page
  \thispagestyle{empty}
  % Passe à la page suivante
  \clearpage
}



% Definition de la commande \nonplagiat
% Charte de non plagiat
\newcommandx{\nonplagiat}[4][2={},3={},4={}]{
\clearpage
\begin{center}
  {\LARGE \textcolor{bluePolytech}{\textbf{Engagement de non plagiat}}}
\end{center}

\vspace{1cm}
\@ifmtarg{#2}{Je}{Nous} \@ifmtarg{#2}{soussigné(e),}{soussignons,} #1\@ifnotmtarg{#2}{, #2}\@ifnotmtarg{#3}{, #3}\@ifnotmtarg{#4}{, #4},
\@ifmtarg{#2}{déclare}{déclarons} être pleinement conscient(e)\@ifnotmtarg{#2}{s} que le plagiat de documents ou d'une partie d'un document publiés sur toutes formes de support, y compris l'internet, constitue une violation des droits d'auteur ainsi qu'une fraude caractérisée. 

\medskip
En conséquence, \@ifmtarg{#2}{je m'engage}{nous nous engageons} à citer toutes les sources que \@ifmtarg{#2}{j'ai}{nous avons} utilisées pour produire et écrire ce rapport.

\vspace{1cm}

Fait à Nantes le \today

\vspace{1cm}

\@ifmtarg{#2}{\underline{Signature}}{\underline{Signatures}}

\hspace{1em}
\begin{tabular}[t]{c}
   #1 \\
   \@ifnotmtarg{#2}{#2\\}
   \@ifnotmtarg{#3}{#3\\}
   \@ifnotmtarg{#4}{#4\\}
\end{tabular}

\clearpage
}

% Definition de la commande \convention
% Convention
\newcommandx{\convention}[4][2={},3={},4={}]{
  \suppressfloats[t]
  \par
  \begin{center}
	  %\vspace{5.5cm}
      \Huge{\textbf{{Convention de Ptrans \@annee}}}
      \par
      \text{\ \rule{0.9\linewidth}{1pt}}
  \end{center}

  \normalsize{\textbf{Entre les soussignés :}}
  \vspace{0.3cm}

  \normalsize{\textcolor{bluePolytech}{\textbf{\@nomentreprise \@nomentreprisebis}}}
  \vspace{0.5cm}
  
  \normalsize{représentée par}
  \vspace{0.3cm}

  \normalsize{\textcolor{bluePolytech}{\@tuteurentreprise}}
  \vspace{0.3cm}

  \normalsize{d'une part,}
  \vspace{0.5cm}

  \normalsize{\textbf{Et \@ifmtarg{#2}{l'élève ingénieur}{les élèves ingénieurs} :}}
  \vspace{0.3cm}

  \normalsize{\textcolor{bluePolytech}{
    #1\@ifmtarg{#2}{}{, #2}\@ifmtarg{#3}{}{, #3}\@ifmtarg{#4}{}{, #4}
  }}
  \vspace{0.3cm}

  \normalsize{\textbf{d'autre part.}}
  \vspace{0.5cm}

  \normalsize{\textbf{Il a été convenu ce qui suit}}
  \vspace{0.3cm}

  \begin{center}
    \normalsize{Projet PTRANS de l'année scolaire \@annee}
  \end{center}

  \medskip
  \small{Les élèves ingénieurs Polytech s'engagent à respecter la confidentialité de toute 
  information transmise par l'entreprise et ne pas les divulguer en dehors du groupe 
  de travail.\newline

  Les élèves ingénieurs légueront l'ensemble de leur travail (documents et codes) sur ce projet
  en fin d'année et ne garderont que la propriété intellectuelle du code développé.\newline

  Fait à \@etablissement,
  \vspace{1cm}

  \medskip Le : \today}
  \vspace{0.3cm}

  \normalsize{\@ifmtarg{#2}{Nom et signature de l'élève ingénieur}{Noms et signatures des élèves ingénieurs}}
  \vspace{0.5cm}

  \begin{flushright}
    \large{\textit{#1}\@ifmtarg{#2}{}{, \textit{#2}}\@ifmtarg{#3}{}{, \\\textit{#3}}\@ifmtarg{#4}{}{, \textit{#4}}}
  \end{flushright} 
  
  \thispagestyle{empty}
  \clearpage
}