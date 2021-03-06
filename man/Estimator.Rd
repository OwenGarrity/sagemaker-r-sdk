% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimator.R
\name{Estimator}
\alias{Estimator}
\title{Sagemaker Estimator Class}
\description{
A generic Estimator to train using any supplied algorithm. This class is
             designed for use with algorithms that don't have their own, custom class.
}
\section{Super class}{
\code{\link[R6sagemaker:EstimatorBase]{R6sagemaker::EstimatorBase}} -> \code{Estimator}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{Estimator$new()}}
\item \href{#method-training_image_uri}{\code{Estimator$training_image_uri()}}
\item \href{#method-set_hyperparameters}{\code{Estimator$set_hyperparameters()}}
\item \href{#method-hyperparameters}{\code{Estimator$hyperparameters()}}
\item \href{#method-create_model}{\code{Estimator$create_model()}}
\item \href{#method-clone}{\code{Estimator$clone()}}
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
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="enable_network_isolation">}\href{../../R6sagemaker/html/EstimatorBase.html#method-enable_network_isolation}{\code{R6sagemaker::EstimatorBase$enable_network_isolation()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="fit">}\href{../../R6sagemaker/html/EstimatorBase.html#method-fit}{\code{R6sagemaker::EstimatorBase$fit()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="get_vpc_config">}\href{../../R6sagemaker/html/EstimatorBase.html#method-get_vpc_config}{\code{R6sagemaker::EstimatorBase$get_vpc_config()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="latest_job_debugger_artifacts_path">}\href{../../R6sagemaker/html/EstimatorBase.html#method-latest_job_debugger_artifacts_path}{\code{R6sagemaker::EstimatorBase$latest_job_debugger_artifacts_path()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="latest_job_tensorboard_artifacts_path">}\href{../../R6sagemaker/html/EstimatorBase.html#method-latest_job_tensorboard_artifacts_path}{\code{R6sagemaker::EstimatorBase$latest_job_tensorboard_artifacts_path()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="logs">}\href{../../R6sagemaker/html/EstimatorBase.html#method-logs}{\code{R6sagemaker::EstimatorBase$logs()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="prepare_workflow_for_training">}\href{../../R6sagemaker/html/EstimatorBase.html#method-prepare_workflow_for_training}{\code{R6sagemaker::EstimatorBase$prepare_workflow_for_training()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="print">}\href{../../R6sagemaker/html/EstimatorBase.html#method-print}{\code{R6sagemaker::EstimatorBase$print()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="transformer">}\href{../../R6sagemaker/html/EstimatorBase.html#method-transformer}{\code{R6sagemaker::EstimatorBase$transformer()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="R6sagemaker" data-topic="EstimatorBase" data-id="wait">}\href{../../R6sagemaker/html/EstimatorBase.html#method-wait}{\code{R6sagemaker::EstimatorBase$wait()}}\out{</span>}
}
\out{</details>}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Initialize an ``Estimator`` instance.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Estimator$new(
  image_uri,
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
  use_spot_instances = FALSE,
  max_wait = NULL,
  checkpoint_s3_uri = NULL,
  checkpoint_local_path = NULL,
  enable_network_isolation = FALSE,
  rules = NULL,
  debugger_hook_config = NULL,
  tensorboard_output_config = NULL,
  enable_sagemaker_metrics = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{image_uri}}{(str): The container image to use for training.}

\item{\code{role}}{(str): An AWS IAM role (either name or full ARN). The Amazon
SageMaker training jobs and APIs that create Amazon SageMaker
endpoints use this role to access training data and model
artifacts. After the endpoint is created, the inference code
might use the IAM role, if it needs to access an AWS resource.}

\item{\code{instance_count}}{(int): Number of Amazon EC2 instances to use
for training.}

\item{\code{instance_type}}{(str): Type of EC2 instance to use for training,
for example, 'ml.c4.xlarge'.}

\item{\code{volume_size}}{(int): Size in GB of the EBS volume to use for
storing input data during training (default: 30). Must be large
enough to store training data if File Mode is used (which is the
default).}

\item{\code{volume_kms_key}}{(str): Optional. KMS key ID for encrypting EBS
volume attached to the training instance (default: NULL).}

\item{\code{max_run}}{(int): Timeout in seconds for training (default: 24 *
60 * 60). After this amount of time Amazon SageMaker terminates
the job regardless of its current status.}

\item{\code{input_mode}}{(str): The input mode that the algorithm supports
(default: 'File'). Valid modes:
* 'File' - Amazon SageMaker copies the training dataset from the
S3 location to a local directory.
* 'Pipe' - Amazon SageMaker streams data directly from S3 to the
container via a Unix-named pipe.
This argument can be overriden on a per-channel basis using
``TrainingInput.input_mode``.}

\item{\code{output_path}}{(str): S3 location for saving the training result (model
artifacts and output files). If not specified, results are
stored to a default bucket. If the bucket with the specific name
does not exist, the estimator creates the bucket during the
:meth:`~sagemaker.estimator.EstimatorBase.fit` method execution.}

\item{\code{output_kms_key}}{(str): Optional. KMS key ID for encrypting the
training output (default: NULL).}

\item{\code{base_job_name}}{(str): Prefix for training job name when the
:meth:`~sagemaker.estimator.EstimatorBase.fit` method launches.
If not specified, the estimator generates a default job name,
based on the training image name and current timestamp.}

\item{\code{sagemaker_session}}{(sagemaker.session.Session): Session object which
manages interactions with Amazon SageMaker APIs and any other
AWS services needed. If not specified, the estimator creates one
using the default AWS configuration chain.}

\item{\code{hyperparameters}}{(dict): Dictionary containing the hyperparameters to
initialize this estimator with.}

\item{\code{tags}}{(list[dict]): List of tags for labeling a training job. For
more, see
https://docs.aws.amazon.com/sagemaker/latest/dg/API_Tag.html.}

\item{\code{subnets}}{(list[str]): List of subnet ids. If not specified training
job will be created without VPC config.}

\item{\code{security_group_ids}}{(list[str]): List of security group ids. If not
specified training job will be created without VPC config.}

\item{\code{model_uri}}{(str): URI where a pre-trained model is stored, either
locally or in S3 (default: NULL). If specified, the estimator
can download it. This model can be a 'model.tar.gz' from a
previous training job, or other artifacts coming from a
different source.
In local mode, this should point to the path in which the model
is located and not the file itself, as local Docker containers
will try to mount the URI as a volume.
More information:
https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-training.html#td-deserialization}

\item{\code{model_channel_name}}{(str): Name of the channel where 'model_uri' will
be downloaded (default: 'model').}

\item{\code{metric_definitions}}{(list[dict]): A list of dictionaries that defines
the metric(s) used to evaluate the training jobs. Each
dictionary contains two keys: 'Name' for the name of the metric,
and 'Regex' for the regular expression used to extract the
metric from the logs. This should be defined only for jobs that
don't use an Amazon algorithm.}

\item{\code{encrypt_inter_container_traffic}}{(bool): Specifies whether traffic
between training containers is encrypted for the training job
(default: ``False``).}

\item{\code{use_spot_instances}}{(bool): Specifies whether to use SageMaker
Managed Spot instances for training. If enabled then the
`max_wait` arg should also be set.
More information:
https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html
(default: ``False``).}

\item{\code{max_wait}}{(int): Timeout in seconds waiting for spot training
instances (default: NULL). After this amount of time Amazon
SageMaker will stop waiting for Spot instances to become
available (default: ``NULL``).}

\item{\code{checkpoint_s3_uri}}{(str): The S3 URI in which to persist checkpoints
that the algorithm persists (if any) during training. (default:
``NULL``).}

\item{\code{checkpoint_local_path}}{(str): The local path that the algorithm
writes its checkpoints to. SageMaker will persist all files
under this path to `checkpoint_s3_uri` continually during
training. On job startup the reverse happens - data from the
s3 location is downloaded to this path before the algorithm is
started. If the path is unset then SageMaker assumes the
checkpoints will be provided under `/opt/ml/checkpoints/`.
(default: ``NULL``).}

\item{\code{enable_network_isolation}}{(bool): Specifies whether container will
run in network isolation mode (default: ``False``). Network
isolation mode restricts the container access to outside networks
(such as the Internet). The container does not make any inbound or
outbound network calls. Also known as Internet-free mode.}

\item{\code{rules}}{(list[:class:`~sagemaker.debugger.Rule`]): A list of
:class:`~sagemaker.debugger.Rule` objects used to define
rules for continuous analysis with SageMaker Debugger
(default: ``NULL``). For more, see
https://sagemaker.readthedocs.io/en/stable/amazon_sagemaker_debugger.html#continuous-analyses-through-rules}

\item{\code{debugger_hook_config}}{(:class:`~sagemaker.debugger.DebuggerHookConfig` or bool):
Configuration for how debugging information is emitted with
SageMaker Debugger. If not specified, a default one is created using
the estimator's ``output_path``, unless the region does not
support SageMaker Debugger. To disable SageMaker Debugger,
set this parameter to ``False``. For more, see
https://sagemaker.readthedocs.io/en/stable/amazon_sagemaker_debugger.html}

\item{\code{tensorboard_output_config}}{(:class:`~sagemaker.debugger.TensorBoardOutputConfig`):
Configuration for customizing debugging visualization using TensorBoard
(default: ``NULL``). For more, see
https://sagemaker.readthedocs.io/en/stable/amazon_sagemaker_debugger.html#capture-real-time-tensorboard-data-from-the-debugging-hook}

\item{\code{enable_sagemaker_metrics}}{(bool): enable SageMaker Metrics Time
Series. For more information see:
https://docs.aws.amazon.com/sagemaker/latest/dg/API_AlgorithmSpecification.html#SageMaker-Type-AlgorithmSpecification-EnableSageMakerMetricsTimeSeries
(default: ``NULL``).}
}
\if{html}{\out{</div>}}
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
\if{html}{\out{<div class="r">}}\preformatted{Estimator$training_image_uri()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-set_hyperparameters"></a>}}
\if{latex}{\out{\hypertarget{method-set_hyperparameters}{}}}
\subsection{Method \code{set_hyperparameters()}}{
formats hyperparameters for model tunning
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Estimator$set_hyperparameters(...)}\if{html}{\out{</div>}}
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
\if{html}{\out{<div class="r">}}\preformatted{Estimator$hyperparameters()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-create_model"></a>}}
\if{latex}{\out{\hypertarget{method-create_model}{}}}
\subsection{Method \code{create_model()}}{
Create a model to deploy.
             The serializer, deserializer, content_type, and accept arguments are only used to define a
             default Predictor. They are ignored if an explicit predictor class is passed in.
             Other arguments are passed through to the Model class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Estimator$create_model(
  role = NULL,
  image_uri = NULL,
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

\item{\code{image_uri}}{(str): An container image to use for deploying the model.
Defaults to the image used for training.}

\item{\code{predictor_cls}}{(Predictor): The predictor class to use when
deploying the model.}

\item{\code{serializer}}{(callable): Should accept a single argument, the input
data, and return a sequence of bytes. May provide a content_type
attribute that defines the endpoint request content type}

\item{\code{deserializer}}{(callable): Should accept two arguments, the result
data and the response content type, and return a sequence of
bytes. May provide a content_type attribute that defines th
endpoint response Accept content type.}

\item{\code{content_type}}{(str): The invocation ContentType, overriding any
content_type from the serializer}

\item{\code{accept}}{(str): The invocation Accept, overriding any accept from the
deserializer.}

\item{\code{vpc_config_override}}{(dict[str, list[str]]): Optional override for VpcConfig set on
the model.
Default: use subnets and security groups from this Estimator.
* 'Subnets' (list[str]): List of subnet ids.
* 'SecurityGroupIds' (list[str]): List of security group ids.}

\item{\code{...}}{: Additional parameters passed to :class:`~sagemaker.model.Model`
.. tip::
You can find additional parameters for using this method at
:class:`~sagemaker.model.Model`.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
(sagemaker.model.Model) a Model ready for deployment.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Estimator$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
