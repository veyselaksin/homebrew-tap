cask "glance" do
  version "1.0.0"
  sha256 "864b37e98a7819abab88c0debc760eb07edce5597285061d23149dbc579a292d"

  url "https://github.com/veyselaksin/glance/releases/download/v#{version}/Glance-macOS.zip"
  name "Glance"
  desc "Developer dashboard for monitoring GitHub stats, Docker and VPS"
  homepage "https://github.com/veyselaksin/glance"

  app "Glance.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/Glance.app"], sudo: false
  end
end
