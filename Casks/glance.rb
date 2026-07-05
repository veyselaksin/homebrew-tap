cask "glance" do
  version "1.0.0"
  sha256 "87e0ba056de32582eba015d641477af72932ce34175bb96a9ab70f2159b6c82a"

  url "https://github.com/veyselaksin/glance/releases/download/v#{version}/Glance-macOS.zip"
  name "Glance"
  desc "Developer dashboard for monitoring GitHub stats, Docker and VPS"
  homepage "https://github.com/veyselaksin/glance"

  app "Glance.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/Glance.app"], sudo: false
  end
end
