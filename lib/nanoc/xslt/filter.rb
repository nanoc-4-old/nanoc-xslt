# encoding: utf-8

require 'nokogiri'

module Nanoc::XSLT

  class Filter < Nanoc::Filter

    identifier :xslt

    def run(content, params={})
      if assigns[:layout].nil?
        raise "The XSLT filter can only be run as a layout"
      end

      xml = ::Nokogiri::XML(content.string)
      xslt = ::Nokogiri::XSLT(assigns[:layout].content.string)

      xslt.transform(xml, ::Nokogiri::XSLT.quote_params(params)).to_s
    end

  end

end
