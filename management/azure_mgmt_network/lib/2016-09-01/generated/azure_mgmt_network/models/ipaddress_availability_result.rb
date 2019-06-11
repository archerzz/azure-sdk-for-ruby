# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_09_01
  module Models
    #
    # Response for CheckIPAddressAvailability API service call
    #
    class IPAddressAvailabilityResult

      include MsRestAzure

      # @return [Boolean] Private IP address availability.
      attr_accessor :available

      # @return [Array<String>] Contains other available private IP addresses
      # if the asked for address is taken.
      attr_accessor :available_ipaddresses


      #
      # Mapper for IPAddressAvailabilityResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IPAddressAvailabilityResult',
          type: {
            name: 'Composite',
            class_name: 'IPAddressAvailabilityResult',
            model_properties: {
              available: {
                required: false,
                serialized_name: 'available',
                type: {
                  name: 'Boolean'
                }
              },
              available_ipaddresses: {
                required: false,
                serialized_name: 'availableIPAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
