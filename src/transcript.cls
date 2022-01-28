\LoadClassWithOptions{article}

% Set page margins to 1 inch
\usepackage{geometry}
\geometry{margin=0.9in}

% Include packages for fancy header
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage{tabularx}
\usepackage[table]{xcolor}
\usepackage{csvsimple}
\usepackage{longtable}

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
\definecolor{ubcgrey2}{RGB}{151,212,233}

% Disable paragraph indent
\setlength{\parindent}{0pt}

\fancypagestyle{ubcheader}{
	% Add whitespace to bottom of header
	%\setlength{\headheight}{45pt}

	% Remove header line and reset headers
	\renewcommand{\headrulewidth}{0pt}
	\fancyhead{}

	% Logo on the left
	\lhead{
		\raisebox{-0.35\height}{
			\includegraphics[width=0.40\textwidth]{../res/logo}
		}
	}

}

% Add new commands for title page
\newcommand{\studentnumber}[1]{
	\def\thestudentnumber{#1}
}
% Necessary for \theauthor in redefined \maketitle
\usepackage{titling}

% Redefine title command to fit Co-op template
\renewcommand{\maketitle}{
	\begin{centering}
		% Manually set pagestyle for header
		\thispagestyle{ubcheader}

        {\LARGE\bfseries Grade Summary}
        \hspace{1cm}
        Name: \theauthor
        \hspace{1cm}
        Student Number: \thestudentnumber

	\end{centering}
}

% Include packages for sections
% Allow section formatting
\usepackage{sectsty}
\usepackage{titlesec}

% Allow hyperlinks (and also disable ugly bounding box around them)
\usepackage[hidelinks]{hyperref}

% Remove styling for links
\urlstyle{sf}

% Set section font
\allsectionsfont{\large\bfseries\sffamily\color{ubcgrey}}

% Remove gap between section and rule
\titlespacing\section{0pt}{11pt}{0pt}

% Remove numbering from sections
\setcounter{secnumdepth}{0}

% Define line thickness for sections
\def\secline{0.7pt}

% Begin custom templates
% Wide column
\newcolumntype{b}{X}
% Short column
\newcolumntype{s}{>{\hsize=0.3\hsize}X}

