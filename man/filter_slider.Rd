% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/controls.R
\name{filter_slider}
\alias{filter_slider}
\alias{animation_options}
\title{Range filter control}
\usage{
filter_slider(id, label, sharedData, column, step = NULL, round = FALSE,
  ticks = TRUE, animate = FALSE, width = NULL, sep = ",", pre = NULL,
  post = NULL, timeFormat = NULL, timezone = NULL, dragRange = TRUE,
  min = NULL, max = NULL)

animation_options(interval = 1000, loop = FALSE, playButton = NULL,
  pauseButton = NULL)
}
\arguments{
\item{id}{An HTML element ID; must be unique within the web page}

\item{label}{A human-readable label}

\item{sharedData}{\code{SharedData} object with the data to filter}

\item{column}{A one-sided formula whose values will be used for this slider.
The column must be of type \code{\link{Date}}, \code{\link{POSIXt}}, or
numeric.}

\item{step}{Specifies the interval between each selectable value on the
slider (if \code{NULL}, a heuristic is used to determine the step size). If
the values are dates, \code{step} is in days; if the values are times
(POSIXt), \code{step} is in seconds.}

\item{round}{\code{TRUE} to round all values to the nearest integer;
\code{FALSE} if no rounding is desired; or an integer to round to that
number of decimal places (for example, 1 will round to the nearest 0.1, and
-2 will round to the nearest 100). Any rounding will be applied after
snapping to the nearest step.}

\item{ticks}{\code{FALSE} to hide tick marks, \code{TRUE} to show them
according to some simple heuristics.}

\item{animate}{\code{TRUE} to show simple animation controls with default
settings; \code{FALSE} not to; or a custom settings list, such as those
created using \code{\link{animationOptions}}.}

\item{width}{The width of the slider control (see
\code{\link[htmltools]{validateCssUnit}} for valid formats)}

\item{sep}{Separator between thousands places in numbers.}

\item{pre}{A prefix string to put in front of the value.}

\item{post}{A suffix string to put after the value.}

\item{timeFormat}{Only used if the values are Date or POSIXt objects. A time
format string, to be passed to the Javascript strftime library. See
\url{https://github.com/samsonjs/strftime} for more details. The allowed
format specifications are very similar, but not identical, to those for R's
\code{\link{strftime}} function. For Dates, the default is \code{"\%F"}
(like \code{"2015-07-01"}), and for POSIXt, the default is \code{"\%F \%T"}
(like \code{"2015-07-01 15:32:10"}).}

\item{timezone}{Only used if the values are POSIXt objects. A string
specifying the time zone offset for the displayed times, in the format
\code{"+HHMM"} or \code{"-HHMM"}. If \code{NULL} (the default), times will
be displayed in the browser's time zone. The value \code{"+0000"} will
result in UTC time.}

\item{dragRange}{This option is used only if it is a range slider (with two
values). If \code{TRUE} (the default), the range can be dragged. In other
words, the min and max can be dragged together. If \code{FALSE}, the range
cannot be dragged.}

\item{min}{The leftmost value of the slider. By default, set to the minimal
number in input data.}

\item{max}{The rightmost value of the slider. By default, set to the maximal
number in input data.}

\item{interval}{The interval, in milliseconds, between each animation step.}

\item{loop}{\code{TRUE} to automatically restart the animation when it
reaches the end.}

\item{playButton}{Specifies the appearance of the play button. Valid values
are a one-element character vector (for a simple text label), an HTML tag
or list of tags (using \code{\link{tag}} and friends), or raw HTML (using
\code{\link{HTML}}).}

\item{pauseButton}{Similar to \code{playButton}, but for the pause button.}
}
\description{
Creates a slider widget that lets users filter observations based on a range
of values.
}
\examples{
## Only run examples in interactive R sessions
if (interactive()) {

sd <- SharedData$new(mtcars)
filter_slider("mpg", "Miles per gallon", sd, "mpg")

}
}
