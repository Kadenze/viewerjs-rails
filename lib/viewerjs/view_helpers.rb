module Viewerjs
  module ViewHelpers

    #options = {
    # title: nil #If nothing or nil is provided then referred document(with extension) is used in viewer's header title else the given title)
    # layout: view to be rendered as a partial from views/viewerjs_themes
    # }
    def viewerjs_viewer(**opts)
      options = {
        layout: :default,
        title: nil,
        download_enabled: true,
      }.merge(opts)
      
      render "viewerjs_themes/#{options[:layout]}"
    end
  end
end
