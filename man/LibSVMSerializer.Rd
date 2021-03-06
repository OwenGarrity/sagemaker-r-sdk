% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/serializers.R
\name{LibSVMSerializer}
\alias{LibSVMSerializer}
\title{LibSVMSerializer Class}
\description{
Serialize data of various formats to a LibSVM-formatted string.
             The data must already be in LIBSVM file format:
             <label> <index1>:<value1> <index2>:<value2> ...
             It is suitable for sparse datasets since it does not store zero-valued
             features.
}
\section{Super class}{
\code{\link[R6sagemaker:BaseSerializer]{R6sagemaker::BaseSerializer}} -> \code{LibSVMSerializer}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{LibSVMSerializer$new()}}
\item \href{#method-serialize}{\code{LibSVMSerializer$serialize()}}
\item \href{#method-clone}{\code{LibSVMSerializer$clone()}}
}
}
\if{html}{
\out{<details open ><summary>Inherited methods</summary>}
\itemize{
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="BaseSerializer" data-id="print">}\href{../../R6sagemaker/html/BaseSerializer.html#method-print}{\code{R6sagemaker::BaseSerializer$print()}}\out{</span>}
}
\out{</details>}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Initialize Csv BaseSerializer
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LibSVMSerializer$new()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-serialize"></a>}}
\if{latex}{\out{\hypertarget{method-serialize}{}}}
\subsection{Method \code{serialize()}}{
Serialize data of various formats to a LibSVM-formatted string.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LibSVMSerializer$serialize(data)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{(object): Data to be serialized. Can be a string or a
file-like object.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
str: The data serialized as a LibSVM-formatted string.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LibSVMSerializer$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
