# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Redis
  module Models
    #
    # Response to put/get patch schedules for Redis cache.
    #
    class RedisPatchSchedule

      include MsRestAzure

      # @return [String] Resource ID.
      attr_accessor :id

      # @return [String] Resource name.
      attr_accessor :name

      # @return [String] Resource type.
      attr_accessor :type

      # @return [String] Resource location.
      attr_accessor :location

      # @return [Array<ScheduleEntry>] List of patch schedules for a Redis
      # cache.
      attr_accessor :schedule_entries


      #
      # Mapper for RedisPatchSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RedisPatchSchedule',
          type: {
            name: 'Composite',
            class_name: 'RedisPatchSchedule',
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
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              schedule_entries: {
                required: true,
                serialized_name: 'properties.scheduleEntries',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ScheduleEntryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ScheduleEntry'
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
