cask "glimpse" do
  version "1.1.1"
  sha256 "70ee6f12a531357bbacada863408bbc8c0ee1d8ca44eae6129acaa1ae308de42"

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
    Full setup guide: https://activationenergy.github.io/Glimpse/#guide
  EOS
end
