# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.1.14.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_06_01
  module Models
    #
    # Simple policy schedule.
    #
    class SimpleSchedulePolicy < SchedulePolicy

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @schedulePolicyType = "SimpleSchedulePolicy"
      end

      attr_accessor :schedulePolicyType

      # @return [ScheduleRunType] Defines the frequency interval (daily or
      # weekly) for the schedule policy. Possible values include: 'Invalid',
      # 'Daily', 'Weekly'
      attr_accessor :schedule_run_frequency

      # @return [Array<DayOfWeek>] This list is the days of the week when the
      # schedule runs.
      attr_accessor :schedule_run_days

      # @return [Array<DateTime>] List of times, during a day, when the
      # schedule runs.
      attr_accessor :schedule_run_times

      # @return [Integer] The number of times per week the schedule runs.
      attr_accessor :schedule_weekly_frequency


      #
      # Mapper for SimpleSchedulePolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SimpleSchedulePolicy',
          type: {
            name: 'Composite',
            class_name: 'SimpleSchedulePolicy',
            model_properties: {
              schedulePolicyType: {
                required: true,
                serialized_name: 'schedulePolicyType',
                type: {
                  name: 'String'
                }
              },
              schedule_run_frequency: {
                required: false,
                serialized_name: 'scheduleRunFrequency',
                type: {
                  name: 'Enum',
                  module: 'ScheduleRunType'
                }
              },
              schedule_run_days: {
                required: false,
                serialized_name: 'scheduleRunDays',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DayOfWeekElementType',
                      type: {
                        name: 'Enum',
                        module: 'DayOfWeek'
                      }
                  }
                }
              },
              schedule_run_times: {
                required: false,
                serialized_name: 'scheduleRunTimes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DateTimeElementType',
                      type: {
                        name: 'DateTime'
                      }
                  }
                }
              },
              schedule_weekly_frequency: {
                required: false,
                serialized_name: 'scheduleWeeklyFrequency',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
