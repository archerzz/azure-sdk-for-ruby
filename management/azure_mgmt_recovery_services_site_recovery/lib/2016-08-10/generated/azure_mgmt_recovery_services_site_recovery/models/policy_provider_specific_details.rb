# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Base class for Provider specific details for policies.
    #
    class PolicyProviderSpecificDetails

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["HyperVReplicaAzure"] = "HyperVReplicaAzurePolicyDetails"
      @@discriminatorMap["HyperVReplicaBasePolicyDetails"] = "HyperVReplicaBasePolicyDetails"
      @@discriminatorMap["HyperVReplica2012"] = "HyperVReplicaPolicyDetails"
      @@discriminatorMap["HyperVReplica2012R2"] = "HyperVReplicaBluePolicyDetails"
      @@discriminatorMap["InMageBasePolicyDetails"] = "InMageBasePolicyDetails"
      @@discriminatorMap["InMageAzureV2"] = "InMageAzureV2PolicyDetails"
      @@discriminatorMap["InMage"] = "InMagePolicyDetails"
      @@discriminatorMap["A2A"] = "A2APolicyDetails"
      @@discriminatorMap["RcmAzureMigration"] = "RcmAzureMigrationPolicyDetails"
      @@discriminatorMap["VMwareCbt"] = "VmwareCbtPolicyDetails"

      def initialize
        @instanceType = "PolicyProviderSpecificDetails"
      end

      attr_accessor :instanceType


      #
      # Mapper for PolicyProviderSpecificDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PolicyProviderSpecificDetails',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'PolicyProviderSpecificDetails',
            class_name: 'PolicyProviderSpecificDetails',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
