module ApplicationHelper
  def logo_streaming_service(streaming_service)
    case streaming_service 
    when "Wakanim"
      image_tag('wakanim_logo.png', class: "wakanim-logo")
    when "Netflix"
      image_tag('netflix_logo.png', class: "netflix-logo")
    when "Crunchyroll"
      image_tag('crunchyroll_logo.png', class: "crunchyroll-logo")
    when "ADN"
      image_tag('adn_logo.png', class: "adn-logo")
    end
  end
end
