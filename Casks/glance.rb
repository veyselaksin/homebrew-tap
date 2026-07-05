cask "glance" do
  version "1.0.3"
  sha256 "aa639203031d891436e1336dde50effecd4aecf6b823908da233c798ab9337af"

  url "https://github.com/veyselaksin/glance/releases/download/v#{version}/Glance-macOS.zip"
  name "Glance"
  desc "Developer dashboard for monitoring GitHub stats, Docker and VPS"
  homepage "https://github.com/veyselaksin/glance"

  app "Glance.app"

  caveats <<~EOS
    Glance is ad-hoc signed because it does not use a paid Apple Developer account.
    If macOS Gatekeeper blocks it from opening on the first launch, please run the following command in your terminal:

      xattr -cr /Applications/Glance.app
  EOS
end
