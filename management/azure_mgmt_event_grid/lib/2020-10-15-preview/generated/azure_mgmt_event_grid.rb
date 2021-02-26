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
require '2020-10-15-preview/generated/azure_mgmt_event_grid/module_definition'
require 'ms_rest_azure'

module Azure::EventGrid::Mgmt::V2020_10_15_preview
  autoload :Domains,                                            '2020-10-15-preview/generated/azure_mgmt_event_grid/domains.rb'
  autoload :DomainTopics,                                       '2020-10-15-preview/generated/azure_mgmt_event_grid/domain_topics.rb'
  autoload :EventChannels,                                      '2020-10-15-preview/generated/azure_mgmt_event_grid/event_channels.rb'
  autoload :EventSubscriptions,                                 '2020-10-15-preview/generated/azure_mgmt_event_grid/event_subscriptions.rb'
  autoload :SystemTopicEventSubscriptions,                      '2020-10-15-preview/generated/azure_mgmt_event_grid/system_topic_event_subscriptions.rb'
  autoload :PartnerTopicEventSubscriptions,                     '2020-10-15-preview/generated/azure_mgmt_event_grid/partner_topic_event_subscriptions.rb'
  autoload :Operations,                                         '2020-10-15-preview/generated/azure_mgmt_event_grid/operations.rb'
  autoload :PartnerNamespaces,                                  '2020-10-15-preview/generated/azure_mgmt_event_grid/partner_namespaces.rb'
  autoload :PartnerRegistrations,                               '2020-10-15-preview/generated/azure_mgmt_event_grid/partner_registrations.rb'
  autoload :PartnerTopics,                                      '2020-10-15-preview/generated/azure_mgmt_event_grid/partner_topics.rb'
  autoload :PrivateEndpointConnections,                         '2020-10-15-preview/generated/azure_mgmt_event_grid/private_endpoint_connections.rb'
  autoload :PrivateLinkResources,                               '2020-10-15-preview/generated/azure_mgmt_event_grid/private_link_resources.rb'
  autoload :SystemTopics,                                       '2020-10-15-preview/generated/azure_mgmt_event_grid/system_topics.rb'
  autoload :Topics,                                             '2020-10-15-preview/generated/azure_mgmt_event_grid/topics.rb'
  autoload :ExtensionTopics,                                    '2020-10-15-preview/generated/azure_mgmt_event_grid/extension_topics.rb'
  autoload :TopicTypes,                                         '2020-10-15-preview/generated/azure_mgmt_event_grid/topic_types.rb'
  autoload :EventGridManagementClient,                          '2020-10-15-preview/generated/azure_mgmt_event_grid/event_grid_management_client.rb'

  module Models
    autoload :DeadLetterDestination,                              '2020-10-15-preview/generated/azure_mgmt_event_grid/models/dead_letter_destination.rb'
    autoload :DeadLetterWithResourceIdentity,                     '2020-10-15-preview/generated/azure_mgmt_event_grid/models/dead_letter_with_resource_identity.rb'
    autoload :ConnectionState,                                    '2020-10-15-preview/generated/azure_mgmt_event_grid/models/connection_state.rb'
    autoload :DeliveryAttributeMapping,                           '2020-10-15-preview/generated/azure_mgmt_event_grid/models/delivery_attribute_mapping.rb'
    autoload :InputSchemaMapping,                                 '2020-10-15-preview/generated/azure_mgmt_event_grid/models/input_schema_mapping.rb'
    autoload :PartnerTopicUpdateParameters,                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_topic_update_parameters.rb'
    autoload :ResourceSku,                                        '2020-10-15-preview/generated/azure_mgmt_event_grid/models/resource_sku.rb'
    autoload :PartnerTopicsListResult,                            '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_topics_list_result.rb'
    autoload :IdentityInfo,                                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/identity_info.rb'
    autoload :EventChannelsListResult,                            '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_channels_list_result.rb'
    autoload :JsonField,                                          '2020-10-15-preview/generated/azure_mgmt_event_grid/models/json_field.rb'
    autoload :EventSubscriptionDestination,                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_subscription_destination.rb'
    autoload :DeliveryAttributeListResult,                        '2020-10-15-preview/generated/azure_mgmt_event_grid/models/delivery_attribute_list_result.rb'
    autoload :EventSubscriptionsListResult,                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_subscriptions_list_result.rb'
    autoload :SystemData,                                         '2020-10-15-preview/generated/azure_mgmt_event_grid/models/system_data.rb'
    autoload :EventSubscriptionFullUrl,                           '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_subscription_full_url.rb'
    autoload :DomainUpdateParameters,                             '2020-10-15-preview/generated/azure_mgmt_event_grid/models/domain_update_parameters.rb'
    autoload :EventSubscriptionUpdateParameters,                  '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_subscription_update_parameters.rb'
    autoload :DomainSharedAccessKeys,                             '2020-10-15-preview/generated/azure_mgmt_event_grid/models/domain_shared_access_keys.rb'
    autoload :PrivateLinkResource,                                '2020-10-15-preview/generated/azure_mgmt_event_grid/models/private_link_resource.rb'
    autoload :PartnerRegistrationsListResult,                     '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_registrations_list_result.rb'
    autoload :PrivateLinkResourcesListResult,                     '2020-10-15-preview/generated/azure_mgmt_event_grid/models/private_link_resources_list_result.rb'
    autoload :EventChannelSource,                                 '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_channel_source.rb'
    autoload :SystemTopicUpdateParameters,                        '2020-10-15-preview/generated/azure_mgmt_event_grid/models/system_topic_update_parameters.rb'
    autoload :AdvancedFilter,                                     '2020-10-15-preview/generated/azure_mgmt_event_grid/models/advanced_filter.rb'
    autoload :SystemTopicsListResult,                             '2020-10-15-preview/generated/azure_mgmt_event_grid/models/system_topics_list_result.rb'
    autoload :PartnerRegistrationUpdateParameters,                '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_registration_update_parameters.rb'
    autoload :UserIdentityProperties,                             '2020-10-15-preview/generated/azure_mgmt_event_grid/models/user_identity_properties.rb'
    autoload :PartnerNamespaceRegenerateKeyRequest,               '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_namespace_regenerate_key_request.rb'
    autoload :Resource,                                           '2020-10-15-preview/generated/azure_mgmt_event_grid/models/resource.rb'
    autoload :PartnerNamespacesListResult,                        '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_namespaces_list_result.rb'
    autoload :JsonFieldWithDefault,                               '2020-10-15-preview/generated/azure_mgmt_event_grid/models/json_field_with_default.rb'
    autoload :PrivateEndpointConnectionListResult,                '2020-10-15-preview/generated/azure_mgmt_event_grid/models/private_endpoint_connection_list_result.rb'
    autoload :ExtendedLocation,                                   '2020-10-15-preview/generated/azure_mgmt_event_grid/models/extended_location.rb'
    autoload :Operation,                                          '2020-10-15-preview/generated/azure_mgmt_event_grid/models/operation.rb'
    autoload :EventSubscriptionIdentity,                          '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_subscription_identity.rb'
    autoload :PartnerRegistrationEventTypesListResult,            '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_registration_event_types_list_result.rb'
    autoload :DeliveryWithResourceIdentity,                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/delivery_with_resource_identity.rb'
    autoload :DomainsListResult,                                  '2020-10-15-preview/generated/azure_mgmt_event_grid/models/domains_list_result.rb'
    autoload :EventSubscriptionFilter,                            '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_subscription_filter.rb'
    autoload :DomainTopicsListResult,                             '2020-10-15-preview/generated/azure_mgmt_event_grid/models/domain_topics_list_result.rb'
    autoload :RetryPolicy,                                        '2020-10-15-preview/generated/azure_mgmt_event_grid/models/retry_policy.rb'
    autoload :EventChannelFilter,                                 '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_channel_filter.rb'
    autoload :PrivateEndpoint,                                    '2020-10-15-preview/generated/azure_mgmt_event_grid/models/private_endpoint.rb'
    autoload :PartnerNamespaceSharedAccessKeys,                   '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_namespace_shared_access_keys.rb'
    autoload :PartnerNamespaceUpdateParameters,                   '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_namespace_update_parameters.rb'
    autoload :TopicUpdateParameters,                              '2020-10-15-preview/generated/azure_mgmt_event_grid/models/topic_update_parameters.rb'
    autoload :OperationInfo,                                      '2020-10-15-preview/generated/azure_mgmt_event_grid/models/operation_info.rb'
    autoload :InboundIpRule,                                      '2020-10-15-preview/generated/azure_mgmt_event_grid/models/inbound_ip_rule.rb'
    autoload :DomainRegenerateKeyRequest,                         '2020-10-15-preview/generated/azure_mgmt_event_grid/models/domain_regenerate_key_request.rb'
    autoload :EventTypesListResult,                               '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_types_list_result.rb'
    autoload :TopicTypesListResult,                               '2020-10-15-preview/generated/azure_mgmt_event_grid/models/topic_types_list_result.rb'
    autoload :PartnerTopicTypesListResult,                        '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_topic_types_list_result.rb'
    autoload :TopicRegenerateKeyRequest,                          '2020-10-15-preview/generated/azure_mgmt_event_grid/models/topic_regenerate_key_request.rb'
    autoload :OperationsListResult,                               '2020-10-15-preview/generated/azure_mgmt_event_grid/models/operations_list_result.rb'
    autoload :TopicSharedAccessKeys,                              '2020-10-15-preview/generated/azure_mgmt_event_grid/models/topic_shared_access_keys.rb'
    autoload :EventChannelDestination,                            '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_channel_destination.rb'
    autoload :TopicsListResult,                                   '2020-10-15-preview/generated/azure_mgmt_event_grid/models/topics_list_result.rb'
    autoload :PrivateEndpointConnection,                          '2020-10-15-preview/generated/azure_mgmt_event_grid/models/private_endpoint_connection.rb'
    autoload :JsonInputSchemaMapping,                             '2020-10-15-preview/generated/azure_mgmt_event_grid/models/json_input_schema_mapping.rb'
    autoload :TrackedResource,                                    '2020-10-15-preview/generated/azure_mgmt_event_grid/models/tracked_resource.rb'
    autoload :Domain,                                             '2020-10-15-preview/generated/azure_mgmt_event_grid/models/domain.rb'
    autoload :DomainTopic,                                        '2020-10-15-preview/generated/azure_mgmt_event_grid/models/domain_topic.rb'
    autoload :NumberInAdvancedFilter,                             '2020-10-15-preview/generated/azure_mgmt_event_grid/models/number_in_advanced_filter.rb'
    autoload :NumberNotInAdvancedFilter,                          '2020-10-15-preview/generated/azure_mgmt_event_grid/models/number_not_in_advanced_filter.rb'
    autoload :NumberLessThanAdvancedFilter,                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/number_less_than_advanced_filter.rb'
    autoload :NumberGreaterThanAdvancedFilter,                    '2020-10-15-preview/generated/azure_mgmt_event_grid/models/number_greater_than_advanced_filter.rb'
    autoload :NumberLessThanOrEqualsAdvancedFilter,               '2020-10-15-preview/generated/azure_mgmt_event_grid/models/number_less_than_or_equals_advanced_filter.rb'
    autoload :NumberGreaterThanOrEqualsAdvancedFilter,            '2020-10-15-preview/generated/azure_mgmt_event_grid/models/number_greater_than_or_equals_advanced_filter.rb'
    autoload :BoolEqualsAdvancedFilter,                           '2020-10-15-preview/generated/azure_mgmt_event_grid/models/bool_equals_advanced_filter.rb'
    autoload :StringInAdvancedFilter,                             '2020-10-15-preview/generated/azure_mgmt_event_grid/models/string_in_advanced_filter.rb'
    autoload :StringNotInAdvancedFilter,                          '2020-10-15-preview/generated/azure_mgmt_event_grid/models/string_not_in_advanced_filter.rb'
    autoload :StringBeginsWithAdvancedFilter,                     '2020-10-15-preview/generated/azure_mgmt_event_grid/models/string_begins_with_advanced_filter.rb'
    autoload :StringEndsWithAdvancedFilter,                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/string_ends_with_advanced_filter.rb'
    autoload :StringContainsAdvancedFilter,                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/string_contains_advanced_filter.rb'
    autoload :NumberInRangeAdvancedFilter,                        '2020-10-15-preview/generated/azure_mgmt_event_grid/models/number_in_range_advanced_filter.rb'
    autoload :NumberNotInRangeAdvancedFilter,                     '2020-10-15-preview/generated/azure_mgmt_event_grid/models/number_not_in_range_advanced_filter.rb'
    autoload :StringNotBeginsWithAdvancedFilter,                  '2020-10-15-preview/generated/azure_mgmt_event_grid/models/string_not_begins_with_advanced_filter.rb'
    autoload :StringNotEndsWithAdvancedFilter,                    '2020-10-15-preview/generated/azure_mgmt_event_grid/models/string_not_ends_with_advanced_filter.rb'
    autoload :StringNotContainsAdvancedFilter,                    '2020-10-15-preview/generated/azure_mgmt_event_grid/models/string_not_contains_advanced_filter.rb'
    autoload :IsNullOrUndefinedAdvancedFilter,                    '2020-10-15-preview/generated/azure_mgmt_event_grid/models/is_null_or_undefined_advanced_filter.rb'
    autoload :IsNotNullAdvancedFilter,                            '2020-10-15-preview/generated/azure_mgmt_event_grid/models/is_not_null_advanced_filter.rb'
    autoload :EventChannel,                                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_channel.rb'
    autoload :StaticDeliveryAttributeMapping,                     '2020-10-15-preview/generated/azure_mgmt_event_grid/models/static_delivery_attribute_mapping.rb'
    autoload :DynamicDeliveryAttributeMapping,                    '2020-10-15-preview/generated/azure_mgmt_event_grid/models/dynamic_delivery_attribute_mapping.rb'
    autoload :StorageBlobDeadLetterDestination,                   '2020-10-15-preview/generated/azure_mgmt_event_grid/models/storage_blob_dead_letter_destination.rb'
    autoload :WebHookEventSubscriptionDestination,                '2020-10-15-preview/generated/azure_mgmt_event_grid/models/web_hook_event_subscription_destination.rb'
    autoload :EventHubEventSubscriptionDestination,               '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_hub_event_subscription_destination.rb'
    autoload :StorageQueueEventSubscriptionDestination,           '2020-10-15-preview/generated/azure_mgmt_event_grid/models/storage_queue_event_subscription_destination.rb'
    autoload :HybridConnectionEventSubscriptionDestination,       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/hybrid_connection_event_subscription_destination.rb'
    autoload :ServiceBusQueueEventSubscriptionDestination,        '2020-10-15-preview/generated/azure_mgmt_event_grid/models/service_bus_queue_event_subscription_destination.rb'
    autoload :ServiceBusTopicEventSubscriptionDestination,        '2020-10-15-preview/generated/azure_mgmt_event_grid/models/service_bus_topic_event_subscription_destination.rb'
    autoload :AzureFunctionEventSubscriptionDestination,          '2020-10-15-preview/generated/azure_mgmt_event_grid/models/azure_function_event_subscription_destination.rb'
    autoload :EventSubscription,                                  '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_subscription.rb'
    autoload :PartnerNamespace,                                   '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_namespace.rb'
    autoload :PartnerRegistration,                                '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_registration.rb'
    autoload :EventType,                                          '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_type.rb'
    autoload :PartnerTopic,                                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_topic.rb'
    autoload :PartnerTopicType,                                   '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_topic_type.rb'
    autoload :SystemTopic,                                        '2020-10-15-preview/generated/azure_mgmt_event_grid/models/system_topic.rb'
    autoload :Topic,                                              '2020-10-15-preview/generated/azure_mgmt_event_grid/models/topic.rb'
    autoload :ExtensionTopic,                                     '2020-10-15-preview/generated/azure_mgmt_event_grid/models/extension_topic.rb'
    autoload :TopicTypeInfo,                                      '2020-10-15-preview/generated/azure_mgmt_event_grid/models/topic_type_info.rb'
    autoload :PersistedConnectionStatus,                          '2020-10-15-preview/generated/azure_mgmt_event_grid/models/persisted_connection_status.rb'
    autoload :ResourceProvisioningState,                          '2020-10-15-preview/generated/azure_mgmt_event_grid/models/resource_provisioning_state.rb'
    autoload :DomainProvisioningState,                            '2020-10-15-preview/generated/azure_mgmt_event_grid/models/domain_provisioning_state.rb'
    autoload :InputSchema,                                        '2020-10-15-preview/generated/azure_mgmt_event_grid/models/input_schema.rb'
    autoload :PublicNetworkAccess,                                '2020-10-15-preview/generated/azure_mgmt_event_grid/models/public_network_access.rb'
    autoload :IpActionType,                                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/ip_action_type.rb'
    autoload :Sku,                                                '2020-10-15-preview/generated/azure_mgmt_event_grid/models/sku.rb'
    autoload :IdentityType,                                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/identity_type.rb'
    autoload :CreatedByType,                                      '2020-10-15-preview/generated/azure_mgmt_event_grid/models/created_by_type.rb'
    autoload :DomainTopicProvisioningState,                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/domain_topic_provisioning_state.rb'
    autoload :EventChannelProvisioningState,                      '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_channel_provisioning_state.rb'
    autoload :PartnerTopicReadinessState,                         '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_topic_readiness_state.rb'
    autoload :EventSubscriptionProvisioningState,                 '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_subscription_provisioning_state.rb'
    autoload :EventSubscriptionIdentityType,                      '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_subscription_identity_type.rb'
    autoload :EventDeliverySchema,                                '2020-10-15-preview/generated/azure_mgmt_event_grid/models/event_delivery_schema.rb'
    autoload :PartnerNamespaceProvisioningState,                  '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_namespace_provisioning_state.rb'
    autoload :PartnerRegistrationProvisioningState,               '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_registration_provisioning_state.rb'
    autoload :PartnerRegistrationVisibilityState,                 '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_registration_visibility_state.rb'
    autoload :PartnerTopicProvisioningState,                      '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_topic_provisioning_state.rb'
    autoload :PartnerTopicActivationState,                        '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_topic_activation_state.rb'
    autoload :PartnerTopicTypeAuthorizationState,                 '2020-10-15-preview/generated/azure_mgmt_event_grid/models/partner_topic_type_authorization_state.rb'
    autoload :TopicProvisioningState,                             '2020-10-15-preview/generated/azure_mgmt_event_grid/models/topic_provisioning_state.rb'
    autoload :ResourceKind,                                       '2020-10-15-preview/generated/azure_mgmt_event_grid/models/resource_kind.rb'
    autoload :ResourceRegionType,                                 '2020-10-15-preview/generated/azure_mgmt_event_grid/models/resource_region_type.rb'
    autoload :TopicTypeProvisioningState,                         '2020-10-15-preview/generated/azure_mgmt_event_grid/models/topic_type_provisioning_state.rb'
  end
end
