cask "glance" do
  version "1.1.0"
  sha256 "f3ba05b548034f24dc4c16b1226caec5e11778aea988cc3971db587c6bdbf7f0"

  url "https://github.com/veyselaksin/glance/releases/download/v#{version}/Glance-macOS.zip"
  name "Glance"
  desc "Developer dashboard for monitoring GitHub stats, Docker and VPS"
  homepage "https://github.com/veyselaksin/glance"

  app "Glance.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/Glance.app"], sudo: false
  end
end
