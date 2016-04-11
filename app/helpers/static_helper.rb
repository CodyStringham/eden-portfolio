module StaticHelper

  def nav_link(name, path)
    haml_tag :li, class: "waves-effect waves-nav #{'active' if current_page?(path)}" do
      haml_tag :a, name.titleize, href: path
    end
  end

end
