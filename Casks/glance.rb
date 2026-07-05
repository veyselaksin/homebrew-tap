cask "glance" do
  version "1.0.2"
  sha256 "31ac344ce2bc4fdefe4bdbd2632521761c7fe71c0c303c287de632ea8dd48c05"

  url "https://github.com/veyselaksin/glance/releases/download/v${version}/Glance-macOS.zip"
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
