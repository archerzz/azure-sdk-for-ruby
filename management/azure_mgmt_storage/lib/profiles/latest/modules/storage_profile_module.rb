# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Storage::Profiles::Latest
  module Mgmt
    Operations = Azure::Storage::Mgmt::V2019_06_01::Operations
    Skus = Azure::Storage::Mgmt::V2019_06_01::Skus
    StorageAccounts = Azure::Storage::Mgmt::V2019_06_01::StorageAccounts
    Usages = Azure::Storage::Mgmt::V2019_06_01::Usages
    ManagementPolicies = Azure::Storage::Mgmt::V2019_06_01::ManagementPolicies
    PrivateEndpointConnections = Azure::Storage::Mgmt::V2019_06_01::PrivateEndpointConnections
    PrivateLinkResources = Azure::Storage::Mgmt::V2019_06_01::PrivateLinkResources
    EncryptionScopes = Azure::Storage::Mgmt::V2019_06_01::EncryptionScopes
    BlobServices = Azure::Storage::Mgmt::V2019_06_01::BlobServices
    BlobContainers = Azure::Storage::Mgmt::V2019_06_01::BlobContainers
    FileServices = Azure::Storage::Mgmt::V2019_06_01::FileServices
    FileShares = Azure::Storage::Mgmt::V2019_06_01::FileShares

    module Models
      ListAccountSasResponse = Azure::Storage::Mgmt::V2019_06_01::Models::ListAccountSasResponse
      ServiceSasParameters = Azure::Storage::Mgmt::V2019_06_01::Models::ServiceSasParameters
      Dimension = Azure::Storage::Mgmt::V2019_06_01::Models::Dimension
      ListServiceSasResponse = Azure::Storage::Mgmt::V2019_06_01::Models::ListServiceSasResponse
      ServiceSpecification = Azure::Storage::Mgmt::V2019_06_01::Models::ServiceSpecification
      DateAfterModification = Azure::Storage::Mgmt::V2019_06_01::Models::DateAfterModification
      OperationListResult = Azure::Storage::Mgmt::V2019_06_01::Models::OperationListResult
      ManagementPolicyBaseBlob = Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicyBaseBlob
      SKUCapability = Azure::Storage::Mgmt::V2019_06_01::Models::SKUCapability
      DateAfterCreation = Azure::Storage::Mgmt::V2019_06_01::Models::DateAfterCreation
      SkuInformation = Azure::Storage::Mgmt::V2019_06_01::Models::SkuInformation
      ManagementPolicySnapShot = Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicySnapShot
      CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2019_06_01::Models::CheckNameAvailabilityResult
      ManagementPolicyAction = Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicyAction
      EncryptionService = Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionService
      ManagementPolicyFilter = Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicyFilter
      KeyVaultProperties = Azure::Storage::Mgmt::V2019_06_01::Models::KeyVaultProperties
      ManagementPolicyDefinition = Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicyDefinition
      VirtualNetworkRule = Azure::Storage::Mgmt::V2019_06_01::Models::VirtualNetworkRule
      ManagementPolicyRule = Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicyRule
      NetworkRuleSet = Azure::Storage::Mgmt::V2019_06_01::Models::NetworkRuleSet
      ManagementPolicySchema = Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicySchema
      AzureFilesIdentityBasedAuthentication = Azure::Storage::Mgmt::V2019_06_01::Models::AzureFilesIdentityBasedAuthentication
      StorageSkuListResult = Azure::Storage::Mgmt::V2019_06_01::Models::StorageSkuListResult
      CustomDomain = Azure::Storage::Mgmt::V2019_06_01::Models::CustomDomain
      Sku = Azure::Storage::Mgmt::V2019_06_01::Models::Sku
      EncryptionServices = Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionServices
      StorageAccountMicrosoftEndpoints = Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountMicrosoftEndpoints
      Encryption = Azure::Storage::Mgmt::V2019_06_01::Models::Encryption
      Endpoints = Azure::Storage::Mgmt::V2019_06_01::Models::Endpoints
      IPRule = Azure::Storage::Mgmt::V2019_06_01::Models::IPRule
      BlobRestoreRange = Azure::Storage::Mgmt::V2019_06_01::Models::BlobRestoreRange
      ActiveDirectoryProperties = Azure::Storage::Mgmt::V2019_06_01::Models::ActiveDirectoryProperties
      BlobRestoreStatus = Azure::Storage::Mgmt::V2019_06_01::Models::BlobRestoreStatus
      RoutingPreference = Azure::Storage::Mgmt::V2019_06_01::Models::RoutingPreference
      PrivateLinkServiceConnectionState = Azure::Storage::Mgmt::V2019_06_01::Models::PrivateLinkServiceConnectionState
      DeleteRetentionPolicy = Azure::Storage::Mgmt::V2019_06_01::Models::DeleteRetentionPolicy
      StorageAccountKey = Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountKey
      StorageAccountListKeysResult = Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountListKeysResult
      PrivateLinkResourceListResult = Azure::Storage::Mgmt::V2019_06_01::Models::PrivateLinkResourceListResult
      StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountUpdateParameters
      EncryptionScopeKeyVaultProperties = Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionScopeKeyVaultProperties
      Usage = Azure::Storage::Mgmt::V2019_06_01::Models::Usage
      FileShareItems = Azure::Storage::Mgmt::V2019_06_01::Models::FileShareItems
      AccountSasParameters = Azure::Storage::Mgmt::V2019_06_01::Models::AccountSasParameters
      EncryptionScopeListResult = Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionScopeListResult
      MetricSpecification = Azure::Storage::Mgmt::V2019_06_01::Models::MetricSpecification
      ErrorResponse = Azure::Storage::Mgmt::V2019_06_01::Models::ErrorResponse
      StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountCheckNameAvailabilityParameters
      FileServiceItems = Azure::Storage::Mgmt::V2019_06_01::Models::FileServiceItems
      Identity = Azure::Storage::Mgmt::V2019_06_01::Models::Identity
      LeaseContainerResponse = Azure::Storage::Mgmt::V2019_06_01::Models::LeaseContainerResponse
      StorageAccountInternetEndpoints = Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountInternetEndpoints
      LeaseContainerRequest = Azure::Storage::Mgmt::V2019_06_01::Models::LeaseContainerRequest
      BlobRestoreParameters = Azure::Storage::Mgmt::V2019_06_01::Models::BlobRestoreParameters
      Resource = Azure::Storage::Mgmt::V2019_06_01::Models::Resource
      CorsRules = Azure::Storage::Mgmt::V2019_06_01::Models::CorsRules
      StorageAccountListResult = Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountListResult
      UpdateHistoryProperty = Azure::Storage::Mgmt::V2019_06_01::Models::UpdateHistoryProperty
      UsageName = Azure::Storage::Mgmt::V2019_06_01::Models::UsageName
      ImmutabilityPolicyProperties = Azure::Storage::Mgmt::V2019_06_01::Models::ImmutabilityPolicyProperties
      OperationDisplay = Azure::Storage::Mgmt::V2019_06_01::Models::OperationDisplay
      TagProperty = Azure::Storage::Mgmt::V2019_06_01::Models::TagProperty
      Restriction = Azure::Storage::Mgmt::V2019_06_01::Models::Restriction
      LegalHoldProperties = Azure::Storage::Mgmt::V2019_06_01::Models::LegalHoldProperties
      GeoReplicationStats = Azure::Storage::Mgmt::V2019_06_01::Models::GeoReplicationStats
      BlobServiceItems = Azure::Storage::Mgmt::V2019_06_01::Models::BlobServiceItems
      StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountRegenerateKeyParameters
      RestorePolicyProperties = Azure::Storage::Mgmt::V2019_06_01::Models::RestorePolicyProperties
      Operation = Azure::Storage::Mgmt::V2019_06_01::Models::Operation
      LegalHold = Azure::Storage::Mgmt::V2019_06_01::Models::LegalHold
      PrivateEndpoint = Azure::Storage::Mgmt::V2019_06_01::Models::PrivateEndpoint
      ChangeFeed = Azure::Storage::Mgmt::V2019_06_01::Models::ChangeFeed
      StorageAccountCreateParameters = Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountCreateParameters
      ListContainerItems = Azure::Storage::Mgmt::V2019_06_01::Models::ListContainerItems
      UsageListResult = Azure::Storage::Mgmt::V2019_06_01::Models::UsageListResult
      CorsRule = Azure::Storage::Mgmt::V2019_06_01::Models::CorsRule
      PrivateEndpointConnection = Azure::Storage::Mgmt::V2019_06_01::Models::PrivateEndpointConnection
      StorageAccount = Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccount
      ManagementPolicy = Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicy
      PrivateLinkResource = Azure::Storage::Mgmt::V2019_06_01::Models::PrivateLinkResource
      EncryptionScope = Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionScope
      ProxyResource = Azure::Storage::Mgmt::V2019_06_01::Models::ProxyResource
      TrackedResource = Azure::Storage::Mgmt::V2019_06_01::Models::TrackedResource
      AzureEntityResource = Azure::Storage::Mgmt::V2019_06_01::Models::AzureEntityResource
      BlobContainer = Azure::Storage::Mgmt::V2019_06_01::Models::BlobContainer
      ImmutabilityPolicy = Azure::Storage::Mgmt::V2019_06_01::Models::ImmutabilityPolicy
      ListContainerItem = Azure::Storage::Mgmt::V2019_06_01::Models::ListContainerItem
      BlobServiceProperties = Azure::Storage::Mgmt::V2019_06_01::Models::BlobServiceProperties
      FileServiceProperties = Azure::Storage::Mgmt::V2019_06_01::Models::FileServiceProperties
      FileShare = Azure::Storage::Mgmt::V2019_06_01::Models::FileShare
      FileShareItem = Azure::Storage::Mgmt::V2019_06_01::Models::FileShareItem
      ReasonCode = Azure::Storage::Mgmt::V2019_06_01::Models::ReasonCode
      SkuName = Azure::Storage::Mgmt::V2019_06_01::Models::SkuName
      SkuTier = Azure::Storage::Mgmt::V2019_06_01::Models::SkuTier
      Kind = Azure::Storage::Mgmt::V2019_06_01::Models::Kind
      Reason = Azure::Storage::Mgmt::V2019_06_01::Models::Reason
      KeyType = Azure::Storage::Mgmt::V2019_06_01::Models::KeyType
      KeySource = Azure::Storage::Mgmt::V2019_06_01::Models::KeySource
      Action = Azure::Storage::Mgmt::V2019_06_01::Models::Action
      State = Azure::Storage::Mgmt::V2019_06_01::Models::State
      Bypass = Azure::Storage::Mgmt::V2019_06_01::Models::Bypass
      DefaultAction = Azure::Storage::Mgmt::V2019_06_01::Models::DefaultAction
      DirectoryServiceOptions = Azure::Storage::Mgmt::V2019_06_01::Models::DirectoryServiceOptions
      AccessTier = Azure::Storage::Mgmt::V2019_06_01::Models::AccessTier
      LargeFileSharesState = Azure::Storage::Mgmt::V2019_06_01::Models::LargeFileSharesState
      RoutingChoice = Azure::Storage::Mgmt::V2019_06_01::Models::RoutingChoice
      GeoReplicationStatus = Azure::Storage::Mgmt::V2019_06_01::Models::GeoReplicationStatus
      BlobRestoreProgressStatus = Azure::Storage::Mgmt::V2019_06_01::Models::BlobRestoreProgressStatus
      ProvisioningState = Azure::Storage::Mgmt::V2019_06_01::Models::ProvisioningState
      AccountStatus = Azure::Storage::Mgmt::V2019_06_01::Models::AccountStatus
      PrivateEndpointServiceConnectionStatus = Azure::Storage::Mgmt::V2019_06_01::Models::PrivateEndpointServiceConnectionStatus
      PrivateEndpointConnectionProvisioningState = Azure::Storage::Mgmt::V2019_06_01::Models::PrivateEndpointConnectionProvisioningState
      KeyPermission = Azure::Storage::Mgmt::V2019_06_01::Models::KeyPermission
      UsageUnit = Azure::Storage::Mgmt::V2019_06_01::Models::UsageUnit
      Services = Azure::Storage::Mgmt::V2019_06_01::Models::Services
      SignedResourceTypes = Azure::Storage::Mgmt::V2019_06_01::Models::SignedResourceTypes
      Permissions = Azure::Storage::Mgmt::V2019_06_01::Models::Permissions
      HttpProtocol = Azure::Storage::Mgmt::V2019_06_01::Models::HttpProtocol
      SignedResource = Azure::Storage::Mgmt::V2019_06_01::Models::SignedResource
      EncryptionScopeSource = Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionScopeSource
      EncryptionScopeState = Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionScopeState
      PublicAccess = Azure::Storage::Mgmt::V2019_06_01::Models::PublicAccess
      LeaseStatus = Azure::Storage::Mgmt::V2019_06_01::Models::LeaseStatus
      LeaseState = Azure::Storage::Mgmt::V2019_06_01::Models::LeaseState
      LeaseDuration = Azure::Storage::Mgmt::V2019_06_01::Models::LeaseDuration
      ImmutabilityPolicyState = Azure::Storage::Mgmt::V2019_06_01::Models::ImmutabilityPolicyState
      ImmutabilityPolicyUpdateType = Azure::Storage::Mgmt::V2019_06_01::Models::ImmutabilityPolicyUpdateType
      StorageAccountExpand = Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountExpand
      ListKeyExpand = Azure::Storage::Mgmt::V2019_06_01::Models::ListKeyExpand
    end

    #
    # StorageManagementClass
    #
    class StorageManagementClass
      attr_reader :operations, :skus, :storage_accounts, :usages, :management_policies, :private_endpoint_connections, :private_link_resources, :encryption_scopes, :blob_services, :blob_containers, :file_services, :file_shares, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::Storage::Mgmt::V2019_06_01::StorageManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @skus = @client_0.skus
        @storage_accounts = @client_0.storage_accounts
        @usages = @client_0.usages
        @management_policies = @client_0.management_policies
        @private_endpoint_connections = @client_0.private_endpoint_connections
        @private_link_resources = @client_0.private_link_resources
        @encryption_scopes = @client_0.encryption_scopes
        @blob_services = @client_0.blob_services
        @blob_containers = @client_0.blob_containers
        @file_services = @client_0.file_services
        @file_shares = @client_0.file_shares

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Storage/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def list_account_sas_response
        Azure::Storage::Mgmt::V2019_06_01::Models::ListAccountSasResponse
      end
      def service_sas_parameters
        Azure::Storage::Mgmt::V2019_06_01::Models::ServiceSasParameters
      end
      def dimension
        Azure::Storage::Mgmt::V2019_06_01::Models::Dimension
      end
      def list_service_sas_response
        Azure::Storage::Mgmt::V2019_06_01::Models::ListServiceSasResponse
      end
      def service_specification
        Azure::Storage::Mgmt::V2019_06_01::Models::ServiceSpecification
      end
      def date_after_modification
        Azure::Storage::Mgmt::V2019_06_01::Models::DateAfterModification
      end
      def operation_list_result
        Azure::Storage::Mgmt::V2019_06_01::Models::OperationListResult
      end
      def management_policy_base_blob
        Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicyBaseBlob
      end
      def skucapability
        Azure::Storage::Mgmt::V2019_06_01::Models::SKUCapability
      end
      def date_after_creation
        Azure::Storage::Mgmt::V2019_06_01::Models::DateAfterCreation
      end
      def sku_information
        Azure::Storage::Mgmt::V2019_06_01::Models::SkuInformation
      end
      def management_policy_snap_shot
        Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicySnapShot
      end
      def check_name_availability_result
        Azure::Storage::Mgmt::V2019_06_01::Models::CheckNameAvailabilityResult
      end
      def management_policy_action
        Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicyAction
      end
      def encryption_service
        Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionService
      end
      def management_policy_filter
        Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicyFilter
      end
      def key_vault_properties
        Azure::Storage::Mgmt::V2019_06_01::Models::KeyVaultProperties
      end
      def management_policy_definition
        Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicyDefinition
      end
      def virtual_network_rule
        Azure::Storage::Mgmt::V2019_06_01::Models::VirtualNetworkRule
      end
      def management_policy_rule
        Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicyRule
      end
      def network_rule_set
        Azure::Storage::Mgmt::V2019_06_01::Models::NetworkRuleSet
      end
      def management_policy_schema
        Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicySchema
      end
      def azure_files_identity_based_authentication
        Azure::Storage::Mgmt::V2019_06_01::Models::AzureFilesIdentityBasedAuthentication
      end
      def storage_sku_list_result
        Azure::Storage::Mgmt::V2019_06_01::Models::StorageSkuListResult
      end
      def custom_domain
        Azure::Storage::Mgmt::V2019_06_01::Models::CustomDomain
      end
      def sku
        Azure::Storage::Mgmt::V2019_06_01::Models::Sku
      end
      def encryption_services
        Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionServices
      end
      def storage_account_microsoft_endpoints
        Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountMicrosoftEndpoints
      end
      def encryption
        Azure::Storage::Mgmt::V2019_06_01::Models::Encryption
      end
      def endpoints
        Azure::Storage::Mgmt::V2019_06_01::Models::Endpoints
      end
      def iprule
        Azure::Storage::Mgmt::V2019_06_01::Models::IPRule
      end
      def blob_restore_range
        Azure::Storage::Mgmt::V2019_06_01::Models::BlobRestoreRange
      end
      def active_directory_properties
        Azure::Storage::Mgmt::V2019_06_01::Models::ActiveDirectoryProperties
      end
      def blob_restore_status
        Azure::Storage::Mgmt::V2019_06_01::Models::BlobRestoreStatus
      end
      def routing_preference
        Azure::Storage::Mgmt::V2019_06_01::Models::RoutingPreference
      end
      def private_link_service_connection_state
        Azure::Storage::Mgmt::V2019_06_01::Models::PrivateLinkServiceConnectionState
      end
      def delete_retention_policy
        Azure::Storage::Mgmt::V2019_06_01::Models::DeleteRetentionPolicy
      end
      def storage_account_key
        Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountKey
      end
      def storage_account_list_keys_result
        Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountListKeysResult
      end
      def private_link_resource_list_result
        Azure::Storage::Mgmt::V2019_06_01::Models::PrivateLinkResourceListResult
      end
      def storage_account_update_parameters
        Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountUpdateParameters
      end
      def encryption_scope_key_vault_properties
        Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionScopeKeyVaultProperties
      end
      def usage
        Azure::Storage::Mgmt::V2019_06_01::Models::Usage
      end
      def file_share_items
        Azure::Storage::Mgmt::V2019_06_01::Models::FileShareItems
      end
      def account_sas_parameters
        Azure::Storage::Mgmt::V2019_06_01::Models::AccountSasParameters
      end
      def encryption_scope_list_result
        Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionScopeListResult
      end
      def metric_specification
        Azure::Storage::Mgmt::V2019_06_01::Models::MetricSpecification
      end
      def error_response
        Azure::Storage::Mgmt::V2019_06_01::Models::ErrorResponse
      end
      def storage_account_check_name_availability_parameters
        Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountCheckNameAvailabilityParameters
      end
      def file_service_items
        Azure::Storage::Mgmt::V2019_06_01::Models::FileServiceItems
      end
      def identity
        Azure::Storage::Mgmt::V2019_06_01::Models::Identity
      end
      def lease_container_response
        Azure::Storage::Mgmt::V2019_06_01::Models::LeaseContainerResponse
      end
      def storage_account_internet_endpoints
        Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountInternetEndpoints
      end
      def lease_container_request
        Azure::Storage::Mgmt::V2019_06_01::Models::LeaseContainerRequest
      end
      def blob_restore_parameters
        Azure::Storage::Mgmt::V2019_06_01::Models::BlobRestoreParameters
      end
      def resource
        Azure::Storage::Mgmt::V2019_06_01::Models::Resource
      end
      def cors_rules
        Azure::Storage::Mgmt::V2019_06_01::Models::CorsRules
      end
      def storage_account_list_result
        Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountListResult
      end
      def update_history_property
        Azure::Storage::Mgmt::V2019_06_01::Models::UpdateHistoryProperty
      end
      def usage_name
        Azure::Storage::Mgmt::V2019_06_01::Models::UsageName
      end
      def immutability_policy_properties
        Azure::Storage::Mgmt::V2019_06_01::Models::ImmutabilityPolicyProperties
      end
      def operation_display
        Azure::Storage::Mgmt::V2019_06_01::Models::OperationDisplay
      end
      def tag_property
        Azure::Storage::Mgmt::V2019_06_01::Models::TagProperty
      end
      def restriction
        Azure::Storage::Mgmt::V2019_06_01::Models::Restriction
      end
      def legal_hold_properties
        Azure::Storage::Mgmt::V2019_06_01::Models::LegalHoldProperties
      end
      def geo_replication_stats
        Azure::Storage::Mgmt::V2019_06_01::Models::GeoReplicationStats
      end
      def blob_service_items
        Azure::Storage::Mgmt::V2019_06_01::Models::BlobServiceItems
      end
      def storage_account_regenerate_key_parameters
        Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountRegenerateKeyParameters
      end
      def restore_policy_properties
        Azure::Storage::Mgmt::V2019_06_01::Models::RestorePolicyProperties
      end
      def operation
        Azure::Storage::Mgmt::V2019_06_01::Models::Operation
      end
      def legal_hold
        Azure::Storage::Mgmt::V2019_06_01::Models::LegalHold
      end
      def private_endpoint
        Azure::Storage::Mgmt::V2019_06_01::Models::PrivateEndpoint
      end
      def change_feed
        Azure::Storage::Mgmt::V2019_06_01::Models::ChangeFeed
      end
      def storage_account_create_parameters
        Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountCreateParameters
      end
      def list_container_items
        Azure::Storage::Mgmt::V2019_06_01::Models::ListContainerItems
      end
      def usage_list_result
        Azure::Storage::Mgmt::V2019_06_01::Models::UsageListResult
      end
      def cors_rule
        Azure::Storage::Mgmt::V2019_06_01::Models::CorsRule
      end
      def private_endpoint_connection
        Azure::Storage::Mgmt::V2019_06_01::Models::PrivateEndpointConnection
      end
      def storage_account
        Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccount
      end
      def management_policy
        Azure::Storage::Mgmt::V2019_06_01::Models::ManagementPolicy
      end
      def private_link_resource
        Azure::Storage::Mgmt::V2019_06_01::Models::PrivateLinkResource
      end
      def encryption_scope
        Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionScope
      end
      def proxy_resource
        Azure::Storage::Mgmt::V2019_06_01::Models::ProxyResource
      end
      def tracked_resource
        Azure::Storage::Mgmt::V2019_06_01::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::Storage::Mgmt::V2019_06_01::Models::AzureEntityResource
      end
      def blob_container
        Azure::Storage::Mgmt::V2019_06_01::Models::BlobContainer
      end
      def immutability_policy
        Azure::Storage::Mgmt::V2019_06_01::Models::ImmutabilityPolicy
      end
      def list_container_item
        Azure::Storage::Mgmt::V2019_06_01::Models::ListContainerItem
      end
      def blob_service_properties
        Azure::Storage::Mgmt::V2019_06_01::Models::BlobServiceProperties
      end
      def file_service_properties
        Azure::Storage::Mgmt::V2019_06_01::Models::FileServiceProperties
      end
      def file_share
        Azure::Storage::Mgmt::V2019_06_01::Models::FileShare
      end
      def file_share_item
        Azure::Storage::Mgmt::V2019_06_01::Models::FileShareItem
      end
      def reason_code
        Azure::Storage::Mgmt::V2019_06_01::Models::ReasonCode
      end
      def sku_name
        Azure::Storage::Mgmt::V2019_06_01::Models::SkuName
      end
      def sku_tier
        Azure::Storage::Mgmt::V2019_06_01::Models::SkuTier
      end
      def kind
        Azure::Storage::Mgmt::V2019_06_01::Models::Kind
      end
      def reason
        Azure::Storage::Mgmt::V2019_06_01::Models::Reason
      end
      def key_type
        Azure::Storage::Mgmt::V2019_06_01::Models::KeyType
      end
      def key_source
        Azure::Storage::Mgmt::V2019_06_01::Models::KeySource
      end
      def action
        Azure::Storage::Mgmt::V2019_06_01::Models::Action
      end
      def state
        Azure::Storage::Mgmt::V2019_06_01::Models::State
      end
      def bypass
        Azure::Storage::Mgmt::V2019_06_01::Models::Bypass
      end
      def default_action
        Azure::Storage::Mgmt::V2019_06_01::Models::DefaultAction
      end
      def directory_service_options
        Azure::Storage::Mgmt::V2019_06_01::Models::DirectoryServiceOptions
      end
      def access_tier
        Azure::Storage::Mgmt::V2019_06_01::Models::AccessTier
      end
      def large_file_shares_state
        Azure::Storage::Mgmt::V2019_06_01::Models::LargeFileSharesState
      end
      def routing_choice
        Azure::Storage::Mgmt::V2019_06_01::Models::RoutingChoice
      end
      def geo_replication_status
        Azure::Storage::Mgmt::V2019_06_01::Models::GeoReplicationStatus
      end
      def blob_restore_progress_status
        Azure::Storage::Mgmt::V2019_06_01::Models::BlobRestoreProgressStatus
      end
      def provisioning_state
        Azure::Storage::Mgmt::V2019_06_01::Models::ProvisioningState
      end
      def account_status
        Azure::Storage::Mgmt::V2019_06_01::Models::AccountStatus
      end
      def private_endpoint_service_connection_status
        Azure::Storage::Mgmt::V2019_06_01::Models::PrivateEndpointServiceConnectionStatus
      end
      def private_endpoint_connection_provisioning_state
        Azure::Storage::Mgmt::V2019_06_01::Models::PrivateEndpointConnectionProvisioningState
      end
      def key_permission
        Azure::Storage::Mgmt::V2019_06_01::Models::KeyPermission
      end
      def usage_unit
        Azure::Storage::Mgmt::V2019_06_01::Models::UsageUnit
      end
      def services
        Azure::Storage::Mgmt::V2019_06_01::Models::Services
      end
      def signed_resource_types
        Azure::Storage::Mgmt::V2019_06_01::Models::SignedResourceTypes
      end
      def permissions
        Azure::Storage::Mgmt::V2019_06_01::Models::Permissions
      end
      def http_protocol
        Azure::Storage::Mgmt::V2019_06_01::Models::HttpProtocol
      end
      def signed_resource
        Azure::Storage::Mgmt::V2019_06_01::Models::SignedResource
      end
      def encryption_scope_source
        Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionScopeSource
      end
      def encryption_scope_state
        Azure::Storage::Mgmt::V2019_06_01::Models::EncryptionScopeState
      end
      def public_access
        Azure::Storage::Mgmt::V2019_06_01::Models::PublicAccess
      end
      def lease_status
        Azure::Storage::Mgmt::V2019_06_01::Models::LeaseStatus
      end
      def lease_state
        Azure::Storage::Mgmt::V2019_06_01::Models::LeaseState
      end
      def lease_duration
        Azure::Storage::Mgmt::V2019_06_01::Models::LeaseDuration
      end
      def immutability_policy_state
        Azure::Storage::Mgmt::V2019_06_01::Models::ImmutabilityPolicyState
      end
      def immutability_policy_update_type
        Azure::Storage::Mgmt::V2019_06_01::Models::ImmutabilityPolicyUpdateType
      end
      def storage_account_expand
        Azure::Storage::Mgmt::V2019_06_01::Models::StorageAccountExpand
      end
      def list_key_expand
        Azure::Storage::Mgmt::V2019_06_01::Models::ListKeyExpand
      end
    end
  end
end
