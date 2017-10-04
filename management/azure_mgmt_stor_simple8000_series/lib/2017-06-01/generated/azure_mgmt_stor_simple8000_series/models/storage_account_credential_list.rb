# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The collection of storage account credential entities.
    #
    class StorageAccountCredentialList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<StorageAccountCredential>] The value.
      attr_accessor :value


      #
      # Mapper for StorageAccountCredentialList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageAccountCredentialList',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountCredentialList',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StorageAccountCredentialElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StorageAccountCredential'
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
