# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2017_03_30
  module Models
    #
    # Specifies the network interfaces of the virtual machine.
    #
    class NetworkProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<NetworkInterfaceReference>] Specifies the list of
      # resource Ids for the network interfaces associated with the virtual
      # machine.
      attr_accessor :network_interfaces


      #
      # Mapper for NetworkProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NetworkProfile',
          type: {
            name: 'Composite',
            class_name: 'NetworkProfile',
            model_properties: {
              network_interfaces: {
                required: false,
                serialized_name: 'networkInterfaces',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NetworkInterfaceReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterfaceReference'
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
