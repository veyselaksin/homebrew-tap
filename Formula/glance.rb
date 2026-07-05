class Glance < Formula
  desc "Developer dashboard for monitoring GitHub stats, Docker and VPS"
  homepage "https://github.com/veyselaksin/glance"
  url "https://github.com/veyselaksin/glance/releases/download/v1.0.0/Glance-macOS.zip"
  # BURADAKİ SHA256 KODUNU DEĞİŞTİRME, AYNI KALSIN
  sha256 "658aa72d5e59bef68d7bcf3ee3331cba1f326aa812ea84d1467844c1a55e9619"
  version "1.0.0"

  def install
    # Zip içinden çıkan Glance.app klasörünü arayıp bulur ve prefix'e taşır
    app_path = Dir.glob("**/Glance.app").first
    raise "Glance.app not found in the archive" if app_path.nil?

    prefix.install app_path
    
    # Çalıştırılabilir script linkini güncelliyoruz
    bin.write_exec_script "#{prefix}/Glance.app/Contents/MacOS/Glance"
  end

  def caveats
    <<~EOS
      Glance is ad-hoc signed because it does not use a paid Apple Developer account.
      If macOS Gatekeeper blocks it from opening on the first launch, please run the following command in your terminal:

        xattr -cr #{prefix}/Glance.app
    EOS
  end

  test do
    system "#{bin}/glance", "--version"
  end
end
