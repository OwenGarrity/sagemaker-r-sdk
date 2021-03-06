% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/algorithm.R
\name{AlgorithmEstimator}
\alias{AlgorithmEstimator}
\title{AlgorithmEstimator Class}
\description{
A generic Estimator to train using any algorithm object (with an
             ``algorithm_arn``). The Algorithm can be your own, or any Algorithm from AWS
             Marketplace that you have a valid subscription for. This class will perform
             client-side validation on all the inputs.
}
\section{Super class}{
\code{\link[R6sagemaker:EstimatorBase]{R6sagemaker::EstimatorBase}} -> \code{AlgorithmEstimator}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{.hyperpameters_with_range}}{These Hyperparameter Types have a range definition.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{AlgorithmEstimator$new()}}
\item \href{#method-validate_train_spec}{\code{AlgorithmEstimator$validate_train_spec()}}
\item \href{#method-set_hyperparameter}{\code{AlgorithmEstimator$set_hyperparameter()}}
\item \href{#method-hyperparameters}{\code{AlgorithmEstimator$hyperparameters()}}
\item \href{#method-training_image_uri}{\code{AlgorithmEstimator$training_image_uri()}}
\item \href{#method-enable_network_isolation}{\code{AlgorithmEstimator$enable_network_isolation()}}
\item \href{#method-create_model}{\code{AlgorithmEstimator$create_model()}}
\item \href{#method-transformer}{\code{AlgorithmEstimator$transformer()}}
\item \href{#method-fit}{\code{AlgorithmEstimator$fit()}}
\item \href{#method-print}{\code{AlgorithmEstimator$print()}}
\item \href{#method-clone}{\code{AlgorithmEstimator$clone()}}
}
}
\if{html}{
\out{<details ><summary>Inherited methods</summary>}
\itemize{
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id=".prepare_for_training">}\href{../../R6sagemaker/html/EstimatorBase.html#method-.prepare_for_training}{\code{R6sagemaker::EstimatorBase$.prepare_for_training()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="attach">}\href{../../R6sagemaker/html/EstimatorBase.html#method-attach}{\code{R6sagemaker::EstimatorBase$attach()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="compile_model">}\href{../../R6sagemaker/html/EstimatorBase.html#method-compile_model}{\code{R6sagemaker::EstimatorBase$compile_model()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="delete_endpoint">}\href{../../R6sagemaker/html/EstimatorBase.html#method-delete_endpoint}{\code{R6sagemaker::EstimatorBase$delete_endpoint()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="deploy">}\href{../../R6sagemaker/html/EstimatorBase.html#method-deploy}{\code{R6sagemaker::EstimatorBase$deploy()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="get_vpc_config">}\href{../../R6sagemaker/html/EstimatorBase.html#method-get_vpc_config}{\code{R6sagemaker::EstimatorBase$get_vpc_config()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="latest_job_debugger_artifacts_path">}\href{../../R6sagemaker/html/EstimatorBase.html#method-latest_job_debugger_artifacts_path}{\code{R6sagemaker::EstimatorBase$latest_job_debugger_artifacts_path()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="latest_job_tensorboard_artifacts_path">}\href{../../R6sagemaker/html/EstimatorBase.html#method-latest_job_tensorboard_artifacts_path}{\code{R6sagemaker::EstimatorBase$latest_job_tensorboard_artifacts_path()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="logs">}\href{../../R6sagemaker/html/EstimatorBase.html#method-logs}{\code{R6sagemaker::EstimatorBase$logs()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="prepare_workflow_for_training">}\href{../../R6sagemaker/html/EstimatorBase.html#method-prepare_workflow_for_training}{\code{R6sagemaker::EstimatorBase$prepare_workflow_for_training()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="wait">}\href{../../R6sagemaker/html/EstimatorBase.html#method-wait}{\code{R6sagemaker::EstimatorBase$wait()}}\out{</span>}
}
\out{</details>}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Initialize an ``AlgorithmEstimator`` instance.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlgorithmEstimator$new(
  algorithm_arn,
  role,
  instance_count,
  instance_type,
  volume_size = 30,
  volume_kms_key = NULL,
  max_run = 24 * 60 * 60,
  input_mode = "File",
  output_path = NULL,
  output_kms_key = NULL,
  base_job_name = NULL,
  sagemaker_session = NULL,
  hyperparameters = NULL,
  tags = NULL,
  subnets = NULL,
  security_group_ids = NULL,
  model_uri = NULL,
  model_channel_name = "model",
  metric_definitions = NULL,
  encrypt_inter_container_traffic = FALSE,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{algorithm_arn}}{(str): algorithm arn used for training. Can be just the name if your
account owns the algorithm.}

\item{\code{role}}{(str): An AWS IAM role (either name or full ARN). The Amazon SageMaker
training jobs and APIs that create Amazon SageMaker endpoints use this role to
access training data and model artifacts. After the endpoint
is created, the inference code might use the IAM role, if it
needs to access an AWS resource.}

\item{\code{instance_count}}{(int): Number of Amazon EC2 instances to
use for training.}

\item{\code{instance_type}}{(str): Type of EC2
instance to use for training, for example, 'ml.c4.xlarge'.}

\item{\code{volume_size}}{(int): Size in GB of the EBS volume to use for
storing input data during training (default: 30). Must be large enough to store
training data if File Mode is used (which is the default).}

\item{\code{volume_kms_key}}{(str): Optional. KMS key ID for encrypting EBS volume attached
to the training instance (default: NULL).}

\item{\code{max_run}}{(int): Timeout in seconds for training (default: 24 * 60 * 60).
After this amount of time Amazon SageMaker terminates the
job regardless of its current status.}

\item{\code{input_mode}}{(str): The input mode that the algorithm supports
(default: 'File'). Valid modes:
* 'File' - Amazon SageMaker copies the training dataset from
the S3 location to a local directory.
* 'Pipe' - Amazon SageMaker streams data directly from S3 to
the container via a Unix-named pipe.
This argument can be overriden on a per-channel basis using
``TrainingInput.input_mode``.}

\item{\code{output_path}}{(str): S3 location for saving the training result (model artifacts and
output files). If not specified, results are stored to a default bucket. If
the bucket with the specific name does not exist, the
estimator creates the bucket during the
:meth:`~sagemaker.estimator.EstimatorBase.fit` method
execution.}

\item{\code{output_kms_key}}{(str): Optional. KMS key ID for encrypting the
training output (default: NULL).}

\item{\code{base_job_name}}{(str): Prefix for
training job name when the
:meth:`~sagemaker.estimator.EstimatorBase.fit`
method launches. If not specified, the estimator generates a
default job name, based on the training image name and
current timestamp.}

\item{\code{sagemaker_session}}{(sagemaker.session.Session): Session object which manages
interactions with Amazon SageMaker APIs and any other AWS services needed. If
not specified, the estimator creates one using the default
AWS configuration chain.}

\item{\code{hyperparameters}}{(dict): Dictionary containing the hyperparameters to
initialize this estimator with.}

\item{\code{tags}}{(list[dict]): List of tags for labeling a training job. For more, see
https://docs.aws.amazon.com/sagemaker/latest/dg/API_Tag.html.}

\item{\code{subnets}}{(list[str]): List of subnet ids. If not specified
training job will be created without VPC config.}

\item{\code{security_group_ids}}{(list[str]): List of security group ids. If
not specified training job will be created without VPC config.}

\item{\code{model_uri}}{(str): URI where a pre-trained model is stored, either locally or in S3
(default: NULL). If specified, the estimator will create a channel pointing to
the model so the training job can download it. This model
can be a 'model.tar.gz' from a previous training job, or
other artifacts coming from a different source.
More information:
https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-training.html#td-deserialization}

\item{\code{model_channel_name}}{(str): Name of the channel where 'model_uri'
will be downloaded (default: 'model').}

\item{\code{metric_definitions}}{(list[dict]): A list of dictionaries that defines the metric(s)
used to evaluate the training jobs. Each dictionary contains two keys: 'Name' for
the name of the metric, and 'Regex' for the regular
expression used to extract the metric from the logs.}

\item{\code{encrypt_inter_container_traffic}}{(bool): Specifies whether traffic between training
containers is encrypted for the training job (default: ``False``).}

\item{\code{...}}{: Additional kwargs. This is unused. It's only added for AlgorithmEstimator
to ignore the irrelevant arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-validate_train_spec"></a>}}
\if{latex}{\out{\hypertarget{method-validate_train_spec}{}}}
\subsection{Method \code{validate_train_spec()}}{
Placeholder docstring
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlgorithmEstimator$validate_train_spec()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-set_hyperparameter"></a>}}
\if{latex}{\out{\hypertarget{method-set_hyperparameter}{}}}
\subsection{Method \code{set_hyperparameter()}}{
formats hyperparameters for model tunning
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlgorithmEstimator$set_hyperparameter(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{model hyperparameters}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-hyperparameters"></a>}}
\if{latex}{\out{\hypertarget{method-hyperparameters}{}}}
\subsection{Method \code{hyperparameters()}}{
Returns the hyperparameters as a dictionary to use for training.
             The fit() method, that does the model training, calls this method to
             find the hyperparameters you specified.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlgorithmEstimator$hyperparameters()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-training_image_uri"></a>}}
\if{latex}{\out{\hypertarget{method-training_image_uri}{}}}
\subsection{Method \code{training_image_uri()}}{
Returns the docker image to use for training.
             The fit() method, that does the model training, calls this method to
             find the image to use for model training.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlgorithmEstimator$training_image_uri()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-enable_network_isolation"></a>}}
\if{latex}{\out{\hypertarget{method-enable_network_isolation}{}}}
\subsection{Method \code{enable_network_isolation()}}{
Return True if this Estimator will need network isolation to run.
             On Algorithm Estimators this depends on the algorithm being used. If
             this is algorithm owned by your account it will be False. If this is an
             an algorithm consumed from Marketplace it will be True.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlgorithmEstimator$enable_network_isolation()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
bool: Whether this Estimator needs network isolation or not.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-create_model"></a>}}
\if{latex}{\out{\hypertarget{method-create_model}{}}}
\subsection{Method \code{create_model()}}{
Create a model to deploy.
             The serializer, deserializer, content_type, and accept arguments are
             only used to define a default Predictor They are ignored if an
             explicit predictor class is passed in. Other arguments are passed
             through to the Model class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlgorithmEstimator$create_model(
  role = NULL,
  predictor_cls = NULL,
  serializer = NULL,
  deserializer = NULL,
  content_type = NULL,
  accept = NULL,
  vpc_config_override = "VPC_CONFIG_DEFAULT",
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{role}}{(str): The ``ExecutionRoleArn`` IAM Role ARN for the ``Model``,
which is also used during transform jobs. If not specified, the
role from the Estimator will be used.}

\item{\code{predictor_cls}}{(RealTimePredictor): The predictor class to use when
deploying the model.}

\item{\code{serializer}}{(callable): Should accept a single argument, the input
data, and return a sequence of bytes. May provide a content_type
attribute that defines the endpoint request content type}

\item{\code{deserializer}}{(callable): Should accept two arguments, the result
data and the response content type, and return a sequence of
bytes. May provide a content_type attribute that defines the
endpoint response Accept content type.}

\item{\code{content_type}}{(str): The invocation ContentType, overriding any
content_type from the serializer}

\item{\code{accept}}{(str): The invocation Accept, overriding any accept from the
deserializer.}

\item{\code{vpc_config_override}}{(dict[str, list[str]]): Optional override for VpcConfig set on
the model. Default: use subnets and security groups from this Estimator.
* 'Subnets' (list[str]): List of subnet ids.
* 'SecurityGroupIds' (list[str]): List of security group ids.}

\item{\code{...}}{: Additional arguments for creating a :class:`~sagemaker.model.ModelPackage`.
.. tip::
You can find additional parameters for using this method at
:class:`~sagemaker.model.ModelPackage` and
:class:`~sagemaker.model.Model`.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
a Model ready for deployment.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-transformer"></a>}}
\if{latex}{\out{\hypertarget{method-transformer}{}}}
\subsection{Method \code{transformer()}}{
Return a ``Transformer`` that uses a SageMaker Model based on the
             training job. It reuses the SageMaker Session and base job name used by
             the Estimator.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlgorithmEstimator$transformer(
  instance_count,
  instance_type,
  strategy = NULL,
  assemble_with = NULL,
  output_path = NULL,
  output_kms_key = NULL,
  accept = NULL,
  env = NULL,
  max_concurrent_transforms = NULL,
  max_payload = NULL,
  tags = NULL,
  role = NULL,
  volume_kms_key = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{instance_count}}{(int): Number of EC2 instances to use.}

\item{\code{instance_type}}{(str): Type of EC2 instance to use, for example,
'ml.c4.xlarge'.}

\item{\code{strategy}}{(str): The strategy used to decide how to batch records in
a single request (default: None). Valid values: 'MultiRecord'
and 'SingleRecord'.}

\item{\code{assemble_with}}{(str): How the output is assembled (default: None).
Valid values: 'Line' or 'None'.}

\item{\code{output_path}}{(str): S3 location for saving the transform result. If
not specified, results are stored to a default bucket.}

\item{\code{output_kms_key}}{(str): Optional. KMS key ID for encrypting the
transform output (default: None).}

\item{\code{accept}}{(str): The accept header passed by the client to
the inference endpoint. If it is supported by the endpoint,
it will be the format of the batch transform output.}

\item{\code{env}}{(dict): Environment variables to be set for use during the
transform job (default: None).}

\item{\code{max_concurrent_transforms}}{(int): The maximum number of HTTP requests
to be made to each individual transform container at one time.}

\item{\code{max_payload}}{(int): Maximum size of the payload in a single HTTP
request to the container in MB.}

\item{\code{tags}}{(list[dict]): List of tags for labeling a transform job. If
none specified, then the tags used for the training job are used
for the transform job.}

\item{\code{role}}{(str): The ``ExecutionRoleArn`` IAM Role ARN for the ``Model``,
which is also used during transform jobs. If not specified, the
role from the Estimator will be used.}

\item{\code{volume_kms_key}}{(str): Optional. KMS key ID for encrypting the volume
attached to the ML compute instance (default: None).}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-fit"></a>}}
\if{latex}{\out{\hypertarget{method-fit}{}}}
\subsection{Method \code{fit()}}{
Train a model using the input training dataset.
             The API calls the Amazon SageMaker CreateTrainingJob API to start
             model training. The API uses configuration you provided to create the
             estimator and the specified input training data to send the
             CreatingTrainingJob request to Amazon SageMaker.
             This is a synchronous operation. After the model training
             successfully completes, you can call the ``deploy()`` method to host the
             model using the Amazon SageMaker hosting services.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlgorithmEstimator$fit(
  inputs = NULL,
  wait = TRUE,
  logs = TRUE,
  job_name = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{inputs}}{(str or dict or TrainingInput): Information
about the training data. This can be one of three types:
\itemize{
  \item{\strong{(str)} the S3 location where training data is saved, or a file:// path in
local mode.}
  \item{\strong{(dict[str, str]} or dict[str, TrainingInput]) If using multiple
channels for training data, you can specify a dict mapping channel names to
strings or :func:`~TrainingInput` objects.}
  \item{\strong{(TrainingInput)} - channel configuration for S3 data sources that can
provide additional information as well as the path to the training dataset.
See :func:`TrainingInput` for full details.}
  \item{\strong{(sagemaker.session.FileSystemInput)} - channel configuration for
a file system data source that can provide additional information as well as
the path to the training dataset.}}}

\item{\code{wait}}{(bool): Whether the call should wait until the job completes (default: True).}

\item{\code{logs}}{([str]): A list of strings specifying which logs to print. Acceptable
strings are "All", "NULL", "Training", or "Rules". To maintain backwards
compatibility, boolean values are also accepted and converted to strings.
Only meaningful when wait is True.}

\item{\code{job_name}}{(str): Training job name. If not specified, the estimator generates
a default job name, based on the training image name and current timestamp.}

\item{\code{experiment_config}}{(dict[str, str]): Experiment management configuration.
Dictionary contains three optional keys,
'ExperimentName', 'TrialName', and 'TrialComponentDisplayName'.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-print"></a>}}
\if{latex}{\out{\hypertarget{method-print}{}}}
\subsection{Method \code{print()}}{
Printer.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AlgorithmEstimator$print(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{(ignored).}
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
\if{html}{\out{<div class="r">}}\preformatted{AlgorithmEstimator$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
