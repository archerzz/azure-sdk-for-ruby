# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2017_09_01
  module Models
    #
    # List of packet capture sessions.
    #
    class PacketCaptureListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<PacketCaptureResult>] Information about packet capture
      # sessions.
      attr_accessor :value


      #
      # Mapper for PacketCaptureListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PacketCaptureListResult',
          type: {
            name: 'Composite',
            class_name: 'PacketCaptureListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PacketCaptureResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PacketCaptureResult'
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
