cask "glance" do
  version "1.0.0"
  sha256 "bbb01f22685c03c8056c762a51d655f1d24200f471dc7acc37e6c8b95449d732"

  url "https://github.com/veyselaksin/glance/releases/download/v#{version}/Glance-macOS.zip"
  name "Glance"
  desc "Developer dashboard for monitoring GitHub stats, Docker and VPS"
  homepage "https://github.com/veyselaksin/glance"

  app "Glance.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/Glance.app"], sudo: false
  end
end
