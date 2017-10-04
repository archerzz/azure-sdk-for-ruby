# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The eligibility result of failover set, for failover.
    #
    class FailoverSetEligibilityResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] Represents if this failover set is eligible for
      # failover or not.
      attr_accessor :is_eligible_for_failover

      # @return [String] The error message, if the failover set is not eligible
      # for failover.
      attr_accessor :error_message


      #
      # Mapper for FailoverSetEligibilityResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FailoverSetEligibilityResult',
          type: {
            name: 'Composite',
            class_name: 'FailoverSetEligibilityResult',
            model_properties: {
              is_eligible_for_failover: {
                required: false,
                serialized_name: 'isEligibleForFailover',
                type: {
                  name: 'Boolean'
                }
              },
              error_message: {
                required: false,
                serialized_name: 'errorMessage',
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
