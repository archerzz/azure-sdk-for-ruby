# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs::Api_2017_04_01
  module Models
    #
    # Model object.
    #
    #
    class CheckNameAvailabilityResponse

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] Checks if the namespace name is available
      attr_accessor :name_available

      # @return [String] States the reason due to which the namespace name is
      # not available
      attr_accessor :reason

      # @return [String] The messsage returned when checking for namespace name
      # availability
      attr_accessor :message


      #
      # Mapper for CheckNameAvailabilityResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckNameAvailabilityResponse',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityResponse',
            model_properties: {
              name_available: {
                required: false,
                serialized_name: 'NameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                required: false,
                serialized_name: 'Reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'Message',
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
