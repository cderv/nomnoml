% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nomnoml.R
\name{nomnoml}
\alias{nomnoml}
\title{Render nomnoml diagram.}
\usage{
nomnoml(
  code = "[Hello]-[World!]",
  png = NULL,
  width = NULL,
  height = NULL,
  svg = FALSE,
  ...
)
}
\arguments{
\item{code}{The nomnoml diagram code.}

\item{png}{Optional file name to export diagram as 'png'.}

\item{width}{Optional width in pixels for the exported 'png'.}

\item{height}{Optional height in pixels for the exported 'png'.}

\item{svg}{Use 'svg' output instead of 'png'? Notice that rendering in
'svg' is not at a par with 'png' and renders incorrectly at times.}

\item{...}{Additional parameters.}
}
\description{
Renders a 'nomnoml' diagram as an 'htmlwidget' or saves it
as a 'png' image.
}
\details{
The 'nomnoml' syntax is simple and intuitive, a "Hello World"
example can be rendered as an 'htmlwidget' as follows:

\code{nomnoml::nomnoml("[Hello]-[World!]")}

You can also render as a 'png' file with specific dimensions:

\code{nomnoml::nomnoml("[Hello]-[World!]", png = "hello.png", 600, 100)}

Still, complex diagrams can be defined by combining multiple
association types, classifier types, directives and
custom classifier styles.

You can also use of the \code{nomnoml} 'knitr' chunk
to render inline diagrams in R Markdown documents.
}
\section{Association Types}{


\verb{association -}

\verb{association ->}

\verb{association <->}

\verb{dependency -->}

\verb{dependency <-->}

\verb{generalization -:>}

\verb{generalization <:-}

\verb{implementation --:>}

\verb{implementation <:--}

\verb{composition +-}

\verb{composition +->}

\verb{aggregation o-}

\verb{aggregation o->}

\verb{note --}

\verb{hidden -/-}
}

\section{Classifier Types}{


\verb{[name]}

\verb{[<abstract> name]}

\verb{[<instance> name]}

\verb{[<note> name]}

\verb{[<reference> name]}

\verb{[<package> name]}

\verb{[<frame> name]}

\verb{[<database> name]}

\verb{[<start> name]}

\verb{[<end> name]}

\verb{[<state> name]}

\verb{[<choice> name]}

\verb{[<input> name]}

\verb{[<sender> name]}

\verb{[<receiver> name]}

\verb{[<transceiver> name]}

\verb{[<actor> name]}

\verb{[<usecase> name]}

\verb{[<label> name]}

\verb{[<hidden> name]}
}

\section{Directives}{


\verb{#arrowSize: 1}

\verb{#bendSize: 0.3}

\verb{#direction: down | right}

\verb{#gutter: 5}

\verb{#edgeMargin: 0}

\verb{#edges: hard | rounded}

\verb{#fill: #eee8d5; #fdf6e3}

\verb{#fillArrows: false}

\verb{#font: Calibri}

\verb{#fontSize: 12}

\verb{#leading: 1.25}

\verb{#lineWidth: 3}

\verb{#padding: 8}

\verb{#spacing: 40}

\verb{#stroke: #33322E}

\verb{#title: filename}

\verb{#zoom: 1}
}

\section{Custom Classifier Styles}{


A directive that starts with \code{.} define a classifier style.
The style is written as a space separated list of modifiers and
key/value pairs.

\verb{#.box: fill=#8f8 dashed}

\verb{#.blob: visual=ellipse}

\verb{[<box> GreenBox]}

\verb{[<blob> HideousBlob]}

Available key/value pairs are:

\verb{fill=(any css color)}

\verb{stroke=(any css color)}

\code{align=center}

\code{align=left}

\code{direction=right}

\code{direction=down}

\code{visual=actor}

\code{visual=class}

\code{visual=database}

\code{visual=ellipse}

\code{visual=end}

\code{visual=frame}

\code{visual=hidden}

\code{visual=input}

\code{visual=none}

\code{visual=note}

\code{visual=package}

\code{visual=receiver}

\code{visual=rhomb}

\code{visual=roundrect}

\code{visual=sender}

\code{visual=start}

\code{visual=transceiver}

Available modifiers are:

\code{bold}

\code{underline}

\code{italic}

\code{dashed}

\code{empty}
}

\examples{
# Render simple diagram:
nomnoml::nomnoml("[Hello]-[World!]")

# Render complex diagram:
nomnoml::nomnoml("
  #stroke: #a86128
  [<frame>Decorator pattern|
    [<abstract>Component||+ operation()]
    [Client] depends --> [Component]
    [Decorator|- next: Component]
    [Decorator] decorates -- [ConcreteComponent]
    [Component] <:- [Decorator]
    [Component] <:- [ConcreteComponent]
  ]")

}
