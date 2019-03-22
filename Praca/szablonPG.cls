%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                                %
%                              szablonPG.cls                                     %
%                                                                                %
% A LaTeX2e document class for Eng/BSc/MSc thesis template                       %
%                                             Gdañsk University of Technology    %
%                                                                                %
%  (c) 2016, by Jakub Maksymiuk                                                  %
%                                                                                %
%  ---- see README.txt for more details                                          %
%                                                                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% let the story begins...

%--------------------------------------------------------------------
% Identification part
%--------------------------------------------------------------------

\def\fileversion{1.0}
\def\filedate{2016/02/01}

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{szablonPG}[\filedate\space Version \fileversion\space by Jakub Maksymiuk]
\typeout{****}
\typeout{*}
\typeout{*  beta version of szablonPG - everything may change}
\typeout{*}
\typeout{****}

%--------------------------------------------------------------------
% Declaration of options
%--------------------------------------------------------------------

\newif\ifnostrict

\DeclareOption{strict}{\nostrictfalse }
\DeclareOption{nostrict}{\nostricttrue }
\ProcessOptions \relax

%--------------------------------------------------------------------
% basic class for this one is report class
%--------------------------------------------------------------------

\LoadClass[
  a4paper,                      % see (g1)
%   portrait,                     % see (g2), LaTeX default, no such option in report.cls
  10pt,                         % see (g4)
  twoside,                      % see (g9)
  notitlepage,                  % see (TP) !!!
  openright,                    % see (h1), this is common custom
]{report}

%--------------------------------------------------------------------
% language - polish by default
%--------------------------------------------------------------------

%TODO: 1. 2.
\RequirePackage{polski}
\RequirePackage[T1]{fontenc}
\RequirePackage[cp1250]{inputenc}       % other options: utf8, latin2

%--------------------------------------------------------------------
% basic font
%--------------------------------------------------------------------

%TODO: (g3), 3.
\usepackage{helvet}
\usepackage{mathpazo}
\renewcommand{\familydefault}{\sfdefault}

%--------------------------------------------------------------------
% baseline see(g5)
%--------------------------------------------------------------------

\linespread{1.3} % factor 1.3 gives ,,one and a half'' line spacing

%--------------------------------------------------------------------
% margins see (g6)
%--------------------------------------------------------------------

\RequirePackage[%
    margin=2.5cm,
    a4paper,
%     includeheadfoot,
    bindingoffset=1cm
]{geometry}

%--------------------------------------------------------------------
% paragraph indentation see (g8)
%--------------------------------------------------------------------

\usepackage{indentfirst}

\ifnostrict
    \setlength{\parindent}{1.5 em}
\else
    \setlength{\parindent}{1.25cm}
\fi

%--------------------------------------------------------------------
% pagination see (g10)
%--------------------------------------------------------------------

\pagenumbering{arabic}

\RequirePackage{fancyhdr}

\fancypagestyle{plain}{
  \fancyhf{}
  \fancyfoot[C]{\fontsize{9pt}{9pt}\selectfont\thepage}%
   \renewcommand{\headrulewidth}{0.0pt}
}

\pagestyle{plain}

%--------------------------------------------------------------------
% headings
%--------------------------------------------------------------------
\RequirePackage[explicit, clearempty]{titlesec}

% chapter
\titleformat{\chapter}[hang]                    % see (h1)
{\bfseries\fontsize{12pt}{24pt}\selectfont}
{\thechapter.\quad}
{0pt}
{\MakeUppercase{#1}}
\titlespacing*{\chapter}{0pt}{12pt}{6pt}

% section
\titleformat{\section}                          % see (h2)
{\fontsize{11pt}{22pt}\selectfont\bfseries\itshape}
{\thesection.\quad}
{0pt}
{#1}
\titlespacing{\section}{0pt}{12pt}{6pt}

% subsection
\titleformat{\subsection}                       % see (h3)
{\normalfont\itshape}
{\thesubsection.\quad}
{0pt}
{#1}
\titlespacing{\subsection}{0pt}{12pt}{6pt}

%--------------------------------------------------------------------
% TOC (see (toc1)-(toc3)
%--------------------------------------------------------------------

%TODO: 6. 7. 8.

\RequirePackage{titletoc}

\titlecontents{chapter}
    [0em] % no indentation
    {}
    {\contentslabel[\thecontentslabel.]{1.5em}} % suitable only for one-digit and a comma
    {\hspace*{-1.5em}}                          % !
    {\dotfill\contentspage}

\titlecontents{section}
    [2em] % ie, 1.5em (chapter) + 0.5em
    {}
    {\contentslabel[\thecontentslabel.]{2em}}   %two digits and two dots
    {\hspace*{-2.3em}}                          % !
    {\dotfill\contentspage}

\titlecontents{subsection}
    [5em] % ie, 2em (section) + 3em
    {}
    {\contentslabel[\thecontentslabel.]{3em}}  %three digits and three dots
    {\hspace*{-2.3em}}                          % !
    {\dotfill\contentspage}
%--------------------------------------------------------------------
% enumerate and itemize see (e1), (e2)
%--------------------------------------------------------------------

%TODO 11. 12.

\RequirePackage{enumitem}

\setenumerate{
%     labelindent=0em,
%     itemindent=\indentenit,
    topsep=1.5\parskip,
    itemsep=1.5\parskip,
    partopsep=10pt,
%     align=left
    }
\setenumerate[1]{label=\arabic*.}   % first level 1.
\setenumerate[2]{label=\alph*)}     % second level a)

\setitemize{
%     labelindent=0em,
%     itemindent=\indentenit,
    itemsep=0pt,
    topsep=0pt,
%     partopsep=0pt,
%     align=left
}

% \RequirePackage{textcomp} % for \textbullet and \textopenbullet only
% \setitemize[1]{label=\textbullet}   % first level \textbullet
% \setitemize[2]{label=\textopenbullet}     % second level \textopenbullet

%--------------------------------------------------------------------
% math
%--------------------------------------------------------------------

\RequirePackage{amsmath}
% \RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}


%%%%%%%% œrodowiska twierdznieñ %%%%%%%%
\newtheoremstyle{SPPG_th1}% hnamei
{10pt plus5pt minus2pt}% hSpace abovei
{10pt plus3pt}% hSpace belowi
{}% hBody fonti
{}% hIndent amounti1
{\bfseries}% hTheorem head fonti
{.}% hPunctuation after theorem headi
{.5em}% hSpace after theorem headi2
{}% hTheorem head spec (can be left empty, meaning `normal')i
\theoremstyle{SPPG_th1}

\newtheorem{definicja}{Definicja}[chapter]
\newtheorem{twierdzenie}[definicja]{Twierdzenie}
\newtheorem{lemat}[definicja]{Lemat}
\newtheorem{fakt}[definicja]{Fakt}
\newtheorem{wniosek}[definicja]{Wniosek}
\newtheorem{przyklad}[definicja]{Przyk³ad}

%--------------------------------------------------------------------
% pictures
%--------------------------------------------------------------------

\RequirePackage{graphicx}
%captions should be given in smaller size than main text
\RequirePackage[font=small,labelfont=bf]{caption}
\RequirePackage{subfig}
%EOF