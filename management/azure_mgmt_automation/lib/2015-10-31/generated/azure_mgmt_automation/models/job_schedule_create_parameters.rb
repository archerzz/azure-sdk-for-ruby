# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # The parameters supplied to the create job schedule operation.
    #
    class JobScheduleCreateParameters

      include MsRestAzure

      # @return [ScheduleAssociationProperty] Gets or sets the schedule.
      attr_accessor :schedule

      # @return [RunbookAssociationProperty] Gets or sets the runbook.
      attr_accessor :runbook

      # @return [String] Gets or sets the hybrid worker group that the
      # scheduled job should run on.
      attr_accessor :run_on

      # @return [Hash{String => String}] Gets or sets a list of job properties.
      attr_accessor :parameters


      #
      # Mapper for JobScheduleCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobScheduleCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'JobScheduleCreateParameters',
            model_properties: {
              schedule: {
                required: true,
                serialized_name: 'properties.schedule',
                type: {
                  name: 'Composite',
                  class_name: 'ScheduleAssociationProperty'
                }
              },
              runbook: {
                required: true,
                serialized_name: 'properties.runbook',
                type: {
                  name: 'Composite',
                  class_name: 'RunbookAssociationProperty'
                }
              },
              run_on: {
                required: false,
                serialized_name: 'properties.runOn',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'properties.parameters',
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
              }
            }
          }
        }
      end
    end
  end
end
