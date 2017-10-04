# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation::Api_2015_10_31
  module Models
    #
    # The parameters supplied to the create or update node configuration
    # operation.
    #
    class DscNodeConfigurationCreateOrUpdateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [ContentSource] Gets or sets the source.
      attr_accessor :source

      # @return [String] Gets or sets the type of the parameter.
      attr_accessor :name

      # @return [DscConfigurationAssociationProperty] Gets or sets the
      # configuration of the node.
      attr_accessor :configuration


      #
      # Mapper for DscNodeConfigurationCreateOrUpdateParameters class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DscNodeConfigurationCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'DscNodeConfigurationCreateOrUpdateParameters',
            model_properties: {
              source: {
                required: true,
                serialized_name: 'source',
                type: {
                  name: 'Composite',
                  class_name: 'ContentSource'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              configuration: {
                required: true,
                serialized_name: 'configuration',
                type: {
                  name: 'Composite',
                  class_name: 'DscConfigurationAssociationProperty'
                }
              }
            }
          }
        }
      end
    end
  end
end
