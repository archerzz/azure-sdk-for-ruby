# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Reverse replication input properties.
    #
    class ReverseReplicationInputProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Failover direction.
      attr_accessor :failover_direction

      # @return [ReverseReplicationProviderSpecificInput] Provider specific
      # reverse replication input.
      attr_accessor :provider_specific_details


      #
      # Mapper for ReverseReplicationInputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ReverseReplicationInputProperties',
          type: {
            name: 'Composite',
            class_name: 'ReverseReplicationInputProperties',
            model_properties: {
              failover_direction: {
                required: false,
                serialized_name: 'failoverDirection',
                type: {
                  name: 'String'
                }
              },
              provider_specific_details: {
                required: false,
                serialized_name: 'providerSpecificDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'ReverseReplicationProviderSpecificInput',
                  class_name: 'ReverseReplicationProviderSpecificInput'
                }
              }
            }
          }
        }
      end
    end
  end
end
