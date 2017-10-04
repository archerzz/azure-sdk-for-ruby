# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2015_05_01_preview
  module Models
    #
    # Virtual Network resource
    #
    class VirtualNetwork < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [AddressSpace] Gets or sets AddressSpace that contains an array
      # of IP address ranges that can be used by subnets
      attr_accessor :address_space

      # @return [DhcpOptions] Gets or sets DHCPOptions that contains an array
      # of DNS servers available to VMs deployed in the virtual network
      attr_accessor :dhcp_options

      # @return [Array<Subnet>] Gets or sets List of subnets in a
      # VirtualNetwork
      attr_accessor :subnets

      # @return [String] Gets or sets resource guid property of the
      # VirtualNetwork resource
      attr_accessor :resource_guid

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated
      attr_accessor :etag


      #
      # Mapper for VirtualNetwork class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualNetwork',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetwork',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              address_space: {
                required: false,
                serialized_name: 'properties.addressSpace',
                type: {
                  name: 'Composite',
                  class_name: 'AddressSpace'
                }
              },
              dhcp_options: {
                required: false,
                serialized_name: 'properties.dhcpOptions',
                type: {
                  name: 'Composite',
                  class_name: 'DhcpOptions'
                }
              },
              subnets: {
                required: false,
                serialized_name: 'properties.subnets',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubnetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Subnet'
                      }
                  }
                }
              },
              resource_guid: {
                required: false,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
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
