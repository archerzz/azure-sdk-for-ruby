# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN::Api_2016_10_02
  module Models
    #
    # Input of CheckNameAvailability API.
    #
    class CheckNameAvailabilityInput

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The resource name to validate.
      attr_accessor :name

      # @return [String] The type of the resource whose name is to be
      # validated. Default value: 'Microsoft.Cdn/Profiles/Endpoints' .
      attr_accessor :type


      #
      # Mapper for CheckNameAvailabilityInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckNameAvailabilityInput',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityInput',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Microsoft.Cdn/Profiles/Endpoints',
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
