cask "bol" do
  version "0.1.0,189"
  sha256 "3b2feb550db7b0b41ac9a78b458bc9de9404ac3ce5270dd867dd85eeef5691df"

  url "https://bol.waqasrana.space/download/Bol-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Bol"
  desc "Voice dictation that types where you are typing"
  homepage "https://bol.waqasrana.space/"

  livecheck do
    url "https://bol.waqasrana.space/updates/macos/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Bol.app"

  zap trash: [
    "~/Library/Application Support/space.waqasrana.bol",
    "~/Library/Caches/space.waqasrana.bol",
    "~/Library/HTTPStorages/space.waqasrana.bol",
    "~/Library/HTTPStorages/space.waqasrana.bol.binarycookies",
    "~/Library/Preferences/space.waqasrana.bol.plist",
  ]
end
