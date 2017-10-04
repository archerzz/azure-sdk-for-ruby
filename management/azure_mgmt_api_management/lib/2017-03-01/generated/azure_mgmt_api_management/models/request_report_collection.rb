# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ApiManagement::Api_2017_03_01
  module Models
    #
    # Paged Report records list representation.
    #
    class RequestReportCollection

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<RequestReportRecordContract>] Page values.
      attr_accessor :value

      # @return [Integer] Total record count number across all pages.
      attr_accessor :count


      #
      # Mapper for RequestReportCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RequestReportCollection',
          type: {
            name: 'Composite',
            class_name: 'RequestReportCollection',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RequestReportRecordContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RequestReportRecordContract'
                      }
                  }
                }
              },
              count: {
                required: false,
                serialized_name: 'count',
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
