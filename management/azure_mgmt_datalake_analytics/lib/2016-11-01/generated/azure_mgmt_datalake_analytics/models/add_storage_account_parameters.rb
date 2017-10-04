# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics::Api_2016_11_01
  module Models
    #
    # Storage account parameters for a storage account being added to a Data
    # Lake Analytics account.
    #
    class AddStorageAccountParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] the access key associated with this Azure Storage
      # account that will be used to connect to it.
      attr_accessor :access_key

      # @return [String] the optional suffix for the storage account.
      attr_accessor :suffix


      #
      # Mapper for AddStorageAccountParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AddStorageAccountParameters',
          type: {
            name: 'Composite',
            class_name: 'AddStorageAccountParameters',
            model_properties: {
              access_key: {
                required: true,
                serialized_name: 'properties.accessKey',
                type: {
                  name: 'String'
                }
              },
              suffix: {
                required: false,
                serialized_name: 'properties.suffix',
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
