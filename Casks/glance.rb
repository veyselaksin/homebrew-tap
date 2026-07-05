cask "glance" do
  version "1.0.0"
  sha256 "658aa72d5e59bef68d7bcf3ee3331cba1f326aa812ea84d1467844c1a55e9619"

  url "https://github.com/veyselaksin/glance/releases/download/v1.0.0/Glance-macOS.zip"
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
