# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub::Api_2017_01_19
  module Models
    #
    # The description of the IoT hub.
    #
    class IotHubDescription < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The subscription identifier.
      attr_accessor :subscriptionid

      # @return [String] The name of the resource group that contains the IoT
      # hub. A resource group name uniquely identifies the resource group
      # within the subscription.
      attr_accessor :resourcegroup

      # @return [String] The Etag field is *not* required. If it is provided in
      # the response body, it must also be provided as a header per the normal
      # ETag convention.
      attr_accessor :etag

      # @return [IotHubProperties]
      attr_accessor :properties

      # @return [IotHubSkuInfo]
      attr_accessor :sku


      #
      # Mapper for IotHubDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IotHubDescription',
          type: {
            name: 'Composite',
            class_name: 'IotHubDescription',
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
                constraints: {
                  Pattern: '^(?![0-9]+$)(?!-)[a-zA-Z0-9-]{2,49}[a-zA-Z0-9]$'
                },
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
              subscriptionid: {
                required: true,
                serialized_name: 'subscriptionid',
                type: {
                  name: 'String'
                }
              },
              resourcegroup: {
                required: true,
                serialized_name: 'resourcegroup',
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
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'IotHubProperties'
                }
              },
              sku: {
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'IotHubSkuInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
