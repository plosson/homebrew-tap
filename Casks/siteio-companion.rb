cask "siteio-companion" do
  version "0.1.1"
  sha256 "e1e16ec75453717f25459711b8616bb887b3d4ea035bdfe8448711bb36610f29"

  url "https://github.com/plosson/siteio-app/releases/download/v#{version}/siteio-Companion-#{version}.zip"
  name "siteio Companion"
  desc "Desktop companion for siteio servers"
  homepage "https://github.com/plosson/siteio-app"

  # Sparkle updates the app in place; brew upgrade leaves it alone unless --greedy.
  auto_updates true
  depends_on macos: :sonoma

  app "siteio Companion.app"

  zap trash: [
    "~/Library/Caches/com.plosson.siteio-companion",
    "~/Library/HTTPStorages/com.plosson.siteio-companion",
    "~/Library/Preferences/com.plosson.siteio-companion.plist",
  ]
end
