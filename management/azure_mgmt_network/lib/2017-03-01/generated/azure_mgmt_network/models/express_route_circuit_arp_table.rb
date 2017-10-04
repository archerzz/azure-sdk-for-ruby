# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2017_03_01
  module Models
    #
    # The ARP table associated with the ExpressRouteCircuit.
    #
    class ExpressRouteCircuitArpTable

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] Age
      attr_accessor :age

      # @return [String] Interface
      attr_accessor :interface

      # @return [String] The IP address.
      attr_accessor :ip_address

      # @return [String] The MAC address.
      attr_accessor :mac_address


      #
      # Mapper for ExpressRouteCircuitArpTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteCircuitArpTable',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitArpTable',
            model_properties: {
              age: {
                required: false,
                serialized_name: 'age',
                type: {
                  name: 'Number'
                }
              },
              interface: {
                required: false,
                serialized_name: 'interface',
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                required: false,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              mac_address: {
                required: false,
                serialized_name: 'macAddress',
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
