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