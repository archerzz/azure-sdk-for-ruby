# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # VMware Cbt Policy creation input.
    #
    class VMwareCbtPolicyCreationInput < PolicyProviderSpecificInput

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @instanceType = "VMwareCbt"
      end

      attr_accessor :instanceType

      # @return [Integer] The duration in minutes until which the recovery
      # points need to be stored.
      attr_accessor :recovery_point_history

      # @return [Integer] The crash consistent snapshot frequency (in minutes).
      attr_accessor :crash_consistent_frequency_in_minutes

      # @return [Integer] The app consistent snapshot frequency (in minutes).
      attr_accessor :app_consistent_frequency_in_minutes


      #
      # Mapper for VMwareCbtPolicyCreationInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VMwareCbt',
          type: {
            name: 'Composite',
            class_name: 'VMwareCbtPolicyCreationInput',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_history: {
                required: false,
                serialized_name: 'recoveryPointHistory',
                type: {
                  name: 'Number'
                }
              },
              crash_consistent_frequency_in_minutes: {
                required: false,
                serialized_name: 'crashConsistentFrequencyInMinutes',
                type: {
                  name: 'Number'
                }
              },
              app_consistent_frequency_in_minutes: {
                required: false,
                serialized_name: 'appConsistentFrequencyInMinutes',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
