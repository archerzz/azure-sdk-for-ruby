# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics::Api_2015_10_01_preview
  module Models
    #
    # Azure Storage blob container information.
    #
    class BlobContainer

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] the name of the blob container.
      attr_accessor :name

      # @return [String] the unique identifier of the blob container.
      attr_accessor :id

      # @return [String] the type of the blob container.
      attr_accessor :type

      # @return [BlobContainerProperties] the properties of the blob container.
      attr_accessor :properties


      #
      # Mapper for BlobContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BlobContainer',
          type: {
            name: 'Composite',
            class_name: 'BlobContainer',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              properties: {
                required: false,
                read_only: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'BlobContainerProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
