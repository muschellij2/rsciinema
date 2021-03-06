% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/asciicast.R
\name{asciicast}
\alias{asciicast}
\alias{as.asciicast}
\title{Simulate evaluation of code}
\usage{
asciicast(
  input,
  envir = parent.frame(),
  speed = 0.1,
  version = 1,
  cols = 80,
  rows = 24,
  title = "",
  ...
)

as.asciicast(data, version = 1, cols = 80, rows = 24, title = "")
}
\arguments{
\item{input}{see [evaluate::evaluate()]}

\item{envir}{see [evaluate::evaluate()]}

\item{speed}{average number of seconds used to type 1 character}

\item{version}{version of the asciicast format}

\item{cols}{terminal output width}

\item{rows}{terminal output height}

\item{title}{title of the ascii cast}

\item{...}{additional arguments to pass to [evaluate::evaluate()]}

\item{data}{a \code{data.frame} or \code{tibble} to convert
to an \code{asciicast}}
}
\description{
Simulate evaluation of code
}
\examples{
\dontrun{
asciicast( "# a comment\niris \%>\% \n  dplyr::group_by(Species) \%>\%\n  dplyr::summarise_all(mean)" )
}
input = paste0("library(magrittr); # a comment ",
"\niris \%>\% \n  dplyr::group_by(Species) \%>\%\n  ",
"dplyr::summarise_all(mean) \n # a new line")
df = asciicast(input)
as.asciicast(df)
as.asciicast(as.data.frame(df))

}
