module SurveysHelper
  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to( name, "#", class: "remove_fields")
  end
end
