% Auteur : Corentin Banier (cbanier.github.io)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Polytech}[07/04/2023, Style pour rapport Polytech Nantes]

\newif\if@chapter\@chapterfalse
\DeclareOption{chapter}{\@chaptertrue}
\DeclareOption{nochapter}{\@chapterfalse}

\newif\if@nologo\@nologofalse
\DeclareOption{nologo}{\@nologotrue}

\DeclareOption{10pt}{\gdef\@pt@size{10pt}}
\DeclareOption{11pt}{\gdef\@pt@size{11pt}}
\DeclareOption{12pt}{\gdef\@pt@size{12pt}}


\ExecuteOptions{french,nochapter,12pt}
\ProcessOptions\relax

\if@chapter
\LoadClass[french,a4paper,\@pt@size]{report}
\else
\LoadClass[french,a4paper,\@pt@size]{article}
\fi

\RequirePackage[utf8]{inputenc} 
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}
\RequirePackage[autostyle,french=guillemets]{csquotes}
\RequirePackage[lined,ruled,boxed,linesnumbered]{algorithm2e}
\RequirePackage{hyperref}
\RequirePackage{url}
\RequirePackage{amsmath,amsfonts,amsbsy,amssymb,mathabx,amsthm,bbm,bm} 
\RequirePackage[a4paper,top=2cm, bottom=2.5cm, left=2cm, right=2cm, foot=1.5cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{array}
\RequirePackage{xcolor}
\RequirePackage{mdframed}
\RequirePackage{ifmtarg}
\RequirePackage{xargs}
\RequirePackage{datetime}
\RequirePackage{indentfirst}
\RequirePackage{footnote}
\RequirePackage{sectsty}

\definecolor{bluePolytech}{RGB}{1,157,224}
\definecolor{darkbluePolytech}{RGB}{1,81,141}

\hypersetup{
    colorlinks=true,
    citecolor=magenta,
    linkcolor=bluePolytech,
    filecolor=darkbluePolytech,
    urlcolor=magenta,
}

% Création de variables globales
\newcommand{\@logopolytech}{img/polytech}
\newcommand{\@etablissement}{Polytech Nantes}
\newcommand{\@departement}{Informatique}
\newcommand{\@matiere}{}
\newcommand{\@sujet}{}
\newcommand{\@professeur}{}
\newcommand{\@annee}{}
\newcommand{\@version}{}

% Commandes pour modifier le contenu des variables depuis un fichier .tex
%\newcommand{\etablissement}[1]{\renewcommand{\@etablissement}{#1}}
%\newcommand{\departement}[1]{\renewcommand{\@departement}{#1}}
\newcommand{\matiere}[1]{\renewcommand{\@matiere}{#1}}
\newcommand{\sujet}[1]{\renewcommand{\@sujet}{#1}}
\newcommand{\professeur}[1]{\renewcommand{\@professeur}{#1}}
\newcommand{\annee}[1]{\renewcommand{\@annee}{#1}}
\newcommand{\version}[1]{\renewcommand{\@version}{#1}}

% Définition de la commande \maketitle
\renewcommand{\maketitle}{
  \suppressfloats[t]
  \par
  \begin{center}
    \if@nologo
	  \else
    \begin{minipage}{\dimexpr\textwidth}
        \includegraphics[height=1.8cm]{\@logocompanySec}
        \hfill
        \includegraphics[height=2cm]{\@logopolytech}
        \hfill
        \includegraphics[height=2cm]{\@logocompany}
    \end{minipage}
	  \fi

	  \vspace{5cm}
      \text{\ \rule{0.9\linewidth}{1pt}}
      \Huge{\textbf{{\@title}}}
      \text{\ \rule{0.9\linewidth}{1pt}}
	  \par
	  
    \vspace{1.5cm}
	  \LARGE{
	    \begin{tabular}[t]{c}%
        \bf\@author
      \end{tabular}
      }
	  \par

    \vspace{3cm}
    \small{
      \begin{tabular}{>{\bfseries}c c}
        Date & \today \\
        Version & \@version \vspace{0.5cm} \\
        Établissement & \@college \vspace{0.1cm}\\
        Tuteur académique & \@academictutor \vspace{0.5cm}\\
        Entreprise & \@company\\
        & \@companySec \vspace{0.1cm} \\
        Tuteur entreprise & \@companytutor
      \end{tabular}
      }
    \par
	  \vfill

    % Bottom of the page
    \textcolor{bluePolytech}{\ \rule{0.9\linewidth}{1pt}}
    \vspace{0.3cm}
	  \par
    \textcolor{bluePolytech}{\LARGE{\textbf{\@program}}}
	  \par
	  \vspace{0.1cm}  \textcolor{bluePolytech}{\large\@academicyear}
	  \par
	  \vspace{0.3cm}
    \textcolor{bluePolytech}{\Large{\textbf{\@course}}}
    \textcolor{bluePolytech}{\ \rule{0.9\linewidth}{1pt}}
    \par
	  \vspace{2cm}
  \end{center}
  % Permet de ne pas numéroté le bas de la première page
  \thispagestyle{empty}
  % Permet de passer à la page suivante
  \clearpage
}


% Definition de la commande \nonplagiat
% Charte de non plagiat
\newcommandx{\nonplagiat}[5][2={},3={},4={},5={}]{
\clearpage
\begin{center}
  {\LARGE \textcolor{bluePolytech}{\textbf{Engagement de non plagiat}}}
\end{center}

\vspace{1cm}
\@ifmtarg{#2}{Je}{Nous} \@ifmtarg{#2}{soussigné(e),}{soussignons,} #1\@ifnotmtarg{#2}{, #2}\@ifnotmtarg{#3}{, #3}\@ifnotmtarg{#4}{, #4}\@ifnotmtarg{#5}{, #5},
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
   \@ifnotmtarg{#5}{#5\\}
\end{tabular}

\clearpage
}

% definition de la commande \makeconvention
\newcommandx{\makeconvention}[3][2={},3={}]{
  \suppressfloats[t]
  \par
  \begin{center}
	  %\vspace{5.5cm}
      \Huge{\textbf{{Convention de Ptrans 2022 - 2023}}}
      \par
      \text{\ \rule{0.9\linewidth}{1pt}}
  \end{center}

  \normalsize{\textbf{Entre les soussignés :}}
  \vspace{0.3cm}

  \normalsize{\textcolor{bluePolytech}{\textbf{\@company \@companySec}}}
  \vspace{0.5cm}
  
  \normalsize{représentée par}
  \vspace{0.3cm}

  \normalsize{\textcolor{bluePolytech}{\@companytutor}}
  \vspace{0.3cm}

  \normalsize{d'une part,}
  \vspace{0.5cm}

  \normalsize{\textbf{Et \@ifmtarg{#2}{l'élève ingénieur}{les élèves ingénieurs} :}}
  \vspace{0.3cm}

  \normalsize{\textcolor{bluePolytech}{
    #1\@ifmtarg{#2}{}{,\\#2}\@ifmtarg{#3}{}{,\\#3}
  }}
  \vspace{0.3cm}

  \normalsize{\textbf{d'autre part.}}
  \vspace{0.5cm}

  \normalsize{\textbf{Il a été convenu ce qui suit}}
  \vspace{0.3cm}

  \begin{center}
    \normalsize{Projet PTRANS de septembre 2022 à mai 2023}
  \end{center}

  \medskip
  \small{Les élèves ingénieurs Polytech s'engagent à respecter la confidentialité de toute 
  information transmise par l'entreprise et ne pas les divulguer en dehors du groupe 
  de travail.\newline

  Les élèves ingénieurs légueront l'ensemble de leur travail (documents et codes) sur ce projet
  en fin d'année et ne garderont que la propriété intellectuelle du code développé.\newline

  Fait à \@college,
  \vspace{1cm}

  \medskip Le : \today}
  \vspace{0.3cm}

  \normalsize{\@ifmtarg{#2}{Nom et signature de l'élève ingénieur}{Noms et signatures des élèves ingénieurs}}
  \vspace{0.5cm}

  \begin{flushright}
    \large{\textit{#1}}
  \end{flushright} 
  
  \thispagestyle{empty}
  \clearpage
}