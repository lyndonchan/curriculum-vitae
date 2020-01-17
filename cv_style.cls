%%%%%%%%% cv_style %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Written By: Lyndon %%%%%%%%%%%%
%%%%%% License: The LATEX Project Public License (lppl1.3) %%%%%%
%%%%%% Version: 2017/01/07 %%%%%%%%%%%%%%%


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_style}
\LoadClassWithOptions{article}
\RequirePackage{anysize}
\RequirePackage{hyperref}

%% Define margins (LRTB)
\marginsize{0.75in}{0.75in}{0in}{1in}

\pagestyle{plain} 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  SPACING AND LINES                              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\smallspace}{
\vspace{1mm}
}
\newcommand{\medspace}{
\vspace{3mm}
}
\newcommand{\largespace}{
\vspace{5mm}
}
\newcommand{\sectionrule}{\noindent\hfil\rule{\textwidth}{.6pt}\hfil 
\vspace{-.5mm}
}
\newenvironment{ditem}{
\begin{itemize}
  \setlength{\itemsep}{1pt}
  \setlength{\parskip}{0pt}
  \setlength{\parsep}{0pt}
}{\end{itemize}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  SECTION TEMPLATES                              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\info}[5]
{\centering{
\titlefont{\uppercase{{#1}}}\\ \bigskip
\normalfont{\Telefon \ {#2} (mobile)\, $|$ \, \Letter \ \href{mailto:{#3}}{{#3}}}}\\
\Mundus \ \url{{#4}}\, $|$ \, \faGithub \ \url{{#5}}\\
\sectionrule
}

\newcommand{\sectionheading}[1]{
\begin{tcolorbox}[lowerbox=invisible,colback=gray!20]
{
\textsf{\textsc{#1}}
}
\end{tcolorbox}
\vspace{-1mm}
}
\newcommand{\subsectionheading}[1]{\noindent {\sc{#1}} 
\\
}

\newcommand{\paper}[7] {{#1} ({#2}). {#3}. \textit{#4, #5} ({#6}), {#7}.}
% 1 is authors, 2 is year, 3 is title, 4 is journal, 5 is volume, 6 is number, 7 is pages. This is useful since you don't need to type in \textit{} etc. repeatedly when typing up your resume. Grad students with many publications will especially appreciate this feature. 

%\newcommand{\myname}{\textbf{Kumar, A.}}
% so that you don't have to keep typing in \textbf{your name} for every paper you cite. 

\newcommand{\desc}[4]{\noindent\textbf{#1} \hfill{#2}\\
\begin{normalsize}
	\textcolor{gray!90}{\textit{#3}\hfill {#4}}
\end{normalsize}\\}

\newcommand{\workplace}[2]{\noindent\textbf{#1} \hfill{#2}\\}

\newcommand{\position}[2]{
\begin{normalsize}
	\textcolor{gray!90}{\textit{#1}\hfill {#2}}
\end{normalsize}\\}