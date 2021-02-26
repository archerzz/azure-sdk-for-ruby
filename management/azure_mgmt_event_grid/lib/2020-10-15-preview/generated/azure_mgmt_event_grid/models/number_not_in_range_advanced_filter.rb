# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_10_15_preview
  module Models
    #
    # NumberNotInRange Advanced Filter.
    #
    class NumberNotInRangeAdvancedFilter < AdvancedFilter

      include MsRestAzure


      def initialize
        @operatorType = "NumberNotInRange"
      end

      attr_accessor :operatorType

      # @return [Array<Array<Float>>] The set of filter values.
      attr_accessor :values


      #
      # Mapper for NumberNotInRangeAdvancedFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NumberNotInRange',
          type: {
            name: 'Composite',
            class_name: 'NumberNotInRangeAdvancedFilter',
            model_properties: {
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key',
                type: {
                  name: 'String'
                }
              },
              operatorType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'operatorType',
                type: {
                  name: 'String'
                }
              },
              values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'FloatElementType',
                            type: {
                              name: 'Double'
                            }
                        }
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
