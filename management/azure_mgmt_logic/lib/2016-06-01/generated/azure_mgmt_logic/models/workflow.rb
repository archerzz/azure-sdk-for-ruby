# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic::Api_2016_06_01
  module Models
    #
    # The workflow type.
    #
    class Workflow < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [WorkflowProvisioningState] Gets the provisioning state.
      # Possible values include: 'NotSpecified', 'Accepted', 'Running',
      # 'Ready', 'Creating', 'Created', 'Deleting', 'Deleted', 'Canceled',
      # 'Failed', 'Succeeded', 'Moving', 'Updating', 'Registering',
      # 'Registered', 'Unregistering', 'Unregistered', 'Completed'
      attr_accessor :provisioning_state

      # @return [DateTime] Gets the created time.
      attr_accessor :created_time

      # @return [DateTime] Gets the changed time.
      attr_accessor :changed_time

      # @return [WorkflowState] The state. Possible values include:
      # 'NotSpecified', 'Completed', 'Enabled', 'Disabled', 'Deleted',
      # 'Suspended'
      attr_accessor :state

      # @return [String] Gets the version.
      attr_accessor :version

      # @return [String] Gets the access endpoint.
      attr_accessor :access_endpoint

      # @return [Sku] The sku.
      attr_accessor :sku

      # @return [ResourceReference] The integration account.
      attr_accessor :integration_account

      # @return The definition.
      attr_accessor :definition

      # @return [Hash{String => WorkflowParameter}] The parameters.
      attr_accessor :parameters


      #
      # Mapper for Workflow class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Workflow',
          type: {
            name: 'Composite',
            class_name: 'Workflow',
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
                required: false,
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
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'WorkflowProvisioningState'
                }
              },
              created_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdTime',
                type: {
                  name: 'DateTime'
                }
              },
              changed_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.changedTime',
                type: {
                  name: 'DateTime'
                }
              },
              state: {
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'WorkflowState'
                }
              },
              version: {
                required: false,
                read_only: true,
                serialized_name: 'properties.version',
                type: {
                  name: 'String'
                }
              },
              access_endpoint: {
                required: false,
                read_only: true,
                serialized_name: 'properties.accessEndpoint',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              integration_account: {
                required: false,
                serialized_name: 'properties.integrationAccount',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceReference'
                }
              },
              definition: {
                required: false,
                serialized_name: 'properties.definition',
                type: {
                  name: 'Object'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'WorkflowParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WorkflowParameter'
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
