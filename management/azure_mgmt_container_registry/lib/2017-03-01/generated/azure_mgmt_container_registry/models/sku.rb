# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerRegistry::Api_2017_03_01
  module Models
    #
    # The SKU of a container registry.
    #
    class Sku

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The SKU name of the container registry. Required for
      # registry creation. Allowed value: Basic.
      attr_accessor :name

      # @return [SkuTier] The SKU tier based on the SKU name. Possible values
      # include: 'Basic'
      attr_accessor :tier


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: false,
                read_only: true,
                serialized_name: 'tier',
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
