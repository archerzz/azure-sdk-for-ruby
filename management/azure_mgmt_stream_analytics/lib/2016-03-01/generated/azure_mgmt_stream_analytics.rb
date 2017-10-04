# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2016-03-01/generated/azure_mgmt_stream_analytics/module_definition'
require 'ms_rest_azure'

module Azure::ARM::StreamAnalytics::Api_2016_03_01
  autoload :Operations,                                         '2016-03-01/generated/azure_mgmt_stream_analytics/operations.rb'
  autoload :StreamingJobs,                                      '2016-03-01/generated/azure_mgmt_stream_analytics/streaming_jobs.rb'
  autoload :Inputs,                                             '2016-03-01/generated/azure_mgmt_stream_analytics/inputs.rb'
  autoload :Outputs,                                            '2016-03-01/generated/azure_mgmt_stream_analytics/outputs.rb'
  autoload :Transformations,                                    '2016-03-01/generated/azure_mgmt_stream_analytics/transformations.rb'
  autoload :Functions,                                          '2016-03-01/generated/azure_mgmt_stream_analytics/functions.rb'
  autoload :Subscriptions,                                      '2016-03-01/generated/azure_mgmt_stream_analytics/subscriptions.rb'
  autoload :StreamAnalyticsManagementClient,                    '2016-03-01/generated/azure_mgmt_stream_analytics/stream_analytics_management_client.rb'

  module Models
    autoload :AzureMachineLearningWebServiceInputColumn,          '2016-03-01/generated/azure_mgmt_stream_analytics/models/azure_machine_learning_web_service_input_column.rb'
    autoload :OperationDisplay,                                   '2016-03-01/generated/azure_mgmt_stream_analytics/models/operation_display.rb'
    autoload :AzureMachineLearningWebServiceInputs,               '2016-03-01/generated/azure_mgmt_stream_analytics/models/azure_machine_learning_web_service_inputs.rb'
    autoload :OperationListResult,                                '2016-03-01/generated/azure_mgmt_stream_analytics/models/operation_list_result.rb'
    autoload :StorageAccount,                                     '2016-03-01/generated/azure_mgmt_stream_analytics/models/storage_account.rb'
    autoload :Serialization,                                      '2016-03-01/generated/azure_mgmt_stream_analytics/models/serialization.rb'
    autoload :FunctionBinding,                                    '2016-03-01/generated/azure_mgmt_stream_analytics/models/function_binding.rb'
    autoload :Diagnostics,                                        '2016-03-01/generated/azure_mgmt_stream_analytics/models/diagnostics.rb'
    autoload :FunctionOutput,                                     '2016-03-01/generated/azure_mgmt_stream_analytics/models/function_output.rb'
    autoload :Sku,                                                '2016-03-01/generated/azure_mgmt_stream_analytics/models/sku.rb'
    autoload :DiagnosticCondition,                                '2016-03-01/generated/azure_mgmt_stream_analytics/models/diagnostic_condition.rb'
    autoload :OutputDataSource,                                   '2016-03-01/generated/azure_mgmt_stream_analytics/models/output_data_source.rb'
    autoload :InputProperties,                                    '2016-03-01/generated/azure_mgmt_stream_analytics/models/input_properties.rb'
    autoload :FunctionProperties,                                 '2016-03-01/generated/azure_mgmt_stream_analytics/models/function_properties.rb'
    autoload :FunctionListResult,                                 '2016-03-01/generated/azure_mgmt_stream_analytics/models/function_list_result.rb'
    autoload :ResourceTestStatus,                                 '2016-03-01/generated/azure_mgmt_stream_analytics/models/resource_test_status.rb'
    autoload :FunctionInput,                                      '2016-03-01/generated/azure_mgmt_stream_analytics/models/function_input.rb'
    autoload :StartStreamingJobParameters,                        '2016-03-01/generated/azure_mgmt_stream_analytics/models/start_streaming_job_parameters.rb'
    autoload :BlobDataSourceProperties,                           '2016-03-01/generated/azure_mgmt_stream_analytics/models/blob_data_source_properties.rb'
    autoload :OutputListResult,                                   '2016-03-01/generated/azure_mgmt_stream_analytics/models/output_list_result.rb'
    autoload :ReferenceInputDataSource,                           '2016-03-01/generated/azure_mgmt_stream_analytics/models/reference_input_data_source.rb'
    autoload :Operation,                                          '2016-03-01/generated/azure_mgmt_stream_analytics/models/operation.rb'
    autoload :AzureSqlDatabaseDataSourceProperties,               '2016-03-01/generated/azure_mgmt_stream_analytics/models/azure_sql_database_data_source_properties.rb'
    autoload :ErrorResponse,                                      '2016-03-01/generated/azure_mgmt_stream_analytics/models/error_response.rb'
    autoload :FunctionRetrieveDefaultDefinitionParameters,        '2016-03-01/generated/azure_mgmt_stream_analytics/models/function_retrieve_default_definition_parameters.rb'
    autoload :StreamingJobListResult,                             '2016-03-01/generated/azure_mgmt_stream_analytics/models/streaming_job_list_result.rb'
    autoload :SubResource,                                        '2016-03-01/generated/azure_mgmt_stream_analytics/models/sub_resource.rb'
    autoload :AzureMachineLearningWebServiceOutputColumn,         '2016-03-01/generated/azure_mgmt_stream_analytics/models/azure_machine_learning_web_service_output_column.rb'
    autoload :StreamInputDataSource,                              '2016-03-01/generated/azure_mgmt_stream_analytics/models/stream_input_data_source.rb'
    autoload :ServiceBusDataSourceProperties,                     '2016-03-01/generated/azure_mgmt_stream_analytics/models/service_bus_data_source_properties.rb'
    autoload :InputListResult,                                    '2016-03-01/generated/azure_mgmt_stream_analytics/models/input_list_result.rb'
    autoload :SubscriptionQuotasListResult,                       '2016-03-01/generated/azure_mgmt_stream_analytics/models/subscription_quotas_list_result.rb'
    autoload :OAuthBasedDataSourceProperties,                     '2016-03-01/generated/azure_mgmt_stream_analytics/models/oauth_based_data_source_properties.rb'
    autoload :Input,                                              '2016-03-01/generated/azure_mgmt_stream_analytics/models/input.rb'
    autoload :Transformation,                                     '2016-03-01/generated/azure_mgmt_stream_analytics/models/transformation.rb'
    autoload :Output,                                             '2016-03-01/generated/azure_mgmt_stream_analytics/models/output.rb'
    autoload :Function,                                           '2016-03-01/generated/azure_mgmt_stream_analytics/models/function.rb'
    autoload :StreamingJob,                                       '2016-03-01/generated/azure_mgmt_stream_analytics/models/streaming_job.rb'
    autoload :JavaScriptFunctionBinding,                          '2016-03-01/generated/azure_mgmt_stream_analytics/models/java_script_function_binding.rb'
    autoload :AzureMachineLearningWebServiceFunctionBinding,      '2016-03-01/generated/azure_mgmt_stream_analytics/models/azure_machine_learning_web_service_function_binding.rb'
    autoload :ScalarFunctionProperties,                           '2016-03-01/generated/azure_mgmt_stream_analytics/models/scalar_function_properties.rb'
    autoload :JavaScriptFunctionRetrieveDefaultDefinitionParameters, '2016-03-01/generated/azure_mgmt_stream_analytics/models/java_script_function_retrieve_default_definition_parameters.rb'
    autoload :AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters, '2016-03-01/generated/azure_mgmt_stream_analytics/models/azure_machine_learning_web_service_function_retrieve_default_definition_parameters.rb'
    autoload :AvroSerialization,                                  '2016-03-01/generated/azure_mgmt_stream_analytics/models/avro_serialization.rb'
    autoload :JsonSerialization,                                  '2016-03-01/generated/azure_mgmt_stream_analytics/models/json_serialization.rb'
    autoload :CsvSerialization,                                   '2016-03-01/generated/azure_mgmt_stream_analytics/models/csv_serialization.rb'
    autoload :AzureDataLakeStoreOutputDataSource,                 '2016-03-01/generated/azure_mgmt_stream_analytics/models/azure_data_lake_store_output_data_source.rb'
    autoload :PowerBIOutputDataSource,                            '2016-03-01/generated/azure_mgmt_stream_analytics/models/power_bioutput_data_source.rb'
    autoload :EventHubDataSourceProperties,                       '2016-03-01/generated/azure_mgmt_stream_analytics/models/event_hub_data_source_properties.rb'
    autoload :ServiceBusTopicOutputDataSource,                    '2016-03-01/generated/azure_mgmt_stream_analytics/models/service_bus_topic_output_data_source.rb'
    autoload :ServiceBusQueueOutputDataSource,                    '2016-03-01/generated/azure_mgmt_stream_analytics/models/service_bus_queue_output_data_source.rb'
    autoload :DocumentDbOutputDataSource,                         '2016-03-01/generated/azure_mgmt_stream_analytics/models/document_db_output_data_source.rb'
    autoload :AzureSqlDatabaseOutputDataSource,                   '2016-03-01/generated/azure_mgmt_stream_analytics/models/azure_sql_database_output_data_source.rb'
    autoload :EventHubOutputDataSource,                           '2016-03-01/generated/azure_mgmt_stream_analytics/models/event_hub_output_data_source.rb'
    autoload :AzureTableOutputDataSource,                         '2016-03-01/generated/azure_mgmt_stream_analytics/models/azure_table_output_data_source.rb'
    autoload :BlobOutputDataSource,                               '2016-03-01/generated/azure_mgmt_stream_analytics/models/blob_output_data_source.rb'
    autoload :BlobReferenceInputDataSource,                       '2016-03-01/generated/azure_mgmt_stream_analytics/models/blob_reference_input_data_source.rb'
    autoload :ReferenceInputProperties,                           '2016-03-01/generated/azure_mgmt_stream_analytics/models/reference_input_properties.rb'
    autoload :IoTHubStreamInputDataSource,                        '2016-03-01/generated/azure_mgmt_stream_analytics/models/io_thub_stream_input_data_source.rb'
    autoload :EventHubStreamInputDataSource,                      '2016-03-01/generated/azure_mgmt_stream_analytics/models/event_hub_stream_input_data_source.rb'
    autoload :BlobStreamInputDataSource,                          '2016-03-01/generated/azure_mgmt_stream_analytics/models/blob_stream_input_data_source.rb'
    autoload :StreamInputProperties,                              '2016-03-01/generated/azure_mgmt_stream_analytics/models/stream_input_properties.rb'
    autoload :SubscriptionQuota,                                  '2016-03-01/generated/azure_mgmt_stream_analytics/models/subscription_quota.rb'
    autoload :SkuName,                                            '2016-03-01/generated/azure_mgmt_stream_analytics/models/sku_name.rb'
    autoload :OutputStartMode,                                    '2016-03-01/generated/azure_mgmt_stream_analytics/models/output_start_mode.rb'
    autoload :EventsOutOfOrderPolicy,                             '2016-03-01/generated/azure_mgmt_stream_analytics/models/events_out_of_order_policy.rb'
    autoload :OutputErrorPolicy,                                  '2016-03-01/generated/azure_mgmt_stream_analytics/models/output_error_policy.rb'
    autoload :CompatibilityLevel,                                 '2016-03-01/generated/azure_mgmt_stream_analytics/models/compatibility_level.rb'
    autoload :UdfType,                                            '2016-03-01/generated/azure_mgmt_stream_analytics/models/udf_type.rb'
    autoload :JsonOutputSerializationFormat,                      '2016-03-01/generated/azure_mgmt_stream_analytics/models/json_output_serialization_format.rb'
    autoload :Encoding,                                           '2016-03-01/generated/azure_mgmt_stream_analytics/models/encoding.rb'
  end
end
