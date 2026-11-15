cask "glimpse" do
  version "1.0.1"
  sha256 "0e6f2cf519f3013cc92727963f289df6404fe450a23c4d8362eab532103468d4"

  url "https://github.com/ActivationEnergy/Glimpse/raw/refs/tags/v#{version}/Releases/v#{version}/Glimpse-#{version}-macOS-universal.dmg"
  name "Glimpse"
  name "一瞥"
  desc "Chinese poetry reader and optional screen saver"
  homepage "https://github.com/ActivationEnergy/Glimpse"

  depends_on macos: :sonoma

  app "Glimpse.app"

  caveats <<~EOS
    Version 1.0.1 is a public testing build with ad-hoc signing, not Apple notarization.
    Open Glimpse to install the optional screen saver, then select it in System Settings.
    Updating or removing this cask does not update or remove the separate screen saver.
  EOS
end
