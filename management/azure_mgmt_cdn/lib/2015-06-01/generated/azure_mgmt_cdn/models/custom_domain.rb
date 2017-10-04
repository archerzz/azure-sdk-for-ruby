# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN::Api_2015_06_01
  module Models
    #
    # CDN CustomDomain represents a mapping between a user specified domain
    # name and a CDN endpoint. This is to use custom domain names to represent
    # the URLs for branding purposes.
    #
    class CustomDomain < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The host name of the custom domain. Must be a domain
      # name.
      attr_accessor :host_name

      # @return [CustomDomainResourceState] Resource status of the custom
      # domain. Possible values include: 'Creating', 'Active', 'Deleting'
      attr_accessor :resource_state

      # @return [ProvisioningState] Provisioning status of the custom domain.
      # Possible values include: 'Creating', 'Succeeded', 'Failed'
      attr_accessor :provisioning_state


      #
      # Mapper for CustomDomain class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CustomDomain',
          type: {
            name: 'Composite',
            class_name: 'CustomDomain',
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
              host_name: {
                required: true,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              resource_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'Enum',
                  module: 'CustomDomainResourceState'
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
