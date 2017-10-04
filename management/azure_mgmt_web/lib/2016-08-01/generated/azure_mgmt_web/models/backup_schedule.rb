# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_08_01
  module Models
    #
    # Description of a backup schedule. Describes how often should be the
    # backup performed and what should be the retention policy.
    #
    class BackupSchedule

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] How often the backup should be executed (e.g. for
      # weekly backup, this should be set to 7 and FrequencyUnit should be set
      # to Day). Default value: 7 .
      attr_accessor :frequency_interval

      # @return [FrequencyUnit] The unit of time for how often the backup
      # should be executed (e.g. for weekly backup, this should be set to Day
      # and FrequencyInterval should be set to 7). Possible values include:
      # 'Day', 'Hour'. Default value: 'Day' .
      attr_accessor :frequency_unit

      # @return [Boolean] True if the retention policy should always keep at
      # least one backup in the storage account, regardless how old it is;
      # false otherwise. Default value: true .
      attr_accessor :keep_at_least_one_backup

      # @return [Integer] After how many days backups should be deleted.
      # Default value: 30 .
      attr_accessor :retention_period_in_days

      # @return [DateTime] When the schedule should start working.
      attr_accessor :start_time

      # @return [DateTime] Last time when this schedule was triggered.
      attr_accessor :last_execution_time


      #
      # Mapper for BackupSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackupSchedule',
          type: {
            name: 'Composite',
            class_name: 'BackupSchedule',
            model_properties: {
              frequency_interval: {
                required: true,
                serialized_name: 'frequencyInterval',
                default_value: 7,
                type: {
                  name: 'Number'
                }
              },
              frequency_unit: {
                required: true,
                serialized_name: 'frequencyUnit',
                default_value: 'Day',
                type: {
                  name: 'Enum',
                  module: 'FrequencyUnit'
                }
              },
              keep_at_least_one_backup: {
                required: true,
                serialized_name: 'keepAtLeastOneBackup',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              retention_period_in_days: {
                required: true,
                serialized_name: 'retentionPeriodInDays',
                default_value: 30,
                type: {
                  name: 'Number'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_execution_time: {
                required: false,
                read_only: true,
                serialized_name: 'lastExecutionTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
