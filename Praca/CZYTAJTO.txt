%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                                                  %
% A LaTeX2e document class for Eng/BSc/MSc thesis template                                         %
%                                             Gdañsk University of Technology                      %
%                                                                                                  %
%  (c) 2014 by Jakub Maksymiuk                                                                     %
%                                                                                                  %
% This work may be distributed and/or modified under the conditions of the LaTeX Project Public    %
% License, either version 1.3 of this license or (at your option) any later version.               %
% The latest version of this license is in                                                         %
%     http://www.latex-project.org/lppl.txt                                                        %
% and version 1.3 or later is part of all distributions of LaTeX version 2003/12/01 or later.      %
%                                                                                                  %
% This work has the LPPL maintenance status "author-maintained"                                    %
%                                                                                                  %
% This work consists of the files:                                                                 %
% - szablonPG.cls                   - class file                                                   %
% - CZYTAJTO.txt                    - this file                                                    %
% - szablonPracyPG_demo.tex         - demo source                                                  %
% - szablonPracyPG_demo.pdf         - demu output                                                  %
% - szablonPracyPG_doc.pdf          - documentation                                                %
%                                                                                                  %
% The user's guide for szablonPG.cls is in the file szablonPracyPG_doc.pdf                         %
%                                                                                                  %
% Working example can be found in /example subdirectory                                            %
%                                                                                                  %
% Jakub Maksymiuk                                                                                  %
% Faculty of Technical Phisics and Applied Mathematics                                             %
% Department of Nonlinear Analysis and Statistic                                                   %
% Gdañsk Univeristy of Technology                                                                  %
% Gabriela Narutowicza 11/12                                                                       %
% 80-233 Gdañsk                                                                                    %
%                                                                                                  %
% jmaksymiuk@mif.pg.gda.pl                                                                         %
%                                                                                                  %
% The newest version of this documentclass should always be available  from my web page:           %
%     http://www.mif.pg.gda.pl/homepages/jmaksymiuk                                                %
%                                                                                                  %
% If there's some feature that you'd like that this file doesn't provide, tell me about it.        %
%                                                                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%--------------------------------------------------------------------------------------------------%
%                                                                                                  %
%    UWAGA! UWAGA! UWAGA! UWAGA! UWAGA! UWAGA! UWAGA! UWAGA! UWAGA! UWAGA! UWAGA! UWAGA! UWAGA!    %
%                                                                                                  %
%--------------------------------------------------------------------------------------------------%

Ten plik zawiera opis klasy SzablonPracyPG od strony zgodnoœci z wymaganiami edycyjnymi. Instrukcja
obs³ugi pakietu i przyk³ad u¿ycia znajduj¹ siê w plikach:

 - szablonPracyPG_demo.tex
 - szablonPracyPG_demo.pdf
 

%--------------------------------------------------------------------------------------------------%
% List od TODO's
%       1. to allow user to select language
%       2. to allow user to select encoding (cp1250/iso8959-2/utf8)
%       ---3. to select font family equivalent to Arial and avilable
%          in common  LaTeX distributions, now we use helvet package
%           font for math is unspecified, we use mathpazo package ---
%       ---4. pagination style---
%       ---5. headings---
%       ---6. TOC: formating---
%       7. TOC: allow headings numbering greater than 9 (i.e. two-digit numbers)
%       8. TOC,h: allow adding athors in headings
%       9. table formating
%       ---10, captions formating---
%       11. itemize     make it consistent with PN
%       12. enumerate   make it consistent with PN
%       ---13. figures---
%       ---14. titlepage---
%       ---15. statement---
%       ---16. to add math enviroments---
%
%--------------------------------------------------------------------------------------------------%

%--------------------------------------------------------------------------------------------------%
%                    Changelog since version 0.5:
%--------------------------------------------------------------------------------------------------%

%--------------------------------------------------------------------------------------------------%
% Version 1.0 1/02/2016
%--------------------------------------------------------------------------------------------------%
% 11. figures and captions
% 12. documentation updated
% 13. minor typographical changes
%--------------------------------------------------------------------------------------------------%
% Version 0.9 25/02/2015
%--------------------------------------------------------------------------------------------------%
% 8. minor typographical changes
% 9. documentation added
% 10. math enviroments added
%
%--------------------------------------------------------------------------------------------------%
% Version 0.7 31/12/2014)
%--------------------------------------------------------------------------------------------------%
% 5. titlepage
%       (TP) template of titlepage is specified in
%,,Zarz¹dzenie Rektora Politechniki Gdañskiej nr 15/2014 z dnia 24 marca 2014 r.''
%
% 6. statement
%       (ST) template of copyright statement is specified in
%,,Zarz¹dzenie Rektora Politechniki Gdañskiej nr 15/2014 z dnia 24 marca 2014 r.''
%
%       for both titlepage and statement we use pdfpages package,
%       student gets pdf files from MojaPG and prepend them to main file using \incudepdf command
%       see final.tex for more details
%
%
%--------------------------------------------------------------------------------------------------%
% Version 0.5 01/06/2014
%--------------------------------------------------------------------------------------------------%

% Project starting, providing basic compatibility with
% ,,Zarz¹dzenie Rektora Politechniki Gdañskiej nr 17/2014 z 1 kwietnia 2014 r.''
% in what follows we call it ZR for short,
%
% List of requirments according to ZR:
% The first problem is that ZR fits well only for Word-like editors and do not takes into acount
% the characteristics and capabilities of LaTeX. Moreover, only basic features of Word-like
% editors are used, probably because make-it-easy-to-student is crucial
%
% 1. general reqruiments
% (g1) paper format: A4                                                                         OK
% (g2) orientation: portrait                                                                    OK
% (g3) font: Arial              ! there is no Arial font in LaTeX
% (g4) basic font size: 10pt                                                                    OK
% (g5) inter-line spacing: 1,5                                                                  OK
% (g6) margins:                                                                                 OK
%       - top: 2,5cm
%       - bottom: 2,5cm
%       - inner: 3,5cm
%       - outer: 2,5cm
% (g7) text should be justed                                            OK ! automaticaly in LaTeX
% (g8) paragraph indentation: 1,25cm                                                            OK
%
% (g9) document is prepared for two side printing                                               OK
% (g10) pagination: in footer, centered, continous, Arial (see (g3)), 9pt                       OK
% (g11)
%
%
% 2. headings                                                                                   OK
% (h1) chapter: always on new page,
%               12pt, uppercase, bold,
%               spacing before:12pt, after 6pt,
%               dot after number
%               template: 1. TITLE OF THE FIRST CHAPTER
% (h2) subchapter: 10pt, bold, italic
%               spacing before:12pt, after 6pt
%               dot after number
%               template: 1.1. Title of the first subchapter
% (h3) subsubchapter: 10pt, italic
%               spacing before:12pt, after 6pt
%               dot after number
%               template: 1.1.1. Title of the first subsubchapter
%
%
% 3. table of contents                                                          partialy, see TODO's
% (toc1) interline 1.0, spacing before:0pt, after: 6pt
% (toc2) template:
%       1. Title of the first chapter .................... pageno
%          1.1 Title of the first subchapter ............. pageno
%              1.1.1 Title of the first subsubchapter .... pageno
% (toc3) there are two wersion of TOC: if there are only one author and when
%                there is more than one
%       1. Title of the first chapter (first author) ..... pageno
%          1.1 Title of the first subchapter ............. pageno
%              1.1.1 Title of the first subsubchapter .... pageno
%       2. Title of the second chapter (second author) ... pageno
%          2.1 Title of the first subchapter ............. pageno
%              2.1.1 Title of the first subsubchapter .... pageno
%
% 4. enumeration and itemize                                                    partialy, see TODO's
%       (e1) itemize
%               - first level puncted by black circle - we use \textbullet
%               - second level puncted by empty circle - we use \textopenbullet
%               - indentation is unspecified in ZR
%       (e2) enumerate
%               - enumeration style is unspecified in ZR
%               - indentation is unspecified in ZR


% EOF