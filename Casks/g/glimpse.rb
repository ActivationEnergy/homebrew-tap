cask "glimpse" do
  version "1.0"
  sha256 "d930aff2f3741b40c31dcb2043a68acdfb85d23f2e4981e48ebd3dc5483cbb54"

  url "https://github.com/ActivationEnergy/Glimpse/raw/refs/tags/v#{version}/Releases/v#{version}/Glimpse-#{version}-macOS-universal.dmg"
  name "Glimpse"
  name "一瞥"
  desc "Chinese poetry reader and optional screen saver"
  homepage "https://github.com/ActivationEnergy/Glimpse"

  depends_on macos: ">= :sonoma"

  app "Glimpse.app"

  caveats <<~EOS
    Version 1.0 is a public testing build with ad-hoc signing, not Apple notarization.
    Open Glimpse to install the optional screen saver, then select it in System Settings.
    Updating or removing this cask does not update or remove the separate screen saver.
  EOS
end
