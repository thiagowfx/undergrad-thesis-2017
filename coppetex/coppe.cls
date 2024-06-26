%%
%% This is file `coppe.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% coppe.dtx  (with options: `class')
%% 
%% This is the `coppe' document class used for composition of LaTeX
%% monographs (master and PhD thesis, and PhD qualifying exams)
%% satisfying the requirements of the Coordination of Research and
%% Graduate Courses in Engineering at the Federal University of
%% Rio de Janeiro.
%% 
%% Copyright (C) 2008 Vicente Helano and George Ainsworth Jr.
%% 
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License version 3 as
%% published by the Free Software Foundation.
%% 
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
%% GNU General Public License version 3 for more details.
%% 
%% You should have received a copy of the GNU General Public License
%% version 3 along with this package (see COPYING file).
%% If not, see <http://www.gnu.org/licenses/>.
%% 
%% Author(s): Vicente Helano,
%%            George Ainsworth
%% 
%% \CheckSum{1391}
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\def\filename{coppe.dtx}
\def\fileversion{v2.1.1}
\def\filedate{2009/11/17}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{coppetex/coppe}[\filedate\ \fileversion\ COPPE Dissertations and Thesis]
\LoadClass[12pt,a4paper,oneside]{book}
\RequirePackage[sort&compress]{natbib}
\RequirePackage{hyphenat}
\RequirePackage{lastpage}
\RequirePackage{hyperref}
\RequirePackage[english,brazil]{babel}
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{eqparbox}
\RequirePackage[a4paper,bindingoffset=0.0cm,vcentering=true,%
top=2.5cm,bottom=2.5cm,left=3.0cm,right=3.0cm]{geometry}
\def\CoppeTeX{{\rm C\kern-.05em{\sc o\kern-.025em p\kern-.025em
p\kern-.025em e}}\kern-.08em
T\kern-.1667em\lower.5ex\hbox{E}\kern-.125emX\spacefactor1000}
\newboolean{isdraft}
\newboolean{maledoc}
\setboolean{maledoc}{false}
\setboolean{isdraft}{false}
\DeclareOption{grad}{%
  \newcommand{\@degree}{Engenheiro}
  \newcommand{\@degreename}{Gradua{\c c}{\~ a}o}
  \newcommand{\local@degname}{Engenheiro}
  \newcommand{\foreign@degname}{Engineer}
  \setboolean{maledoc}{true}
  \newcommand\local@doctype{Projeto}
  \newcommand\foreign@doctype{Undergraduate Project}
}
\DeclareOption{msc}{%
  \newcommand{\@degree}{M.Sc.}
  \newcommand{\@degreename}{Mestrado}
  \newcommand{\local@degname}{Mestre}
  \newcommand{\foreign@degname}{Master}
  \newcommand\local@doctype{Disserta{\c c}{\~ a}o}
  \newcommand\foreign@doctype{Dissertation}
}
\DeclareOption{dscexam}{%
  \newcommand{\@degree}{D.Sc.}
  \newcommand{\@degreename}{Doutorado}
  \newcommand{\local@degname}{Doutor}
  \newcommand{\foreign@degname}{Doctor}
  \setboolean{maledoc}{true}
  \newcommand\local@doctype{Exame de Qualifica{\c c}{\~ a}o}
  \newcommand\foreign@doctype{Qualifying Exam}
}
\DeclareOption{dsc}{%
  \newcommand{\@degree}{D.Sc.}
  \newcommand{\@degreename}{Doutorado}
  \newcommand{\local@degname}{Doutor}
  \newcommand{\foreign@degname}{Doctor}
  \newcommand\local@doctype{Tese}
  \newcommand\foreign@doctype{Thesis}
}
\DeclareOption{draft}{%
  \setboolean{isdraft}{true}
  \ClassWarning{coppe}{draft mode is ON}%
}
\DeclareOption{numbers}{%
  \PassOptionsToPackage{numbers}{natbib}
}
\DeclareOption{pdftex}{%
  \PassOptionsToPackage{pdftex}{hyperref,graphicx}
  \PassOptionsToPackage{plainpages=false,pdfpagelabels}{hyperref}
}
\DeclareOption{dvips}{%
  \PassOptionsToPackage{dvips}{hyperref,graphicx}
}
\onehalfspacing
\DeclareOption{doublespacing}{%
  \doublespacing
}
\ProcessOptions\relax
\newcommand\university[1]{%
  \renewcommand\local@universityname{#1}
}
\newcommand\department[1]{%
  \ifthenelse{\equal{#1}{PEB}}
    {\global\def\local@deptname{Engenharia Biom{\' e}dica}
     \global\def\foreign@deptname{Biomedical Engineering}}{}
  \ifthenelse{\equal{#1}{PEC}}
    {\global\def\local@deptname{Engenharia Civil}
     \global\def\foreign@deptname{Civil Engineering}}{}
  \ifthenelse{\equal{#1}{PEE}}
    {\global\def\local@deptname{Engenharia El{\' e}trica}
     \global\def\foreign@deptname{Electrical Engineering}}{}
  \ifthenelse{\equal{#1}{PEM}}
    {\global\def\local@deptname{Engenharia Mec{\^ a}nica}
     \global\def\foreign@deptname{Mechanical Engineering}}{}
  \ifthenelse{\equal{#1}{PEMM}}
    {\global\def\local@deptname{Engenharia Metal{\' u}rgica e de Materiais}
\global\def\foreign@deptname{Metallurgical and Materials Engineering}}{}
  \ifthenelse{\equal{#1}{PEN}}
    {\global\def\local@deptname{Engenharia Nuclear}
     \global\def\foreign@deptname{Nuclear Engineering}}{}
  \ifthenelse{\equal{#1}{PENO}}
    {\global\def\local@deptname{Engenharia Oce{\^ a}nica}
     \global\def\foreign@deptname{Ocean Engineering}}{}
  \ifthenelse{\equal{#1}{PPE}}
    {\global\def\local@deptname{Planejamento Energ{\' e}tico}
     \global\def\foreign@deptname{Energy Planning}}{}
  \ifthenelse{\equal{#1}{PEP}}
    {\global\def\local@deptname{Engenharia de Produ{\c c}{\~ a}o}
     \global\def\foreign@deptname{Production Engineering}}{}
  \ifthenelse{\equal{#1}{PEQ}}
    {\global\def\local@deptname{Engenharia Qu{\' i}mica}
     \global\def\foreign@deptname{Chemical Engineering}}{}
  \ifthenelse{\equal{#1}{PESC}}
    {\global\def\local@deptname{Engenharia de Sistemas e Computa{\c c}{\~ a}o}
     \global\def\foreign@deptname{Systems Engineering and Computer Science}}{}
  \ifthenelse{\equal{#1}{PET}}
    {\global\def\local@deptname{Engenharia de Transportes}
     \global\def\foreign@deptname{Transportation Engineering}}{}
}
\renewcommand\title[1]{%
  \global\def\local@title{#1}%
}
\newcommand\foreigntitle[1]{%
  \global\def\foreign@title{#1}%
}
\newcount\@advisor\@advisor0
\newcommand\advisor[4]{%
  \global\@namedef{CoppeAdvisorTitle:\expandafter\the\@advisor}{#1}
  \global\@namedef{CoppeAdvisorName:\expandafter\the\@advisor}{#2}
  \global\@namedef{CoppeAdvisorSurname:\expandafter\the\@advisor}{#3}
  \global\@namedef{CoppeAdvisorDegree:\expandafter\the\@advisor}{#4}
  \global\advance\@advisor by 1
  \ifnum\@advisor>1
    \renewcommand\local@advisorstring{Orientadores}
    \renewcommand\foreign@advisorstring{Advisors}
  \fi
}
\newcount\@examiner\@examiner0
\newcommand\examiner[3]{%
  \global\@namedef{CoppeExaminerTitle:\expandafter\the\@examiner}{#1}
  \global\@namedef{CoppeExaminerName:\expandafter\the\@examiner}{#2}
  \global\@namedef{CoppeExaminerSurname:\expandafter\the\@examiner}{#3}
  \global\advance\@examiner by 1
}
\renewcommand\author[2]{%
  \global\def\@authname{#1}
  \global\def\@authsurn{#2}
}
\renewcommand\date[2]{%
  \month=#1
  \year=#2
}
\newcommand\local@monthname{\ifcase\month\or
  Janeiro\or Fevereiro\or Mar{\c c}o\or Abril\or Maio\or Junho\or
  Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi}
\newcommand\foreign@monthname{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi}
\newcommand\place[3]{%
  \renewcommand\local@cityname{#1}
  \renewcommand\local@statename{#2}
  \renewcommand\local@countryname{#3}
}
\newcounter{keywords}
\newcommand\keyword[1]{%
  \global\@namedef{CoppeKeyword:\expandafter\the\c@keywords}{#1}
  \global\addtocounter{keywords}{1}
}

%%%%%%%%%%%%
\newcounter{foreignkeywords}
\newcommand\foreignkeyword[1]{%
  \global\@namedef{ForeignKeyword:\expandafter\the\c@foreignkeywords}{#1}
  \global\addtocounter{foreignkeywords}{1}
}
%%%%%%%%%%%%%

\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}
  \thispagestyle{empty}
  \setcounter{page}{2}
  \makefrontpage
  \clearpage
  \pagestyle{plain}
  %\makedisclaimerpage
  \clearpage
  \pagestyle{plain}
  \makecatalog
}
\renewcommand\mainmatter{%
  \immediate\write\@auxout{%
    \string\newlabel{front:pageno}{{}{\Roman{page}}{}{page.\roman{page}}{}}}
  \cleardoublepage
  \@mainmattertrue
  \pagestyle{plain}
  \pagenumbering{arabic}}
\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi}

%%%%%%%%%
%\renewcommand\maketitle{%
%\pagenumbering{alph}
%\config@hypersetup
%  \begin{titlepage}
%  \begin{flushleft}
%  \setlength\baselineskip{0pt}
%  \setlength\parskip{1mm}
%  \makebox[20mm][c]{\includegraphics{figs/minerva}}\par
%  \makebox[20mm][c]{\bf\sf\small Poli/COPPE/UFRJ}
%  \end{flushleft}
%  \begin{center}
%  \nohyphens{\MakeUppercase\local@title}\par
%  \vspace*{28mm}
%  \nohyphens{\@authname\ \@authsurn}\par
%  \end{center}
%  \vspace*{16mm}
%  \begin{flushright}
%  \begin{minipage}{80mm}
%  \frontcover@maintext
%  \end{minipage}\par
%  \vspace*{7.5mm}
%  \nohyphens{%
%  \begin{tabularx}{80mm}[b]{@{}l@{ }X@{}}
%    \local@advisorstring: &
%    \count1=0
%    \toks@={}
%    \@whilenum \count1<\@advisor \do{%
%    \ifcase\count1 % same as \ifnum0=\count1
%      \toks@=\expandafter{\csname CoppeAdvisorName:\the\count1%
%        \expandafter\endcsname\expandafter\space%
%        \csname CoppeAdvisorSurname:\the\count1\endcsname\\}
%    \else
%      \toks@=\expandafter\expandafter\expandafter{%
%        \expandafter\the\expandafter\toks@%
%        \expandafter&\expandafter\space%
%        \csname CoppeAdvisorName:\the\count1\expandafter\endcsname%
%        \expandafter\space\csname CoppeAdvisorSurname:\the\count1\endcsname\\
%      }%
%    \fi
%    \advance\count1 by 1}
%    \the\toks@
%  \end{tabularx}}\par
%  \end{flushright}
%  \vspace*{\fill}
%  \begin{center}
%  \local@cityname\par
%  \local@monthname\ de \number\year
%  \end{center}
%  \end{titlepage}
%  \global\let\maketitle\relax%
%  \global\let\and\relax}
%%%%%%%%%

\newcommand\makefrontpage{%
  \begin{center}
    \sloppy\nohyphens{\MakeUppercase\local@title}\par
    \vspace*{7mm}
    {\@authname\ \@authsurn}\par
  \end{center}\par
  \vspace*{4mm}
  \frontpage@maintext
  \vspace*{8mm}
  \noindent\local@approvedname:\par
     \begin{center}
  \begin{flushright}
        \count1=0
        \@whilenum \count1<\@examiner \do {
            \vskip26\p@ \baselineskip12pt
        \eqparbox{signture@list}{\hrulefill}\\
       \eqparbox{signture@list}{%
        \ \csname CoppeExaminerTitle:\the\count1 \endcsname
        \ \csname CoppeExaminerName:\the\count1 \endcsname,
        \ \csname CoppeExaminerSurname:\the\count1 \endcsname
        }\\
           \advance\count1 by 1}
  \end{flushright}
     \end{center}
  \vspace*{\fill}
  \frontpage@bottomtext}

%%%%%%%%%
%\newcommand\makefrontpage{%
%  \begin{center}
%    \sloppy\nohyphens{\MakeUppercase\local@title}\par
%    \vspace*{7mm}
%    {\@authname\ \@authsurn}\par
%  \end{center}\par
%  \vspace*{4mm}
%  \frontpage@maintext
%  \vspace*{8mm}
%  \noindent\local@approvedname:\par
%     \begin{center}
%  \begin{flushright}
%        \count1=0
%        \@whilenum \count1<\@examiner \do {
%            \vskip26\p@ \baselineskip12pt
%        \eqparbox{signture@list}{\hrulefill}\\
%        \eqparbox{signture@list}{\protect\centering%
%            \ \ \ \csname CoppeExaminer:\the\count1 \endcsname\ \ \ }\\
%            \advance\count1 by 1}
%  \end{flushright}
%     \end{center}
%  \vspace*{\fill}
%  \frontpage@bottomtext}
%%%%%%%%%


\renewcommand\maketitle{%
  \pagenumbering{alph}
  \config@hypersetup
  \begin{titlepage}
  \begin{flushleft}
  \vspace*{1.5mm}
  \setlength\baselineskip{0pt}
  \setlength\parskip{1mm}
  \ifprint
  \makebox[20mm][c]{\hspace{4.8cm}\includegraphics{coppetex/escola-politecnica_bw}}
  \else
  \makebox[20mm][c]{\hspace{4.8cm}\includegraphics{coppetex/escola-politecnica}}
  \fi
  \end{flushleft}
  \vspace{1.05cm}
  \begin{center}
  \nohyphens{\MakeUppercase\local@title}\par
  \vspace*{3cm}
  \nohyphens{\@authname\ \@authsurn}\par
  \end{center}
  \vspace*{2.1cm}
  \begin{flushright}
  \begin{minipage}{8.45cm}
  \frontcover@maintext
  \end{minipage}\par
  \vspace*{7.5mm}
  \nohyphens{%
  \begin{tabularx}{8.45cm}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}}
    \local@advisorstring: &
    \count1=0
    \toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
      \toks@=\expandafter{\csname CoppeAdvisorName:\the\count1%
        \expandafter\endcsname\expandafter\space%
        \csname CoppeAdvisorSurname:\the\count1\endcsname\\}
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@%
        \expandafter&\expandafter\space%
        \csname CoppeAdvisorName:\the\count1\expandafter\endcsname%
        \expandafter\space\csname CoppeAdvisorSurname:\the\count1\endcsname\\
      }%
    \fi
    \advance\count1 by 1}
    \the\toks@
  \end{tabularx}}\par
  \end{flushright}
  \vspace*{\fill}
  \begin{center}
  \local@cityname\par
  \local@monthname\ de \number\year
  \end{center}
  \end{titlepage}
  \global\let\maketitle\relax%
  \global\let\and\relax}


%\renewcommand\maketitle{%
%\pagenumbering{alph}
%\config@hypersetup
%  \begin{titlepage}
%  \begin{center}
%  Universidade Federal do Rio de Janeiro\par
%  \vspace*{5mm}
%  Escola Polit{\' e}cnica/COPPE\par
%  \vspace*{20mm}
%  \nohyphens{\large\textbf{\MakeUppercase\local@title}}\par
%  %\vspace*{28mm}
%  \vspace*{10mm}
%  \vspace*{\fill}
%  \end{center}
%  %\nohyphens{Autor: \@authname\ \@authsurn}\par
%  %Autor:\par
%  \begin{flushright}
%	\begin{flushleft}
%	\noindent Autor:\par
%	\end{flushleft}
%	%\vskip26\p@ \baselineskip12pt
%        \eqparbox{signture@list}{\hrulefill}\\
%        \eqparbox{signture@list}{\protect\centering%
%            \ \ \ \nohyphens{\@authname\ \@authsurn}\ \ \ }\\
%  \end{flushright}
%  %\end{center}
%  %\vspace*{16mm}
%  %\begin{flushright}
%  \vspace*{7.5mm}
%  \nohyphens{%
%}\par
%
%     %\begin{center}
%  %\noindent\local@advisorstring:\par
%  \begin{flushright}
%        \count1=0
%        \@whilenum \count1<\@advisor \do {
%		\begin{flushleft}
%		\noindent Orientador:\par
%		\end{flushleft}
%            %\vskip26\p@ \baselineskip12pt
%        \eqparbox{signture@list}{\hrulefill}\\
%        \eqparbox{signture@list}{\protect\centering%
%            \ \ \ \csname CoppeAdvisorTitle:\the\count1%
%        \expandafter\endcsname\expandafter\space%
%        \csname CoppeAdvisorName:\the\count1%
%        \expandafter\endcsname\expandafter\space%
%        \csname CoppeAdvisorSurname:\the\count1%
%        \expandafter\endcsname\expandafter,\expandafter\space%
%        \csname CoppeAdvisorDegree:\the\count1%
%      	\endcsname\ \ \ }\\
%            \advance\count1 by 1}
%
%  \end{flushright}
%    % \end{center}
%%%
%\vspace*{7.5mm}
%%\begin{center}
%  %\noindent\local@approvedname:\par
%
%  \begin{flushright}
%        \count1=0
%        \@whilenum \count1<\@examiner \do {
%		\begin{flushleft}
%		\noindent Examinador:\par
%		\end{flushleft}
%            %\vskip26\p@ \baselineskip12pt
%        \eqparbox{signture@list}{\hrulefill}\\
%        \eqparbox{signture@list}{\protect\centering%
%            \ \ \ \csname CoppeExaminer:\the\count1 \endcsname\ \ \ }\\
%            \advance\count1 by 1}
%  \end{flushright}
%     %\end{center}
%%%
%
%  %\end{flushright}
%  \vspace*{\fill}
%  \begin{center}
%  %\local@cityname\par
%  Poli/COPPE\par
%  \local@monthname\ de \number\year
%  \end{center}
%  \end{titlepage}
%  \global\let\maketitle\relax%
%  \global\let\and\relax}

%%%%%%%%%
%ADDED
\newcommand\makedisclaimerpage{%
  \vspace*{4mm}
  \doublespacing
  \disclaimerpage@toptext
  \vspace*{8mm}
  \vspace*{4mm}
  \onehalfspacing
  \disclaimerpage@maintext
  \vspace*{8mm}
}
%%%%%%%%%
\newcommand\config@hypersetup{%
\begingroup
  % changes to \toks@ and \count@ are kept local;
  % it's not necessary for them, but it is usually the case
  % for \count1, because the first ten counters are written
  % to the DVI file, thus you got lucky because of PDF output
  \toks@={}% in this special case not necessary
  \count@=0 %
  \@whilenum\count@<\value{keywords}\do{%
    % * a keyword separator is not necessary,
    %    if there is just one keyword
    % * \csname CoppeKeyword:\the\count@\endcsname must be expanded
    %    at least once, to get rid of the loop depended \count@
    \ifcase\count@ % same as \ifnum0=\count@
      \toks@=\expandafter{\csname CoppeKeyword:\the\count@\endcsname}%
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter;\expandafter\space
        \csname CoppeKeyword:\the\count@\endcsname
      }%
    \fi
    \advance\count@ by 1 %
  }%
  \edef\x{\endgroup
    \noexpand\hypersetup{%
      pdfkeywords={\the\toks@}%
    }%
  }%
\x
\hypersetup{%
  pdfauthor={\@authname\ \@authsurn},
  pdftitle={\local@title},
  pdfsubject={\local@doctype\ de \@degreename\ em \local@deptname\ da UFRJ/POLI -- COPPE},
  pdfcreator={LaTeX with CoppeTeX toolkit},
  breaklinks={true},
  raiselinks={true},
  pageanchor={true},
}}
\newcommand\makecatalog{%
  \vspace*{\fill}
  \begin{center}
    \setlength{\fboxsep}{5mm}
    \framebox[120mm][c]{\makebox[5mm][c]{}%
      \begin{minipage}[c]{105mm}
      \setlength{\parindent}{5mm}
      \noindent\sloppy\nohyphens\@authsurn,
      \nohyphens\@authname\par
      \nohyphens{\local@title/\@authname\ \@authsurn. -- \local@cityname:
      UFRJ/POLI -- COPPE, \number\year.}\par
      \pageref{front:pageno},
      \pageref{LastPage}
      p.\@ifundefined{r@cat:lofflag}{}{\pageref{cat:lofflag}} $29,7$cm.\par
      % There is an issue here. When the last entry must be split between lines,
      % the spacing between it and the next paragraph becomes smaller.
      % Should we manually introduce a fixed space? But how could we know that
      % a name was split? Is this happening yet?
      \nohyphens{%
      \begin{tabularx}{100mm}[b]{@{}l@{ }X@{}}
        \local@advisorstring: &
        \count1=0
        \toks@={}
        \@whilenum \count1<\@advisor \do{%
        \ifcase\count1 % same as \ifnum0=\count1
          \toks@=\expandafter{\csname CoppeAdvisorName:\the\count1%
          \expandafter\endcsname\expandafter\space%
          \csname CoppeAdvisorSurname:\the\count1\endcsname\\}
        \else
          \toks@=\expandafter\expandafter\expandafter{%
            \expandafter\the\expandafter\toks@
            \expandafter&\expandafter\space
            \csname CoppeAdvisorName:\the\count1\expandafter\endcsname%
            \expandafter\space\csname CoppeAdvisorSurname:\the\count1\endcsname\\
          }%
        \fi
        \advance\count1 by 1}
        \the\toks@
      \end{tabularx}}\par
      %\nohyphens{\local@doctype\ ({\MakeLowercase\@degreename}) --
      \nohyphens{Projeto ({\MakeLowercase\@degreename}) --
      UFRJ/ Escola Polit{\'e}cnica/ Curso de Engenharia de Computa{\c c}{\~ a}o e Informa{\c c}{\~ a}o, \number\year.}\par
      \bibname: p. \pageref{bib:begin} -- \pageref{bib:end}.\par
      \count1=0
      \count2=1
      \nohyphens{\@whilenum \count1<\value{keywords} \do {%
        \number\count2. \csname CoppeKeyword:\the\count1 \endcsname.
        \advance\count1 by 1
        \advance\count2 by 1}
      I. \csname CoppeAdvisorSurname:0\endcsname,%
      \ \csname CoppeAdvisorName:0\endcsname%
      \ifthenelse{\@advisor>1}{\ \emph{et~al.}{}}.
      II. \local@universityname, Escola Polit{\'e}cnica/ Curso de Engenharia de Computa{\c c}{\~ a}o e Informa{\c c}{\~ a}o.
      III. T{\' i}tulo.}
    \end{minipage}}
  \end{center}
  \vspace*{\fill}}
\newcommand\dedication[1]{
  \gdef\@dedic{#1}
    \cleardoublepage
    \vspace*{\fill}
    \begin{flushright}
      \begin{minipage}{60mm}
        \raggedleft \it \normalsize \@dedic
      \end{minipage}
    \end{flushright}}

\newenvironment{abstract}{%
  \clearpage
  \thispagestyle{plain}
  \abstract@toptext\par
  \vspace*{8.6mm}
  \begin{center}
    \sloppy\nohyphens{\textbf{\MakeUppercase\local@title}}\par
    \vspace*{13.2mm}
    \textbf{ \@authname\ \@authsurn }\par
    \vspace*{7mm}
    \local@monthname/\number\year
  \end{center}\par
  \vspace*{\fill}
  \noindent%
  \begin{tabularx}{\textwidth}[b]{@{}l@{ }X@{}}
    \local@advisorstring: &
    \count1=0
    \toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
      \toks@=\expandafter{\csname CoppeAdvisorName:\the\count1%
      \expandafter\endcsname\expandafter\space%
      \csname CoppeAdvisorSurname:\the\count1\endcsname\\}
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter&\expandafter\space
        \csname CoppeAdvisorName:\the\count1\expandafter\endcsname%
        \expandafter\space\csname CoppeAdvisorSurname:\the\count1\endcsname\\
      }%
    \fi
    \advance\count1 by 1}
    \the\toks@
  \end{tabularx}\par
  \vspace*{2mm}
  %\noindent\local@deptstring: \local@deptname\par
  \noindent\local@deptstring: Engenharia de Computa{\c c}{\~ a}o e Informa{\c c}{\~ a}o
  \vspace*{7mm}}{\vspace*{\fill}
%%%%%%%%%%%%%%
  \textbf{Palavras-Chave:}
  \toks@={}% in this special case not necessary
  \count@=0 %
  \@whilenum\count@<\value{keywords}\do{%
    % * a keyword separator is not necessary,
    %    if there is just one keyword
    % * \csname CoppeKeyword:\the\count@\endcsname must be expanded
    %    at least once, to get rid of the loop depended \count@
    \ifcase\count@ % same as \ifnum0=\count@
      \toks@=\expandafter{\csname CoppeKeyword:\the\count@\endcsname}%
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter,\expandafter\space
        \csname CoppeKeyword:\the\count@\endcsname
      }%
    \fi
    \advance\count@ by 1 %
  }%
  \the\toks@.
  \vspace*{\fill}
%%%%%%%%%%%%%%
}

\newenvironment{foreignabstract}{%
  \clearpage
  \thispagestyle{plain}
  \begin{otherlanguage}{english}
  \foreignabstract@toptext\par
  \vspace*{8.6mm}
  \begin{center}
    \sloppy\nohyphens{\textbf{\MakeUppercase\foreign@title}}\par
    \vspace*{13.2mm}
    \textbf{ \@authname\ \@authsurn }\par
    \vspace*{7mm}
    \foreign@monthname/\number\year
  \end{center}\par
  \vspace*{\fill}
  \noindent%
  \begin{tabularx}{\textwidth}[b]{@{}l@{ }X@{}}
    \foreign@advisorstring: &
    \count1=0
    \toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
      \toks@=\expandafter{\csname CoppeAdvisorName:\the\count1%
      \expandafter\endcsname\expandafter\space%
      \csname CoppeAdvisorSurname:\the\count1\endcsname\\}
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter&\expandafter\space
        \csname CoppeAdvisorName:\the\count1\expandafter\endcsname%
        \expandafter\space\csname CoppeAdvisorSurname:\the\count1\endcsname\\
      }%
    \fi
    \advance\count1 by 1}
    \the\toks@
  \end{tabularx}\par
  \vspace*{2mm}
  %\noindent\foreign@deptstring: \foreign@deptname\par
  \noindent\foreign@deptstring: Computer and Information Engineering
  \vspace*{7mm}}{%
  \end{otherlanguage}
  \vspace*{\fill}

%%%%%%%%%%%%%%
  \textbf{Keywords:}
  \toks@={}% in this special case not necessary
  \count@=0 %
  \@whilenum\count@<\value{foreignkeywords}\do{%
    % * a keyword separator is not necessary,
    %    if there is just one keyword
    % * \csname CoppeKeyword:\the\count@\endcsname must be expanded
    %    at least once, to get rid of the loop depended \count@
    \ifcase\count@ % same as \ifnum0=\count@
      \toks@=\expandafter{\csname ForeignKeyword:\the\count@\endcsname}%
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter,\expandafter\space
        \csname ForeignKeyword:\the\count@\endcsname
      }%
    \fi
    \advance\count@ by 1 %
  }%
  \the\toks@.
\vspace*{\fill}
%%%%%%%%%%%%%%

  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\foreign@title\@empty
  \global\let\foreign@title\relax
  \global\let\local@title\@empty
  \global\let\local@title\relax
  \global\let\author\relax
  \global\let\author\relax
  \global\let\date\relax}
\renewcommand\listoffigures{%
  \immediate\write\@auxout{%
  \string\newlabel{cat:lofflag}{{}{:~il.;}{}{page.\roman{page}}{}}}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \addcontentsline{toc}{chapter}{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
      \addcontentsline{toc}{chapter}{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\newcommand\printlosymbols{%
\renewcommand\glossaryname{\listsymbolname}%
\@input@{\jobname.los}}
\def\makelosymbols{%
  \newwrite\@losfile
  \immediate\openout\@losfile=\jobname.syx
  \def\symbl{\@bsphack\begingroup
             \@sanitize
             \@wrlos}\typeout
  {Writing index of symbols file \jobname.syx}%
  \let\makelosymbols\@empty
}
\@onlypreamble\makelosymbols
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \def\@wrlos#1#2{%
    \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
    \endgroup
    \@esphack}}{%
  \def\@wrlos#1#2{%
    \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2}{\thepage}}%
    \endgroup
    \@esphack}}}
\newcommand\printloabbreviations{%
\renewcommand\glossaryname{\listabbreviationname}%
\@input@{\jobname.lab}}
\def\makeloabbreviations{%
  \newwrite\@labfile
  \immediate\openout\@labfile=\jobname.abx
  \def\abbrev{\@bsphack\begingroup
              \@sanitize
              \@wrlab}\typeout
  {Writing index of abbreviations file \jobname.abx}%
  \let\makeloabbreviations\@empty
}
\@onlypreamble\makeloabbreviations
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
    \endgroup
    \@esphack}}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2}{\arabic{page}}}%
    \endgroup
    \@esphack}}}
\newdimen\bibindent%
\setlength\bibindent{1.5em}%
\renewenvironment{thebibliography}[1]%
     {\chapter*{\bibname}%
      \addcontentsline{toc}{chapter}{\bibname}%
      \immediate\write\@auxout{%
      \string\newlabel{bib:begin}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\setlength{\labelwidth}{0ex}%
            \setlength{\leftmargin}{9.0ex}%
            \setlength{\itemindent}{-9.0ex}%
            \advance\leftmargin\labelsep%
            \@openbib@code%
            \usecounter{enumiv}%
            \let\p@enumiv\@empty%
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy%
      \clubpenalty4000%
      \@clubpenalty \clubpenalty%
      \widowpenalty4000%
      \sfcode`\.\@m}%
     {\def\@noitemerr%
       {\@latex@warning{Empty `thebibliography' environment}}%
      \immediate\write\@auxout{%
      \string\newlabel{bib:end}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}%
      \endlist}
\newenvironment{theglossary}{%
  \if@twocolumn%
    \@restonecoltrue\onecolumn%
  \else%
    \@restonecolfalse%
  \fi%
  \@mkboth{\MakeUppercase\glossaryname}%
  {\MakeUppercase\glossaryname}%
  \chapter*{\glossaryname}%
  \addcontentsline{toc}{chapter}{\glossaryname}
  \list{}
  {\setlength{\listparindent}{0in}%
   \setlength{\labelwidth}{1.0in}%
   \setlength{\leftmargin}{1.5in}%
   \setlength{\labelsep}{0.5in}%
   \setlength{\itemindent}{0in}}%
   \sloppy}%
  {\if@restonecol\twocolumn\fi%
\endlist}
\renewenvironment{theindex}{%
  \if@twocolumn
    \@restonecolfalse
  \else
    \@restonecoltrue
  \fi
  \twocolumn[\@makeschapterhead{\indexname}]%
  \@mkboth{\MakeUppercase\indexname}%
  {\MakeUppercase\indexname}%
  \thispagestyle{plain}\parindent\z@
  \addcontentsline{toc}{chapter}{\indexname}
  \parskip\z@ \@plus .3\p@\relax
  \columnseprule \z@
  \columnsep 35\p@
  \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\glossaryname{Glossary}
\newcommand\listabbreviationname{Lista de Abreviaturas}
\newcommand\listsymbolname{Lista de S{\' i}mbolos}
\newcommand\local@advisorstring{Orientador}
\newcommand\foreign@advisorstring{Advisor}
\ifthenelse{\boolean{maledoc}}{%
  \newcommand\local@approvedname{Examinadores}%
}{%
  \newcommand\local@approvedname{Examinadores}%
}
\newcommand\local@universityname{Universidade Federal do Rio de Janeiro}
\newcommand\local@deptstring{Curso}
\newcommand\foreign@deptstring{Course}
\newcommand\local@cityname{Rio de Janeiro}
\newcommand\local@statename{RJ}
\newcommand\local@countryname{Brasil}
%TODO
\newcommand\frontcover@maintext{
  \sloppy\nohyphens{\local@doctype\ de \@degreename\
  \ifthenelse{\boolean{maledoc}}{apresentado}{apresentada}
  ao Curso de Engenharia de Computa{\c c}{\~ a}o e Informa{\c c}{\~ a}o da
  Escola Polit{\' e}cnica da Universidade Federal do Rio de
  Janeiro como parte dos requisitos necess{\' a}rios para a
  obten{\c c}{\~ a}o do grau de \local@degname\ de
  Computa{\c c}{\~ a}o e Informa{\c c}{\~ a}o.}
}
%%%%%%%%%%%
%CHANGED
\newcommand\frontpage@maintext{
  \noindent {\MakeUppercase\local@doctype}
  \ifthenelse{\boolean{maledoc}}{SUBMETIDO}{SUBMETIDA}
  \sloppy\nohyphens{AO CORPO DOCENTE DO CURSO DE ENGENHARIA DE
  COMPUTA{\c C}{\~ A}O E INFORMA{\c C}{\~ A}O DA ESCOLA POLIT{\' E}CNICA DA
  UNIVERSIDADE FEDERAL DO RIO DE JANEIRO COMO PARTE DOS REQUISITOS NECESS{\' A}RIOS PARA A
  OBTEN{\c C}{\~ A}O DO GRAU DE {\MakeUppercase\local@degname} DE
  COMPUTA{\c C}{\~ A}O E INFORMA{\c C}{\~ A}O.\par}%
}
\newcommand\frontpage@bottomtext{%
  \begin{center}
  {\MakeUppercase{\local@cityname, \local@statename\ -- \local@countryname}}\par
  {\MakeUppercase\local@monthname\ DE \number\year}
  \end{center}%
}
%%%%%%%%%%%
%ADDED
\newcommand\disclaimerpage@toptext{
  \noindent UNIVERSIDADE FEDERAL DO RIO DE JANEIRO

  \noindent Escola Polit{\' e}cnica - Departamento de Eletr{\^ o}nica e Computa{\c c}{\~ a}o

  \noindent Centro de Tecnologia, bloco H, sala H-217, Cidade Universit{\' a}ria

  \noindent Rio de Janeiro - RJ CEP 21949-900

}
\newcommand\disclaimerpage@maintext{
Este exemplar {\' e} de propriedade da Universidade Federal do Rio de Janeiro, que poder{\' a} inclu{\' i}-lo em base de dados, armazenar em computador, microfilmar ou adotar qualquer forma de arquivamento.

{\' E} permitida a men{\c c}{\~ a}o, reprodu{\c c}{\~ a}o parcial ou integral e a transmiss{\~ a}o entre bibliotecas deste trabalho, sem modifica{\c c}{\~ a}o de seu texto, em qualquer meio que esteja ou venha a ser fixado, para pesquisa acad{\^ e}mica, coment{\' a}rios e cita{\c c}{\~ o}es, desde que sem finalidade comercial e que seja feita a refer{\^ e}ncia bibliogr{\' a}fica completa.

Os conceitos expressos neste trabalho s{\~ a}o de responsabilidade do(s) autor(es) e
do(s) orientador(es).
}
%%%%%%%%%%%

\newcommand\abstract@toptext{%
  \noindent Resumo \ifthenelse{\boolean{maledoc}}{do}{da}
  \local@doctype\ de \@degreename\  \ifthenelse{\boolean{maledoc}}{apresentado}{apresentada}
  \sloppy\nohyphens{{\` a} Escola Polit{\' e}cnica/COPPE/UFRJ como parte dos requisitos
  necess{\' a}rios para a obten{\c c}{\~ a}o do grau de
  \local@degname\ de Computa{\c c}{\~ a}o e Informa{\c c}{\~ a}o.}
}
\newcommand\foreignabstract@toptext{%
  \noindent \sloppy\nohyphens{Abstract of the \foreign@doctype\ presented to
  Poli/COPPE/UFRJ as a partial fulfillment of the requirements for the
  degree of Computer and Information \foreign@degname\@.}
}
%% 
%%
%% End of file `coppe.cls'.
