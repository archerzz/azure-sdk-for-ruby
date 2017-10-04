# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # InMage Azure V2 provider specific recovery point details.
    #
    class InMageAzureV2RecoveryPointDetails < ProviderSpecificRecoveryPointDetails

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Gets the instance type.
      attr_accessor :instance_type

      # @return [String] A value indicating whether the recovery point is multi
      # VM consistent.
      attr_accessor :is_multi_vm_sync_point


      #
      # Mapper for InMageAzureV2RecoveryPointDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'InMageAzureV2RecoveryPointDetails',
          type: {
            name: 'Composite',
            class_name: 'InMageAzureV2RecoveryPointDetails',
            model_properties: {
              type: {
                required: false,
                read_only: true,
                serialized_name: 'Type',
                type: {
                  name: 'String'
                }
              },
              instance_type: {
                required: false,
                read_only: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              is_multi_vm_sync_point: {
                required: false,
                serialized_name: 'isMultiVmSyncPoint',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
