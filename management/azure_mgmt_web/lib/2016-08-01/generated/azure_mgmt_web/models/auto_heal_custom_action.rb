# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_08_01
  module Models
    #
    # Custom action to be executed
    # when an auto heal rule is triggered.
    #
    class AutoHealCustomAction

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Executable to be run.
      attr_accessor :exe

      # @return [String] Parameters for the executable.
      attr_accessor :parameters


      #
      # Mapper for AutoHealCustomAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AutoHealCustomAction',
          type: {
            name: 'Composite',
            class_name: 'AutoHealCustomAction',
            model_properties: {
              exe: {
                required: false,
                serialized_name: 'exe',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'parameters',
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
