# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN::Api_2015_06_01
  module Models
    #
    # CDN profile represents the top level resource and the entry point into
    # the CDN API. This allows users to set up a logical grouping of endpoints
    # in addition to creating shared configuration settings and selecting
    # pricing tiers and providers.
    #
    class Profile < TrackedResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Sku] The SKU (pricing tier) of the CDN profile.
      attr_accessor :sku

      # @return [ProfileResourceState] Resource status of the profile. Possible
      # values include: 'Creating', 'Active', 'Deleting', 'Disabled'
      attr_accessor :resource_state

      # @return [ProvisioningState] Provisioning status of the profile.
      # Possible values include: 'Creating', 'Succeeded', 'Failed'
      attr_accessor :provisioning_state


      #
      # Mapper for Profile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Profile',
          type: {
            name: 'Composite',
            class_name: 'Profile',
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
                required: true,
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
              sku: {
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              resource_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'Enum',
                  module: 'ProfileResourceState'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              }
            }
          }
        }
      end
    end
  end
end
