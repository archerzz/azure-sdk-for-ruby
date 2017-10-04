# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2015_05_01_preview
  module Models
    #
    # Properties of column in sync group table.
    #
    class SyncGroupSchemaTableColumn

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Quoted name of sync group table column.
      attr_accessor :quoted_name

      # @return [String] Data size of the column.
      attr_accessor :data_size

      # @return [String] Data type of the column.
      attr_accessor :data_type


      #
      # Mapper for SyncGroupSchemaTableColumn class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SyncGroupSchemaTableColumn',
          type: {
            name: 'Composite',
            class_name: 'SyncGroupSchemaTableColumn',
            model_properties: {
              quoted_name: {
                required: false,
                serialized_name: 'quotedName',
                type: {
                  name: 'String'
                }
              },
              data_size: {
                required: false,
                serialized_name: 'dataSize',
                type: {
                  name: 'String'
                }
              },
              data_type: {
                required: false,
                serialized_name: 'dataType',
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
