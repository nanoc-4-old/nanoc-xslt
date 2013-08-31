[![Build Status](https://travis-ci.org/nanoc/nanoc-xslt.png)](https://travis-ci.org/nanoc/nanoc-xslt)
[![Code Climate](https://codeclimate.com/github/nanoc/nanoc-xslt.png)](https://codeclimate.com/github/nanoc/nanoc-xslt)
[![Coverage Status](https://coveralls.io/repos/nanoc/nanoc-xslt/badge.png?branch=master)](https://coveralls.io/r/nanoc/nanoc-xslt)

# nanoc-xsl

This provides an [XSLT](http://www.w3.org/TR/xslt) filter for [nanoc](http://nanoc.ws) using [Nokogiri](http://nokogiri.org/).

## Installation

`gem install nanoc-xslt`

## Usage

```ruby
layout '/default.*', :xslt
```

This filter can only be run for layouts, because it will need both the XML to convert (= the item content) as well as the XSLT stylesheet (= the layout content).

Additional parameters can be passed to the layout call. These parameters will be turned into `xsl:param` elements.

Here is an example showing how to invoke the filter as a layout:

```ruby
compile '/reports/*.xml' do
  layout '/xslt-report.*'
end

layout '/xslt-report.*', :xslt, :awesome => 'definitely'
```
