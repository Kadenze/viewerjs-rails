module Viewerjs
  module ViewHelpers

    #options = {
    # title: nil #If nothing or nil is provided then referred document(with extension) is used in viewer's header title else the given title)
    # layout: view to be rendered as a partial from views/viewerjs_themes
    # }
    def viewerjs_viewer(options = { layout: :default, title: nil })
      render "viewerjs_themes/#{options[:layout].to_s}"
    end
  end
end
