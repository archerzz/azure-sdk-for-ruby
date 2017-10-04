# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic::Api_2015_02_01_preview
  module Models
    #
    # Model object.
    #
    #
    class WorkflowOutputParameter < WorkflowParameter

      include MsRestAzure

      include MsRest::JSONable
      # @return Gets the error.
      attr_accessor :error


      #
      # Mapper for WorkflowOutputParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkflowOutputParameter',
          type: {
            name: 'Composite',
            class_name: 'WorkflowOutputParameter',
            model_properties: {
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ParameterType'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Object'
                }
              },
              metadata: {
                required: false,
                serialized_name: 'metadata',
                type: {
                  name: 'Object'
                }
              },
              error: {
                required: false,
                read_only: true,
                serialized_name: 'error',
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
