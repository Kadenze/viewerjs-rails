module Viewerjs
  module ViewHelpers

    #options = {
    # viewer_alignment: 'right', #Possible values 'right' or 'left'
    # title: nil #If nothing or nil is provided then referred document(with extension) is used in viewer's header title else the given title)
    # zoom_mode: 'page-width' #Possible values are 'auto', 'page-actual', 'page-width', 'page-height', 'page-fit', 'custom'. Default it 'auto'
    # zoom_level: 1.5 #Only applicable if zoom_mode is set to 'custom'. Default zoom_level is 1.0 any value above will increase the zoom or will decrease if its less
    # }
    def viewerjs_viewer(options = {viewer_alignment: 'right', title: nil})

      options[:viewer_alignment] = (['right', 'left'].include?(options[:viewer_alignment]) ? options[:viewer_alignment] : 'left')
      _viewer = <<-EOM
              <div dir="#{{'right' => 'rtl', 'left' => 'ltr'}[options[:viewer_alignment]]}">
                <div id = "viewer">
                    <div id = "titlebar">
                        <div id = "documentName"></div>
                        <div id = "titlebarRight">
                            <button id = "download" class = "toolbarButton download" title = "Download"></button>
                        </div>
                   </div>
                    <div id = "toolbarContainer">
                        <div id = "toolbar">

                            <div id = "toolbarMiddleContainer" class = "outerCenter">
                                <div id = "toolbarMiddle" class = "innerCenter">

                                    <div id = "navButtons" class = "splitToolbarButton">
                                        <button id = "previous" class = "toolbarButton pageUp" title = "Previous Page"></button>

                                        <div class="pageNumberContainer">
                                            <label id = "pageNumberLabel" class = "toolbarLabel" for = "pageNumber">Page:</label>
                                            <input type = "number" id = "pageNumber" class = "toolbarField pageNumber"/>
                                            <span id = "numPages" class = "toolbarLabel"></span>
                                        </div>

                                        <button id = "next" class = "toolbarButton pageDown" title = "Next Page"></button>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div id = "canvasContainer">
                        <div id = "canvasActions">
                            <button id = "presentation" class = "toolbarButton presentation" title = "Presentation"></button>
                            <button id = "fullscreen" class = "toolbarButton fullscreen" title = "Fullscreen"></button>
                            <button id = "zoomOut" class = "toolbarButton zoomOut" title = "Zoom Out"></button>
                            <button id = "zoomIn" class = "toolbarButton zoomIn" title = "Zoom In"></button>
                        </div>
                        <div id = "canvas"></div>
                    </div>

                    <div id = "overlayNavigator">
                        <div id = "previousPage"></div>
                        <div id = "nextPage"></div>
                    </div>
                    <div id = "overlayCloseButton">
                    &#10006;
                    </div>
                    <div id = "dialogOverlay"></div>
                    <div id = "blanked"></div>
                </div>
              </div>
      EOM
      raw(_viewer)
    end
  end
end
