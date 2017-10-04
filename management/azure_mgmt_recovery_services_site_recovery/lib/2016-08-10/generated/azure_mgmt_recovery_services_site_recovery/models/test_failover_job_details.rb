# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # This class represents the details for a test failover job.
    #
    class TestFailoverJobDetails < JobDetails

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @instanceType = "TestFailoverJobDetails"
      end

      attr_accessor :instanceType

      # @return [String] The test failover status.
      attr_accessor :test_failover_status

      # @return [String] The test failover comments.
      attr_accessor :comments

      # @return [String] The test network name.
      attr_accessor :network_name

      # @return [String] The test network friendly name.
      attr_accessor :network_friendly_name

      # @return [String] The test network type (see TestFailoverInput enum for
      # possible values).
      attr_accessor :network_type

      # @return [Array<FailoverReplicationProtectedItemDetails>] The test VM
      # details.
      attr_accessor :protected_item_details


      #
      # Mapper for TestFailoverJobDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TestFailoverJobDetails',
          type: {
            name: 'Composite',
            class_name: 'TestFailoverJobDetails',
            model_properties: {
              affected_object_details: {
                required: false,
                serialized_name: 'affectedObjectDetails',
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
              },
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              test_failover_status: {
                required: false,
                serialized_name: 'testFailoverStatus',
                type: {
                  name: 'String'
                }
              },
              comments: {
                required: false,
                serialized_name: 'comments',
                type: {
                  name: 'String'
                }
              },
              network_name: {
                required: false,
                serialized_name: 'networkName',
                type: {
                  name: 'String'
                }
              },
              network_friendly_name: {
                required: false,
                serialized_name: 'networkFriendlyName',
                type: {
                  name: 'String'
                }
              },
              network_type: {
                required: false,
                serialized_name: 'networkType',
                type: {
                  name: 'String'
                }
              },
              protected_item_details: {
                required: false,
                serialized_name: 'protectedItemDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'FailoverReplicationProtectedItemDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FailoverReplicationProtectedItemDetails'
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
