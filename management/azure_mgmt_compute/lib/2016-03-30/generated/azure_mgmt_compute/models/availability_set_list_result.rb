# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2016_03_30
  module Models
    #
    # The List Availability Set operation response.
    #
    class AvailabilitySetListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<AvailabilitySet>] The list of availability sets
      attr_accessor :value


      #
      # Mapper for AvailabilitySetListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AvailabilitySetListResult',
          type: {
            name: 'Composite',
            class_name: 'AvailabilitySetListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AvailabilitySetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AvailabilitySet'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
