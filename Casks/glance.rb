cask "glance" do
  version "1.0.4"
  sha256 "3df9daa7bceab1da67df8afb6076160ab3c9fcf0e2e2a1b8bfc483d3bd56a26c"

  url "https://github.com/veyselaksin/glance/releases/download/v#{version}/Glance-macOS.dmg"
  name "Glance"
  desc "Developer dashboard for monitoring GitHub stats, Docker and VPS"
  homepage "https://github.com/veyselaksin/glance"

  app "Glance.app"
end
