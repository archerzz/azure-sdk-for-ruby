# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2016_04_30_preview
  module Models
    #
    # Describes an available virtual machine scale set sku.
    #
    class VirtualMachineScaleSetSku

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The type of resource the sku applies to.
      attr_accessor :resource_type

      # @return [Sku] The Sku.
      attr_accessor :sku

      # @return [VirtualMachineScaleSetSkuCapacity] Available scaling
      # information.
      attr_accessor :capacity


      #
      # Mapper for VirtualMachineScaleSetSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetSku',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetSku',
            model_properties: {
              resource_type: {
                required: false,
                read_only: true,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: false,
                read_only: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              capacity: {
                required: false,
                read_only: true,
                serialized_name: 'capacity',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetSkuCapacity'
                }
              }
            }
          }
        }
      end
    end
  end
end
