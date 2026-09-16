cask "browseros-neo" do
  version "0.50.5"
  sha256 "06ba12491a128310676baad411073ab40b6b42fc68db80a9d19bdec6148f0c78"

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
