%%
%%
%%  作者： 自动化所自由软件协会 尚书林 左年明
%%
%% Copyright (C) 2006 by SHANG Shulin<shangsl@gmail.com>， 
%%                       ZUO Nianming<nianming@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%%  
%% Here we say thanks to cwang.ustc@gmail.com for telling us and fix the bug that
%% AAS can display fangsong font correctly

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aas}[2006/04/24 v0.3 AAS CJK LaTeX template class] % Need to be changed with new release
%
\LoadClass[a4paper, 10pt,twocolumn,twoside,final]{article}
\RequirePackage{ifthen}
\usepackage{flushend}
\RequirePackage{ctex}
\RequirePackage{picins}
\RequirePackage{calc}
%
%
%%--------PAGE FORMAT---------%%
\setlength{\topmargin}{0mm}
\setlength{\headsep}{15pt}  % 页眉底 与正文上面之间的距离
\setlength{\headheight}{6mm}
\setlength{\oddsidemargin}{-7mm}
\setlength{\evensidemargin}{-7mm}
\setlength{\voffset}{-0.40in}   % one inch + \voffset 页眉顶到页顶的距离
\setlength{\hoffset}{0mm}
\setlength{\footskip}{3.5em}
\setlength{\columnsep}{6mm} % 设置两栏之间的间距

\textwidth \paperwidth%
\textheight \paperheight%
\addtolength\textwidth{-38mm} 
\addtolength\textheight{-62mm} 
% extra vertical space between paragraphs normally
\setlength{\parskip}{0mm}
% extra vertical space between paragraphs within a list item
%\setlength{\parsep}{0mm}

%% 下面两条命令设定displaymath与上下文的间距
\setlength{\abovedisplayskip}{8pt plus 2pt minus 2.5pt}
\setlength{\belowdisplayskip}{8pt plus 2pt minus 2.5pt}

\setlength{\doublerulesep}{0.5pt}

%% 行距
\renewcommand{\baselinestretch}{1.15} % 1.22 --- 1.25倍行距
\renewcommand{\arraystretch}{1.16}
%
%%------------ Define font -----------------%%
\newcommand{\song}{\songti}    % 宋体
\newcommand{\fs}{\fangsong}    % 仿宋体
\newcommand{\kai}{\kaishu}      % 楷体
\newcommand{\hei}{\heiti}      % 黑体
\newcommand{\li}{\lishu}        % 隶书
\newcommand{\you}{\youyuan}      % 幼圆

\newlength\aas@linespace
\newcommand{\aas@choosefont}[3]{%
   \setlength{\aas@linespace}{#1*\real{\baselinestretch}}%
   \fontsize{#1}{\aas@linespace plus#2 minus #3}\selectfont}
%
% 参考 thuthesishe和http://bbs.ctex.org/forums/index.php?showtopic=23862
% 1 in = 72 bp = 72.27 pt
% 采用bp符合WORD的大小规范
% 实际TeX采用pt
\renewcommand\zihao[1]{%
   \ifthenelse{\equal{#1}{0}}{%
       \aas@choosefont{42bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{0-}}{%
       \aas@choosefont{36bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{1}}{%
       \aas@choosefont{26bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{1-}}{%
       \aas@choosefont{24bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{2}}{%
       \aas@choosefont{22bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{2-}}{%
       \aas@choosefont{18bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{3}}{%
       \aas@choosefont{16bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{3-}}{%
       \aas@choosefont{15bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{4}}{%
       \aas@choosefont{14bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{4-}}{%
       \aas@choosefont{12bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{5}}{%
       \aas@choosefont{10.5bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{5-}}{%
       \aas@choosefont{9bp}{.2pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{6}}{%
       \aas@choosefont{7.5bp}{.2pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{6-}}{%
       \aas@choosefont{6.5bp}{.2pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{7}}{%
       \aas@choosefont{5.5bp}{.1pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{8}}{%
       \aas@choosefont{5bp}{.1pt}{.1pt}}{}}

%%----- Redefine \tiny \scriptsize \footnotesize\small ----------%%
%%-------------------------\normalsize --------------------------%%
%%---------------\large \Large \LARGE \huge \Huge ---------------%%
%% Refer to ctex
\def\tiny{\zihao{7}}
\def\scriptsize{\zihao{6-}}
\def\footnotesize{\zihao{6}}
\def\small{\zihao{5-}}
\def\normalsize{\zihao{5}}%
\def\large{\zihao{4-}}%
\def\Large{\zihao{3-}}%
\def\LARGE{\zihao{2-}}%
\def\huge{\zihao{2}}%
\def\Huge{\zihao{1}}%
\normalsize % make \baselinestretch take affect
% 改文献的序号[1]为 1
\renewcommand{\@biblabel}[1]{#1}
% 使整篇文章的首段都有缩进
\let\@afterindentfalse\@afterindenttrue\@afterindenttrue
% 参考文献号上标显示
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa, #2\fi}]}}
%
% 两脚注间的竖直距离
\setlength{\footnotesep}{0pt}
% 重新定义 脚注条
\def\footnoterule{\kern-3\p@ \hrule width .7\columnwidth height 0.4pt \kern 2.6\p@}
%
%%-------- maketitle --------%%
%
\newcommand{\cntitle}[1]{\gdef\aas@cntitle{{\zihao{2-}\hei #1}}}
\newcommand{\cnauthor}[1]{\gdef\aas@cnauthor{\zihao{4-} \fs #1}}
\newcommand{\doi}[1]{\gdef\aas@doi{{\noindent\small {\bf DOI}\quad #1}}}
%
\newcommand{\entitle}[1]{\gdef\aas@entitle{{\large\bf #1}}}
\newcommand{\enauthor}[1]{\gdef\aas@enauthor{\small #1}}
\newcommand{\enaddress}[1]{\gdef\aas@enaddress{{\noindent\small {\bf Citation}\quad #1}}}
\newcommand{\email}[1]{\gdef\aas@email{{\centering\footnotesize (E-mail: #1)}}}
\newcommand{\enabstract}[1]{\gdef\aas@enabstract{{\noindent \small {\bf Abstract}\quad #1}}}
\newcommand{\enkeyword}[1]{\gdef\aas@enkeyword{{\noindent \small {\bf Key words}\quad #1}}}
%
\renewcommand{\refname}{\centering \normalsize \bf References}
%
\renewcommand{\maketitle}{\par
 \begingroup
  \def\thefootnote{}%  the \thanks{} mark type is empty
  \def\footnotemark{}% and kill space from \thanks within author
   \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
   \long\def\@makefntext##1{\parindent 1em\noindent
           \hb@xt@0.5em{%
               \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
   \twocolumn[\@maketitle]%
   \thispagestyle{aas@firstheadings}%ssl
   \@thanks%
 \endgroup%
 \setcounter{footnote}{0}%
 \global\let\thanks\relax%
 \global\let\maketitle\relax%
 \global\let\@maketitle\relax%
 \global\let\@thanks\@empty%
 \global\let\@author\@empty%
 \global\let\@title\@empty%
 \global\let\title\relax%
 \global\let\author\relax%
 \global\let\and\relax%
%
 \global\let\aas@cntitle\relax%
 \global\let\aas@cnauthor\relax%
 \global\let\aas@cnaddress\relax%
 \global\let\aas@cnabstract\relax%
 \global\let\aas@cnkeyword\relax%
 \global\let\aas@doi\relax%
%
 \global\let\cntitle\relax%
 \global\let\cnauthor\relax%
 \global\let\cnaddress\relax%
 \global\let\cnabstract\relax%
 \global\let\cnkeyword\relax%
 \global\let\cncl\relax%
 \global\let\email\relax%
 \global\let\doi\relax%
%
 \global\let\aas@entitle\relax%
 \global\let\aas@enauthor\relax%
 \global\let\aas@enaddress\relax%
 \global\let\aas@enabstract\relax%
 \global\let\aas@enkeyword\relax%
%
 \global\let\entitle\relax%
 \global\let\enauthor\relax%
 \global\let\enaddress\relax%
 \global\let\enabstract\relax%
 \global\let\enkeyword\relax%
}
%
\def\@maketitle{%
    \let\footnote\thanks%
    \newpage\null% an empty hbox
    \vskip 1.0\baselineskip%
    {\centering%
    {\aas@cntitle\par}%
    {%\vskip 0.8em%
    \vskip 0.8\baselineskip%
     \begin{tabular}[t]{c}%
     \aas@cnauthor%
     \end{tabular}%
     \vskip 0.3em%
     \par%
     }%
     \vskip 0.2\baselineskip}%
    {\linespread{1.0}\selectfont\cabstract\par%
    \vskip 0.2\baselineskip%
    \ckeyword\par%
    \vskip 0.2\baselineskip%
    \caddress\par%  
    \vskip 0.2\baselineskip% 
    \aas@doi\par
    }%
    \vskip 0.7\baselineskip%
    {\centering%
    {\aas@entitle\par}%
    {%\vskip 1.2em%
    \vskip 0.5\baselineskip%
    \begin{tabular}[t]{c}%
    \aas@enauthor%
    \end{tabular}%
    \vskip 0.3em%
    \par%
    }%
    \vskip 0.2\baselineskip}%
    {\linespread{1.0}\selectfont\aas@enabstract\par%
    \vskip 0.2\baselineskip%
    \aas@enkeyword\par%
    \vskip 0.2\baselineskip%
    \aas@enaddress\par%    
    }%
    \vskip 1.5\baselineskip%
}
%%---------------- Define biography ----------------%%s
\newenvironment{biography}[1][]{
\vskip 0.4\baselineskip%
\zihao{5-}
\parpic{%
\includegraphics[height=3.0cm,width=2.4cm, keepaspectratio]{#1}}%
}{\vskip 0.4\baselineskip\par}


%% For author who has no photo
\newenvironment{biographynophoto}{\vskip 0.4\baselineskip\zihao{5-}}{\vskip 0.4\baselineskip\par}

%%---------------- Redefine section -----------------%%
\setcounter{secnumdepth}{3}

\renewcommand\thesection {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-1.5ex \@plus -.2ex \@minus -.2ex}%
                                   {1.5ex \@plus.2ex}%
                                   {\zihao{4-}\hei}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-1.0ex \@plus -.2ex \@minus -.2ex}%
                                     {1.0ex \@plus .2ex}%                
                                     {\zihao{5}\hei}}
 
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-0.5ex \@plus -.2ex \@minus -.2ex}%
                                     {0.5ex \@plus .2ex}%                
                                     {\normalsize\hei}}
\renewcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}
%
%%-------- Set the begin and end method for class -----%%
\AtBeginDocument{%
   \flushend
   \input{Style/aas.cfg}%
   \captiondelim{ } % 把图标题中缺省的分隔符 ``:''改为空
   \captionnamefont{\small}%
   \captiontitlefont{\small}%
   \sloppy\CTEXindent
   }
\AtEndDocument{\clearpage}

\endinput
%%-------- The end of aas.cls -------------%%
