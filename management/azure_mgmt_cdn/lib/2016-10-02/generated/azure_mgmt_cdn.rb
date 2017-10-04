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
require '2016-10-02/generated/azure_mgmt_cdn/module_definition'
require 'ms_rest_azure'

module Azure::ARM::CDN::Api_2016_10_02
  autoload :Profiles,                                           '2016-10-02/generated/azure_mgmt_cdn/profiles.rb'
  autoload :Endpoints,                                          '2016-10-02/generated/azure_mgmt_cdn/endpoints.rb'
  autoload :Origins,                                            '2016-10-02/generated/azure_mgmt_cdn/origins.rb'
  autoload :CustomDomains,                                      '2016-10-02/generated/azure_mgmt_cdn/custom_domains.rb'
  autoload :EdgeNodes,                                          '2016-10-02/generated/azure_mgmt_cdn/edge_nodes.rb'
  autoload :CdnManagementClient,                                '2016-10-02/generated/azure_mgmt_cdn/cdn_management_client.rb'

  module Models
    autoload :CustomDomainParameters,                             '2016-10-02/generated/azure_mgmt_cdn/models/custom_domain_parameters.rb'
    autoload :Sku,                                                '2016-10-02/generated/azure_mgmt_cdn/models/sku.rb'
    autoload :CustomDomainListResult,                             '2016-10-02/generated/azure_mgmt_cdn/models/custom_domain_list_result.rb'
    autoload :ProfileListResult,                                  '2016-10-02/generated/azure_mgmt_cdn/models/profile_list_result.rb'
    autoload :ValidateCustomDomainInput,                          '2016-10-02/generated/azure_mgmt_cdn/models/validate_custom_domain_input.rb'
    autoload :SsoUri,                                             '2016-10-02/generated/azure_mgmt_cdn/models/sso_uri.rb'
    autoload :ValidateCustomDomainOutput,                         '2016-10-02/generated/azure_mgmt_cdn/models/validate_custom_domain_output.rb'
    autoload :DeepCreatedOrigin,                                  '2016-10-02/generated/azure_mgmt_cdn/models/deep_created_origin.rb'
    autoload :CheckNameAvailabilityInput,                         '2016-10-02/generated/azure_mgmt_cdn/models/check_name_availability_input.rb'
    autoload :EndpointListResult,                                 '2016-10-02/generated/azure_mgmt_cdn/models/endpoint_list_result.rb'
    autoload :CheckNameAvailabilityOutput,                        '2016-10-02/generated/azure_mgmt_cdn/models/check_name_availability_output.rb'
    autoload :EndpointUpdateParameters,                           '2016-10-02/generated/azure_mgmt_cdn/models/endpoint_update_parameters.rb'
    autoload :ResourceUsage,                                      '2016-10-02/generated/azure_mgmt_cdn/models/resource_usage.rb'
    autoload :LoadParameters,                                     '2016-10-02/generated/azure_mgmt_cdn/models/load_parameters.rb'
    autoload :ResourceUsageListResult,                            '2016-10-02/generated/azure_mgmt_cdn/models/resource_usage_list_result.rb'
    autoload :OriginUpdateParameters,                             '2016-10-02/generated/azure_mgmt_cdn/models/origin_update_parameters.rb'
    autoload :OperationDisplay,                                   '2016-10-02/generated/azure_mgmt_cdn/models/operation_display.rb'
    autoload :OriginListResult,                                   '2016-10-02/generated/azure_mgmt_cdn/models/origin_list_result.rb'
    autoload :ProfileUpdateParameters,                            '2016-10-02/generated/azure_mgmt_cdn/models/profile_update_parameters.rb'
    autoload :Operation,                                          '2016-10-02/generated/azure_mgmt_cdn/models/operation.rb'
    autoload :SupportedOptimizationTypesResult,                   '2016-10-02/generated/azure_mgmt_cdn/models/supported_optimization_types_result.rb'
    autoload :EdgenodeResult,                                     '2016-10-02/generated/azure_mgmt_cdn/models/edgenode_result.rb'
    autoload :PurgeParameters,                                    '2016-10-02/generated/azure_mgmt_cdn/models/purge_parameters.rb'
    autoload :OperationListResult,                                '2016-10-02/generated/azure_mgmt_cdn/models/operation_list_result.rb'
    autoload :ErrorResponse,                                      '2016-10-02/generated/azure_mgmt_cdn/models/error_response.rb'
    autoload :GeoFilter,                                          '2016-10-02/generated/azure_mgmt_cdn/models/geo_filter.rb'
    autoload :CidrIpAddress,                                      '2016-10-02/generated/azure_mgmt_cdn/models/cidr_ip_address.rb'
    autoload :IpAddressGroup,                                     '2016-10-02/generated/azure_mgmt_cdn/models/ip_address_group.rb'
    autoload :Profile,                                            '2016-10-02/generated/azure_mgmt_cdn/models/profile.rb'
    autoload :Endpoint,                                           '2016-10-02/generated/azure_mgmt_cdn/models/endpoint.rb'
    autoload :Origin,                                             '2016-10-02/generated/azure_mgmt_cdn/models/origin.rb'
    autoload :CustomDomain,                                       '2016-10-02/generated/azure_mgmt_cdn/models/custom_domain.rb'
    autoload :EdgeNode,                                           '2016-10-02/generated/azure_mgmt_cdn/models/edge_node.rb'
    autoload :SkuName,                                            '2016-10-02/generated/azure_mgmt_cdn/models/sku_name.rb'
    autoload :ProfileResourceState,                               '2016-10-02/generated/azure_mgmt_cdn/models/profile_resource_state.rb'
    autoload :OptimizationType,                                   '2016-10-02/generated/azure_mgmt_cdn/models/optimization_type.rb'
    autoload :EndpointResourceState,                              '2016-10-02/generated/azure_mgmt_cdn/models/endpoint_resource_state.rb'
    autoload :QueryStringCachingBehavior,                         '2016-10-02/generated/azure_mgmt_cdn/models/query_string_caching_behavior.rb'
    autoload :GeoFilterActions,                                   '2016-10-02/generated/azure_mgmt_cdn/models/geo_filter_actions.rb'
    autoload :OriginResourceState,                                '2016-10-02/generated/azure_mgmt_cdn/models/origin_resource_state.rb'
    autoload :CustomDomainResourceState,                          '2016-10-02/generated/azure_mgmt_cdn/models/custom_domain_resource_state.rb'
    autoload :CustomHttpsProvisioningState,                       '2016-10-02/generated/azure_mgmt_cdn/models/custom_https_provisioning_state.rb'
    autoload :ResourceType,                                       '2016-10-02/generated/azure_mgmt_cdn/models/resource_type.rb'
  end
end
