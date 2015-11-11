module AssetsHelper

  def handlebars_template(id, &block)
    content = "<script id='#{id}' type='text/x-handlebars-template'>\r\n" + (capture_haml {yield} if block_given?) + "\r\n</script>"
    return content.html_safe
  end

end
