cask "glance" do
  version "1.0.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855" # Geçici boş hash, actions güncelleyecek

  url "https://github.com/veyselaksin/glance/releases/download/v#{version}/Glance-macOS.zip"
  name "Glance"
  desc "Developer dashboard for monitoring GitHub stats, Docker and VPS"
  homepage "https://github.com/veyselaksin/glance"

  app "Glance.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/Glance.app"], sudo: false
  end
end
