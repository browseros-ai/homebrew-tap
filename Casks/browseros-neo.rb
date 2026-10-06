cask "browseros-neo" do
  version "0.51.0"
  sha256 "c102a39275b490504e5db256f1f41555bc1db049458264aa98d9347dfe931632"

  url "https://cdn.browseros.com/releases/browserclaw/#{version}/macos/BrowserOS_neo_v#{version}_universal.dmg"
  name "BrowserOS neo"
  desc "Browser for agents"
  homepage "https://browseros.com/"

  livecheck do
    url "https://cdn.browseros.com/appcast-claw.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "BrowserOS neo.app"

  zap trash: [
    "~/Library/Application Support/BrowserClaw",
    "~/Library/Caches/BrowserClaw",
    "~/Library/Caches/com.browseros.BrowserClaw",
    "~/Library/HTTPStorages/com.browseros.BrowserClaw",
    "~/Library/Preferences/com.browseros.BrowserClaw.plist",
    "~/Library/Saved Application State/com.browseros.BrowserClaw.savedState",
  ]
end
