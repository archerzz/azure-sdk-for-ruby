# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic::Api_2016_06_01
  module Models
    #
    # The workflow trigger.
    #
    class WorkflowTrigger < MsRestAzure::SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [WorkflowTriggerProvisioningState] Gets the provisioning state.
      # Possible values include: 'NotSpecified', 'Accepted', 'Running',
      # 'Ready', 'Creating', 'Created', 'Deleting', 'Deleted', 'Canceled',
      # 'Failed', 'Succeeded', 'Moving', 'Updating', 'Registering',
      # 'Registered', 'Unregistering', 'Unregistered', 'Completed'
      attr_accessor :provisioning_state

      # @return [DateTime] Gets the created time.
      attr_accessor :created_time

      # @return [DateTime] Gets the changed time.
      attr_accessor :changed_time

      # @return [WorkflowState] Gets the state. Possible values include:
      # 'NotSpecified', 'Completed', 'Enabled', 'Disabled', 'Deleted',
      # 'Suspended'
      attr_accessor :state

      # @return [WorkflowStatus] Gets the status. Possible values include:
      # 'NotSpecified', 'Paused', 'Running', 'Waiting', 'Succeeded', 'Skipped',
      # 'Suspended', 'Cancelled', 'Failed', 'Faulted', 'TimedOut', 'Aborted',
      # 'Ignored'
      attr_accessor :status

      # @return [DateTime] Gets the last execution time.
      attr_accessor :last_execution_time

      # @return [DateTime] Gets the next execution time.
      attr_accessor :next_execution_time

      # @return [WorkflowTriggerRecurrence] Gets the workflow trigger
      # recurrence.
      attr_accessor :recurrence

      # @return [ResourceReference] Gets the reference to workflow.
      attr_accessor :workflow

      # @return [String] Gets the workflow trigger name.
      attr_accessor :name

      # @return [String] Gets the workflow trigger type.
      attr_accessor :type


      #
      # Mapper for WorkflowTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkflowTrigger',
          type: {
            name: 'Composite',
            class_name: 'WorkflowTrigger',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'WorkflowTriggerProvisioningState'
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
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'WorkflowState'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'WorkflowStatus'
                }
              },
              last_execution_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastExecutionTime',
                type: {
                  name: 'DateTime'
                }
              },
              next_execution_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.nextExecutionTime',
                type: {
                  name: 'DateTime'
                }
              },
              recurrence: {
                required: false,
                read_only: true,
                serialized_name: 'properties.recurrence',
                type: {
                  name: 'Composite',
                  class_name: 'WorkflowTriggerRecurrence'
                }
              },
              workflow: {
                required: false,
                read_only: true,
                serialized_name: 'properties.workflow',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceReference'
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
              }
            }
          }
        }
      end
    end
  end
end
