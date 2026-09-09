cask "browseros" do
  version "0.50.3"
  sha256 "90b8d1914bbb47a7f416971f0e09171b2824cad91587f1557324f6a7f8260b19"

  url "https://cdn.browseros.com/releases/browseros/#{version}/macos/BrowserOS_v#{version}_universal.dmg",
      verified: "cdn.browseros.com/releases/browseros/"
  name "BrowserOS"
  desc "Browser for humans"
  homepage "https://browseros.com/"

  livecheck do
    url "https://cdn.browseros.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "BrowserOS.app"

  zap trash: [
    "~/Library/Application Support/BrowserOS",
    "~/Library/Caches/BrowserOS",
    "~/Library/Preferences/com.browseros.BrowserOS.plist",
    "~/Library/Saved Application State/com.browseros.BrowserOS.savedState",
    "~/Library/WebKit/com.browseros.BrowserOS",
  ]
end
