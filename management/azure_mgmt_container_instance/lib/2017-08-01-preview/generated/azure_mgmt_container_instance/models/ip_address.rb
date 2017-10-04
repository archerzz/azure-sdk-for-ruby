# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerInstance::Api_2017_08_01_preview
  module Models
    #
    # IP address for the container group.
    #
    class IpAddress

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<Port>] The list of ports exposed on the container group.
      attr_accessor :ports

      # @return [String] Specifies if the IP is exposed to the public internet.
      # Default value: 'Public' .
      attr_accessor :type

      # @return [String] The IP exposed to the public internet.
      attr_accessor :ip


      #
      # Mapper for IpAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IpAddress',
          type: {
            name: 'Composite',
            class_name: 'IpAddress',
            model_properties: {
              ports: {
                required: true,
                serialized_name: 'ports',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PortElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Port'
                      }
                  }
                }
              },
              type: {
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Public',
                type: {
                  name: 'String'
                }
              },
              ip: {
                required: false,
                serialized_name: 'ip',
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
