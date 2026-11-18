cask "glimpse" do
  version "1.2.1"
  sha256 "1ce47bfd0958b804dc1af0211fa4ecabeb97e4766790d1fa8d24f350746cfc2e"

  url "https://github.com/ActivationEnergy/Glimpse/raw/refs/tags/v#{version}/Releases/v#{version}/Glimpse-#{version}-macOS-universal.dmg"
  name "Glimpse"
  name "一瞥"
  desc "Chinese poetry reader with screen saver or unlock display"
  homepage "https://activationenergy.github.io/Glimpse/"

  depends_on macos: :sonoma

  app "Glimpse.app"

  caveats <<~EOS
    This is a public testing build with ad-hoc signing, not Apple notarization.
    Choose screen saver or unlock display in Glimpse Settings.
    For unlock display, switch away from Glimpse in macOS Screen Saver settings,
    return to Glimpse and recheck, then keep the app running or enable login launch.
    Updating or removing this cask does not update or remove the separate screen saver.
    After replacing the screen saver, recheck its version in Glimpse and use the system preview.
    If the preview stays blank after updating, log out and back in to reload the screen saver.
    Full setup guide: https://activationenergy.github.io/Glimpse/#guide
  EOS
end
