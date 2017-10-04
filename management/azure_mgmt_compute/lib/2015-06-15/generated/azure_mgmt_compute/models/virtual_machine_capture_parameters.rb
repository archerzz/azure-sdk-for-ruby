# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2015_06_15
  module Models
    #
    # Capture Virtual Machine parameters.
    #
    class VirtualMachineCaptureParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The captured virtual hard disk's name prefix.
      attr_accessor :vhd_prefix

      # @return [String] The destination container name.
      attr_accessor :destination_container_name

      # @return [Boolean] Specifies whether to overwrite the destination
      # virtual hard disk, in case of conflict.
      attr_accessor :overwrite_vhds


      #
      # Mapper for VirtualMachineCaptureParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineCaptureParameters',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineCaptureParameters',
            model_properties: {
              vhd_prefix: {
                required: true,
                serialized_name: 'vhdPrefix',
                type: {
                  name: 'String'
                }
              },
              destination_container_name: {
                required: true,
                serialized_name: 'destinationContainerName',
                type: {
                  name: 'String'
                }
              },
              overwrite_vhds: {
                required: true,
                serialized_name: 'overwriteVhds',
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
