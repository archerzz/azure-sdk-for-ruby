# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.1.14.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_06_01
  module Models
    #
    # Additional information for the Azure VM (also known as IaaS VM)-specific
    # backup item.
    #
    class AzureIaaSVMProtectedItemExtendedInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] The oldest backup copy available for this backup
      # item.
      attr_accessor :oldest_recovery_point

      # @return [Integer] The number of backup copies available for this backup
      # item.
      attr_accessor :recovery_point_count

      # @return [Boolean] Specifies if the backup policy associated with the
      # backup item is inconsistent.
      attr_accessor :policy_inconsistent


      #
      # Mapper for AzureIaaSVMProtectedItemExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureIaaSVMProtectedItemExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'AzureIaaSVMProtectedItemExtendedInfo',
            model_properties: {
              oldest_recovery_point: {
                required: false,
                serialized_name: 'oldestRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              recovery_point_count: {
                required: false,
                serialized_name: 'recoveryPointCount',
                type: {
                  name: 'Number'
                }
              },
              policy_inconsistent: {
                required: false,
                serialized_name: 'policyInconsistent',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
