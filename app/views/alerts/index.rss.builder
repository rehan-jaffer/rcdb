#encoding: UTF-8

xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Chemical Observer Alerts"
    xml.author "Chemical Observer"
    xml.description "Up to date Alerts about new Research Chemicals"
    xml.link "http://www.chemicalobserver.com/"
    xml.language "en"

    for alert in @alerts
      xml.item do
        if alert.title
          xml.title alert.title
        else
          xml.title ""
        end
        xml.author "Chemical Observer"
        xml.pubDate alert.created_at.to_s(:rfc822)
        xml.link "http://www.chemicalobserver.com/"
        xml.guid alert.id
        text = alert.body
        xml.description "<p>" + text + "</p>"

      end
    end
  end
end
