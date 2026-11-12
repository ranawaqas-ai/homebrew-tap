cask "lafz-prompter" do
  version "1.2"
  sha256 "1dec7fc1d3d118b16d5955007069c724f428703a9df5fec7880dd36a429e6a90"

  url "https://github.com/ranawaqas-ai/lafz-prompter/releases/download/v#{version}/LafzPrompter.zip"
  name "Lafz Prompter"
  desc "Teleprompter under the MacBook notch"
  homepage "https://lafz.waqasrana.space/"

  livecheck do
    url "https://lafz.waqasrana.space/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Lafz Prompter.app"

  zap trash: [
    "~/Library/Application Support/Lafz Prompter",
    "~/Library/Caches/space.waqasrana.LafzPrompter",
    "~/Library/HTTPStorages/space.waqasrana.LafzPrompter",
    "~/Library/Preferences/space.waqasrana.LafzPrompter.plist",
  ]
end
