    def page_object_valid
      page = Page.new
      page.title = "sample title"
      page.content = "sample content"
      page.virtual_path = "sample/file"
      return page
    end
