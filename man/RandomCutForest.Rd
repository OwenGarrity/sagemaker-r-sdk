% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/amazon_randomcutforest.R
\name{RandomCutForest}
\alias{RandomCutForest}
\title{An unsupervised algorithm for detecting anomalous data points within a data set.}
\description{
These are observations which diverge from otherwise well-structured or patterned data.
             Anomalies can manifest as unexpected spikes in time series data, breaks in periodicity,
             or unclassifiable data points.
}
\section{Super classes}{
\code{\link[R6sagemaker:EstimatorBase]{R6sagemaker::EstimatorBase}} -> \code{\link[R6sagemaker:AmazonAlgorithmEstimatorBase]{R6sagemaker::AmazonAlgorithmEstimatorBase}} -> \code{RandomCutForest}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{repo_name}}{sagemaker repo name for framework}

\item{\code{repo_version}}{version of framework}

\item{\code{MINI_BATCH_SIZE}}{The size of each mini-batch to use when training. If None, a default value will be used.}
}
\if{html}{\out{</div>}}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{eval_metrics}}{JSON list of metrics types to be used for reporting the score for the model}

\item{\code{num_trees}}{The number of trees used in the forest.}

\item{\code{num_samples_per_tree}}{The number of samples used to build each tree in the forest.}

\item{\code{feature_dim}}{Doc string place}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{RandomCutForest$new()}}
\item \href{#method-create_model}{\code{RandomCutForest$create_model()}}
\item \href{#method-.prepare_for_training}{\code{RandomCutForest$.prepare_for_training()}}
\item \href{#method-clone}{\code{RandomCutForest$clone()}}
}
}
\if{html}{
\out{<details ><summary>Inherited methods</summary>}
\itemize{
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="attach">}\href{../../R6sagemaker/html/EstimatorBase.html#method-attach}{\code{R6sagemaker::EstimatorBase$attach()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="compile_model">}\href{../../R6sagemaker/html/EstimatorBase.html#method-compile_model}{\code{R6sagemaker::EstimatorBase$compile_model()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="delete_endpoint">}\href{../../R6sagemaker/html/EstimatorBase.html#method-delete_endpoint}{\code{R6sagemaker::EstimatorBase$delete_endpoint()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="deploy">}\href{../../R6sagemaker/html/EstimatorBase.html#method-deploy}{\code{R6sagemaker::EstimatorBase$deploy()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="enable_network_isolation">}\href{../../R6sagemaker/html/EstimatorBase.html#method-enable_network_isolation}{\code{R6sagemaker::EstimatorBase$enable_network_isolation()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="get_vpc_config">}\href{../../R6sagemaker/html/EstimatorBase.html#method-get_vpc_config}{\code{R6sagemaker::EstimatorBase$get_vpc_config()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="latest_job_debugger_artifacts_path">}\href{../../R6sagemaker/html/EstimatorBase.html#method-latest_job_debugger_artifacts_path}{\code{R6sagemaker::EstimatorBase$latest_job_debugger_artifacts_path()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="latest_job_tensorboard_artifacts_path">}\href{../../R6sagemaker/html/EstimatorBase.html#method-latest_job_tensorboard_artifacts_path}{\code{R6sagemaker::EstimatorBase$latest_job_tensorboard_artifacts_path()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="logs">}\href{../../R6sagemaker/html/EstimatorBase.html#method-logs}{\code{R6sagemaker::EstimatorBase$logs()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="print">}\href{../../R6sagemaker/html/EstimatorBase.html#method-print}{\code{R6sagemaker::EstimatorBase$print()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="transformer">}\href{../../R6sagemaker/html/EstimatorBase.html#method-transformer}{\code{R6sagemaker::EstimatorBase$transformer()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="AmazonAlgorithmEstimatorBase" data-id="fit">}\href{../../R6sagemaker/html/AmazonAlgorithmEstimatorBase.html#method-fit}{\code{R6sagemaker::AmazonAlgorithmEstimatorBase$fit()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="AmazonAlgorithmEstimatorBase" data-id="hyperparameters">}\href{../../R6sagemaker/html/AmazonAlgorithmEstimatorBase.html#method-hyperparameters}{\code{R6sagemaker::AmazonAlgorithmEstimatorBase$hyperparameters()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="AmazonAlgorithmEstimatorBase" data-id="prepare_workflow_for_training">}\href{../../R6sagemaker/html/AmazonAlgorithmEstimatorBase.html#method-prepare_workflow_for_training}{\code{R6sagemaker::AmazonAlgorithmEstimatorBase$prepare_workflow_for_training()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="AmazonAlgorithmEstimatorBase" data-id="record_set">}\href{../../R6sagemaker/html/AmazonAlgorithmEstimatorBase.html#method-record_set}{\code{R6sagemaker::AmazonAlgorithmEstimatorBase$record_set()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="AmazonAlgorithmEstimatorBase" data-id="training_image_uri">}\href{../../R6sagemaker/html/AmazonAlgorithmEstimatorBase.html#method-training_image_uri}{\code{R6sagemaker::AmazonAlgorithmEstimatorBase$training_image_uri()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="AmazonAlgorithmEstimatorBase" data-id="wait">}\href{../../R6sagemaker/html/AmazonAlgorithmEstimatorBase.html#method-wait}{\code{R6sagemaker::AmazonAlgorithmEstimatorBase$wait()}}\out{</span>}
}
\out{</details>}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
An `Estimator` class implementing a Random Cut Forest.
             Typically used for anomaly detection, this Estimator may be fit via calls to
             :meth:`~sagemaker.amazon.amazon_estimator.AmazonAlgorithmEstimatorBase.fit`.
             It requires Amazon :class:`~sagemaker.amazon.record_pb2.Record` protobuf
             serialized data to be stored in S3. There is an utility
             :meth:`~sagemaker.amazon.amazon_estimator.AmazonAlgorithmEstimatorBase.record_set`
             that can be used to upload data to S3 and creates
             :class:`~sagemaker.amazon.amazon_estimator.RecordSet` to be passed to
             the `fit` call.
             To learn more about the Amazon protobuf Record class and how to
             prepare bulk data in this format, please consult AWS technical
             documentation:
             https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-training.html
             After this Estimator is fit, model data is stored in S3. The model
             may be deployed to an Amazon SageMaker Endpoint by invoking
             :meth:`~sagemaker.amazon.estimator.EstimatorBase.deploy`. As well as
             deploying an Endpoint, deploy returns a
             :class:`~sagemaker.amazon.ntm.RandomCutForestPredictor` object that can
             be used for inference calls using the trained model hosted in the
             SageMaker Endpoint.
             RandomCutForest Estimators can be configured by setting
             hyperparameters. The available hyperparameters for RandomCutForest are
             documented below.
             For further information on the AWS Random Cut Forest algorithm,
             please consult AWS technical documentation:
             https://docs.aws.amazon.com/sagemaker/latest/dg/randomcutforest.html
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RandomCutForest$new(
  role,
  instance_count,
  instance_type,
  num_samples_per_tree = NULL,
  num_trees = NULL,
  eval_metrics = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{role}}{(str): An AWS IAM role (either name or full ARN). The Amazon
SageMaker training jobs and APIs that create Amazon SageMaker
endpoints use this role to access training data and model
artifacts. After the endpoint is created, the inference code
might use the IAM role, if accessing AWS resource.}

\item{\code{instance_count}}{(int): Number of Amazon EC2 instances to use
for training.}

\item{\code{instance_type}}{(str): Type of EC2 instance to use for training,
for example, 'ml.c4.xlarge'.}

\item{\code{num_samples_per_tree}}{(int): Optional. The number of samples used to
build each tree in the forest. The total number of samples drawn
from the train dataset is num_trees * num_samples_per_tree.}

\item{\code{num_trees}}{(int): Optional. The number of trees used in the forest.}

\item{\code{eval_metrics}}{(list): Optional. JSON list of metrics types to be used
for reporting the score for the model. Allowed values are
"accuracy", "precision_recall_fscore": positive and negative
precision, recall, and f1 scores. If test data is provided, the
score shall be reported in terms of all requested metrics.}

\item{\code{...}}{: base class keyword argument values.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-create_model"></a>}}
\if{latex}{\out{\hypertarget{method-create_model}{}}}
\subsection{Method \code{create_model()}}{
Return a :class:`~sagemaker.amazon.RandomCutForestModel` referencing
             the latest s3 model data produced by this Estimator.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RandomCutForest$create_model(vpc_config_override = "VPC_CONFIG_DEFAULT", ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{vpc_config_override}}{(dict[str, list[str]]): Optional override for VpcConfig set on
the model. Default: use subnets and security groups from this Estimator.
* 'Subnets' (list[str]): List of subnet ids.
* 'SecurityGroupIds' (list[str]): List of security group ids.}

\item{\code{...}}{: Additional kwargs passed to the RandomCutForestModel constructor.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-.prepare_for_training"></a>}}
\if{latex}{\out{\hypertarget{method-.prepare_for_training}{}}}
\subsection{Method \code{.prepare_for_training()}}{
Set hyperparameters needed for training. This method will also
             validate ``source_dir``.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RandomCutForest$.prepare_for_training(
  records,
  mini_batch_size = NULL,
  job_name = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{records}}{(RecordSet) – The records to train this Estimator on.}

\item{\code{mini_batch_size}}{(int or None) – The size of each mini-batch to use
when training. If None, a default value will be used.}

\item{\code{job_name}}{(str): Name of the training job to be created. If not
specified, one is generated, using the base name given to the
constructor if applicable.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RandomCutForest$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
