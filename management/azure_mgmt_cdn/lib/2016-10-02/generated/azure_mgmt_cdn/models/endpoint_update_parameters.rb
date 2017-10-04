# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN::Api_2016_10_02
  module Models
    #
    # Properties required to create a new endpoint.
    #
    class EndpointUpdateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Hash{String => String}] Endpoint tags.
      attr_accessor :tags

      # @return [String] The host header CDN sends along with content requests
      # to origin. The default value is the host name of the origin.
      attr_accessor :origin_host_header

      # @return [String] The path used when CDN sends request to origin.
      attr_accessor :origin_path

      # @return [Array<String>] List of content types on which compression
      # applies. The value should be a valid MIME type.
      attr_accessor :content_types_to_compress

      # @return [Boolean] Indicates whether content compression is enabled on
      # CDN. Default value is false. If compression is enabled, content will be
      # served as compressed if user requests for a compressed version. Content
      # won't be compressed on CDN when requested content is smaller than 1
      # byte or larger than 1 MB.
      attr_accessor :is_compression_enabled

      # @return [Boolean] Indicates whether HTTP traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (HTTP or HTTPS)
      # must be allowed.
      attr_accessor :is_http_allowed

      # @return [Boolean] Indicates whether HTTPS traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (HTTP or HTTPS)
      # must be allowed.
      attr_accessor :is_https_allowed

      # @return [QueryStringCachingBehavior] Defines the query string caching
      # behavior. Possible values include: 'IgnoreQueryString',
      # 'BypassCaching', 'UseQueryString', 'NotSet'
      attr_accessor :query_string_caching_behavior

      # @return [OptimizationType] Customer can specify what scenario they want
      # this CDN endpoint to optimize, e.g. Download, Media services. With this
      # information we can apply scenario driven optimization. Possible values
      # include: 'GeneralWebDelivery', 'GeneralMediaStreaming',
      # 'VideoOnDemandMediaStreaming', 'LargeFileDownload',
      # 'DynamicSiteAcceleration'
      attr_accessor :optimization_type

      # @return [Array<GeoFilter>] List of rules defining user geo access
      # within a CDN endpoint. Each geo filter defines an acess rule to a
      # specified path or content, e.g. block APAC for path /pictures/
      attr_accessor :geo_filters


      #
      # Mapper for EndpointUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EndpointUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'EndpointUpdateParameters',
            model_properties: {
              tags: {
                required: false,
                serialized_name: 'tags',
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
              origin_host_header: {
                required: false,
                serialized_name: 'properties.originHostHeader',
                type: {
                  name: 'String'
                }
              },
              origin_path: {
                required: false,
                serialized_name: 'properties.originPath',
                type: {
                  name: 'String'
                }
              },
              content_types_to_compress: {
                required: false,
                serialized_name: 'properties.contentTypesToCompress',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_compression_enabled: {
                required: false,
                serialized_name: 'properties.isCompressionEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              is_http_allowed: {
                required: false,
                serialized_name: 'properties.isHttpAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              is_https_allowed: {
                required: false,
                serialized_name: 'properties.isHttpsAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              query_string_caching_behavior: {
                required: false,
                serialized_name: 'properties.queryStringCachingBehavior',
                type: {
                  name: 'Enum',
                  module: 'QueryStringCachingBehavior'
                }
              },
              optimization_type: {
                required: false,
                serialized_name: 'properties.optimizationType',
                type: {
                  name: 'String'
                }
              },
              geo_filters: {
                required: false,
                serialized_name: 'properties.geoFilters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'GeoFilterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GeoFilter'
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
