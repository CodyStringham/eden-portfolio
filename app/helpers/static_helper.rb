module StaticHelper

  def nav_link(name, path)
    haml_tag :li, class: "waves-effect waves-light #{'active' if params[:action] == name}" do
      haml_tag :a, name.titleize, href: path
    end
  end

end
