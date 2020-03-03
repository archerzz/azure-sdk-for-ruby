# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_02_01
  module Models
    #
    # The list of available versions for an agent pool.
    #
    class AgentPoolAvailableVersions

      include MsRestAzure

      # @return [String] Id of the agent pool available versions.
      attr_accessor :id

      # @return [String] Name of the agent pool available versions.
      attr_accessor :name

      # @return [String] Type of the agent pool  available versions.
      attr_accessor :type

      # @return
      # [Array<AgentPoolAvailableVersionsPropertiesAgentPoolVersionsItem>] List
      # of versions available for agent pool.
      attr_accessor :agent_pool_versions


      #
      # Mapper for AgentPoolAvailableVersions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AgentPoolAvailableVersions',
          type: {
            name: 'Composite',
            class_name: 'AgentPoolAvailableVersions',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              agent_pool_versions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.agentPoolVersions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AgentPoolAvailableVersionsPropertiesAgentPoolVersionsItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AgentPoolAvailableVersionsPropertiesAgentPoolVersionsItem'
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
