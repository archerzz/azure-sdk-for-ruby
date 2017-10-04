# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The schedule recurrence.
    #
    class ScheduleRecurrence

      include MsRestAzure

      include MsRest::JSONable
      # @return [RecurrenceType] The recurrence type. Possible values include:
      # 'Minutes', 'Hourly', 'Daily', 'Weekly'
      attr_accessor :recurrence_type

      # @return [Integer] The recurrence value.
      attr_accessor :recurrence_value

      # @return [Array<DayOfWeek>] The week days list. Applicable only for
      # schedules of recurrence type 'weekly'.
      attr_accessor :weekly_days_list


      #
      # Mapper for ScheduleRecurrence class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ScheduleRecurrence',
          type: {
            name: 'Composite',
            class_name: 'ScheduleRecurrence',
            model_properties: {
              recurrence_type: {
                required: true,
                serialized_name: 'recurrenceType',
                type: {
                  name: 'Enum',
                  module: 'RecurrenceType'
                }
              },
              recurrence_value: {
                required: true,
                serialized_name: 'recurrenceValue',
                type: {
                  name: 'Number'
                }
              },
              weekly_days_list: {
                required: false,
                serialized_name: 'weeklyDaysList',
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
              }
            }
          }
        }
      end
    end
  end
end
