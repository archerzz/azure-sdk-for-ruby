# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Batch::Api_2017_05_01
  module Models
    #
    # A REST API operation
    #
    #
    class Operation

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The operation name. This is of the format
      # {provider}/{resource}/{operation}
      attr_accessor :name

      # @return [OperationDisplay] The object that describes the operation.
      attr_accessor :display

      # @return [String] The intended executor of the operation.
      attr_accessor :origin

      # @return Properties of the operation.
      attr_accessor :properties


      #
      # Mapper for Operation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Operation',
          type: {
            name: 'Composite',
            class_name: 'Operation',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'OperationDisplay'
                }
              },
              origin: {
                required: false,
                serialized_name: 'origin',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
