# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The error/warning message due to which the device is ineligible as a
    # failover target device.
    #
    class TargetEligibilityErrorMessage

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The localized error message stating the reason why the
      # device is not eligible as a target device.
      attr_accessor :message

      # @return [String] The localized resolution message for the error.
      attr_accessor :resolution

      # @return [TargetEligibilityResultCode] The result code for the error,
      # due to which the device does not qualify as a failover target device.
      # Possible values include: 'TargetAndSourceCannotBeSameError',
      # 'TargetIsNotOnlineError', 'TargetSourceIncompatibleVersionError',
      # 'LocalToTieredVolumesConversionWarning',
      # 'TargetInsufficientCapacityError',
      # 'TargetInsufficientLocalVolumeMemoryError',
      # 'TargetInsufficientTieredVolumeMemoryError'
      attr_accessor :result_code


      #
      # Mapper for TargetEligibilityErrorMessage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TargetEligibilityErrorMessage',
          type: {
            name: 'Composite',
            class_name: 'TargetEligibilityErrorMessage',
            model_properties: {
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              resolution: {
                required: false,
                serialized_name: 'resolution',
                type: {
                  name: 'String'
                }
              },
              result_code: {
                required: false,
                serialized_name: 'resultCode',
                type: {
                  name: 'Enum',
                  module: 'TargetEligibilityResultCode'
                }
              }
            }
          }
        }
      end
    end
  end
end
