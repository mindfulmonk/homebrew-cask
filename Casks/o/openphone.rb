cask "openphone" do
  version "4.0.32"
  sha256 "3fe4c49714c8f2b23770427c5de68cf36fa6938bb46170456bc6fb0bd468ab19"

  url "https://download.openphone.co/OpenPhone-#{version}-universal.dmg"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
    strategy :electron_builder
  end

  app "OpenPhone.app"

  zap trash: [
    "~/Library/Application Support/OpenPhone",
    "~/Library/Preferences/ca.illusive.openphone.plist",
    "~/Library/Saved Application State/ca.illusive.openphone.savedState",
  ]
end
