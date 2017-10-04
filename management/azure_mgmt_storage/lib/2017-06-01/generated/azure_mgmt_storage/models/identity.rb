# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Storage::Api_2017_06_01
  module Models
    #
    # Identity for the resource.
    #
    class Identity

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The principal ID of resource identity.
      attr_accessor :principal_id

      # @return [String] The tenant ID of resource.
      attr_accessor :tenant_id

      # @return [String] The identity type. Default value: 'SystemAssigned' .
      attr_accessor :type


      #
      # Mapper for Identity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Identity',
          type: {
            name: 'Composite',
            class_name: 'Identity',
            model_properties: {
              principal_id: {
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'SystemAssigned',
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
