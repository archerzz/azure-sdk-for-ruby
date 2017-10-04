# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerInstance::Api_2017_08_01_preview
  module Models
    #
    # The port exposed on the container instance.
    #
    class ContainerPort

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The port number exposed within the container group.
      attr_accessor :port


      #
      # Mapper for ContainerPort class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerPort',
          type: {
            name: 'Composite',
            class_name: 'ContainerPort',
            model_properties: {
              port: {
                required: true,
                serialized_name: 'port',
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
