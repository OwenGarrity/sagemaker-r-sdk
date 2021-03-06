% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tuner.R
\name{WarmStartTypes}
\alias{WarmStartTypes}
\title{WarmStartTypes Class}
\description{
Warm Start Configuration type. There can be two types of warm start jobs:
             * IdenticalDataAndAlgorithm: Type of warm start that allows users to reuse
             training results from existing tuning jobs that have the same algorithm code
             and datasets.
             * TransferLearning: Type of warm start that allows users to
             reuse training results from existing tuning jobs that have similar algorithm
             code and datasets.
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{IDENTICAL_DATA_AND_ALGORITHM}}{Type of warm start that allows users to reuse training results from existing tuning jobs
that have the same algorithm code}

\item{\code{TRANSFER_LEARNING}}{Type of warm start that allows users to
reuse training results from existing tuning jobs that have similar algorithm code}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-clone}{\code{WarmStartTypes$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{WarmStartTypes$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
