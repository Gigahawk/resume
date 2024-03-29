\LoadClassWithOptions{article}

% Set page margins to 1 inch
\usepackage{geometry}
\geometry{margin=0.9in}

% Include packages for fancy header
%\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage{tabularx}
\usepackage{xcolor}
\usepackage{float}
\usepackage{tabularx}

% Disable page numbering
\pagenumbering{gobble}

% Allow itemlist formatting
\usepackage{enumitem}

% Allow multiline cells
\usepackage{makecell}

% Pack in list items tighter
\setlist[itemize]{noitemsep,leftmargin=*,topsep=0pt}

% Set default font to sans-serif
\renewcommand\familydefault{\sfdefault}

% Define colors
\definecolor{ubcblue}{RGB}{0,40,89}
\definecolor{ubcgrey}{RGB}{116,145,163}
\definecolor{linkcolor}{RGB}{5,12,155}

% Disable paragraph indent
\setlength{\parindent}{0pt}

% Add new commands for title page
\newcommand{\email}[1]{
	\def\theemail{#1}
}
\newcommand{\phone}[1]{
	\def\thephone{#1}
}
\newcommand{\address}[1]{
	\def\theaddress{#1}
}
\def\theextras{}
\newcommand{\extras}[1]{ % Added at bottom of title (use to add things like website or github)
	\def\theextras{#1}
}
% Necessary for \theauthor in redefined \maketitle
\usepackage{titling}

% Redefine title command to fit Co-op template
\renewcommand{\maketitle}{
	\begin{centering}
		{\huge\bfseries\theauthor\par}

		\vspace{10pt}

		Email: \href{mailto:\theemail}{\theemail} \\
		Phone: \thephone \\
		\theextras
		\par
	\end{centering}
}

% Include packages for sections
% Allow section formatting
\usepackage{sectsty}
\usepackage{titlesec}

% Allow hyperlinks (and also disable ugly bounding box around them)
\usepackage[
	colorlinks = true,
	filecolor = linkcolor,
	linkcolor = linkcolor,
	urlcolor = linkcolor,
	citecolor = linkcolor,
	anchorcolor = linkcolor
]{hyperref}

%% Remove styling for links
%\urlstyle{sf}

% Set section font
\allsectionsfont{\large\bfseries\sffamily\color{ubcgrey}}

% Remove gap between section and rule
\titlespacing\section{0pt}{11pt}{0pt}

% Remove numbering from sections
\setcounter{secnumdepth}{0}

% Define line thickness for sections
\def\secline{0.7pt}

% Begin custom sections
\newcommand{\TechnicalSkills}{
	\section{Technical Skills}
	\noindent\rule{\textwidth}{\secline}
}
\newcommand{\WorkExperience}{
    \section{Work Experience}
	\noindent\rule{\textwidth}{\secline}
}
\newcommand{\TechnicalProjects}{
	\section{Technical Projects}
	\noindent\rule{\textwidth}{\secline}
}
\newcommand{\OtherWorkExperience}{
	\section{Other Work Experience}
	\noindent\rule{\textwidth}{\secline}
}
\newcommand{\VolunteerWorkExperience}{
	\section{Volunteer Work Experience}
	\noindent\rule{\textwidth}{\secline}
}
\newcommand{\Education}{
	\section{Education}
	\noindent\rule{\textwidth}{\secline}
}
\newcommand{\ProfessionalAffiliations}{
	\section{Professional Affiliations}
	\noindent\rule{\textwidth}{\secline}
}
\newcommand{\Interests}{
	\section{Activities and Interests}
	\noindent\rule{\textwidth}{\secline}
}
\newcommand{\StudentTeams}{
	\section{Student Teams}
	\noindent\rule{\textwidth}{\secline}
}

% Begin custom templates
% Wide column
\newcolumntype{b}{X}
% Short column
\newcolumntype{s}{>{\hsize=0.3\hsize}X}

% Academic & Co-op Status {program}{academic_terms_completed}{grad_date}{work_terms_completed}{availibility}{beginning}

\newcommand{\CoopStatusFormat}[6]{
	\begin{table}[H]
		\centering
		\begin{tabularx}{\textwidth}{s b}
			\textbf{Academic Program:} &
			\textbullet\hspace{1.4pt} #1; #2 of 8 academic terms completed; % ugly hack to get this to line up properly
			\begin{itemize}[]
				\item Anticipated date of graduation: #3
			\end{itemize} \\

			\textbf{Co-op Status} &
			\textbullet\hspace{1.4pt} Completed #4/5 Work terms; available for #5 beginning #6
		\end{tabularx}
	\end{table}
}

% https://tex.stackexchange.com/questions/87830/list-delimited-by-commas-not-lines
\newenvironment{TechSkills}[1]{
    \newif\iffirst
    \firsttrue
    \renewcommand\item{
        \unskip
        \ifvmode
        \else
            \iffirst
                \firstfalse
            \else
                $\bullet$\
            \fi
        \fi
    }\textbf{#1:}
}

% Technical Project {title}{date}
\newcommand{\TechnicalProject}[2]{
    \par\vspace{6pt} % Dirty hack to make the spacing look nicer
	\noindent\large\textbf{#1} \hfill \normalsize\textbf{#2}
}

% Job {location}{date}{position}
\newcommand{\Job}[3]{
	\par\vspace{6pt} % Dirty hack to make the spacing look nicer
	\noindent\large\textbf{#1} \hfill \normalsize\textbf{#2}\\
	\noindent\textit{\textbf{#3}}
}

% School {name}{date}{program}
\newcommand{\School}[3]{
	\par\vspace{6pt} % Dirty hack to make the spacing look nicer
	\noindent\large\textbf{#1} \hfill \normalsize\textbf{#2}\\
	\noindent\textit{\textbf{#3}}
}

% Affiliation {name}{date}
\newcommand{\Affiliation}[2]{
	\par\vspace{6pt} % Dirty hack to make the spacing look nicer
	\noindent\large\textbf{#1} \hfill \normalsize\textbf{#2}
}
% Student Team {name}{date}
\newcommand{\StudentTeam}[2]{
	\par\vspace{6pt} % Dirty hack to make the spacing look nicer
	\noindent\large\textbf{#1} \hfill \normalsize\textbf{#2}
}
