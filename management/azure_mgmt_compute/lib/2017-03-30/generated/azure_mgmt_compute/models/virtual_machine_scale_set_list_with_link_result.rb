# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2017_03_30
  module Models
    #
    # The List Virtual Machine operation response.
    #
    class VirtualMachineScaleSetListWithLinkResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<VirtualMachineScaleSet>] The list of virtual machine
      # scale sets.
      attr_accessor :value

      # @return [String] The uri to fetch the next page of Virtual Machine
      # Scale Sets. Call ListNext() with this to fetch the next page of Virtual
      # Machine Scale Sets.
      attr_accessor :next_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<VirtualMachineScaleSet>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [VirtualMachineScaleSetListWithLinkResult] with next page
      # content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for VirtualMachineScaleSetListWithLinkResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetListWithLinkResult',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetListWithLinkResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualMachineScaleSetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineScaleSet'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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
