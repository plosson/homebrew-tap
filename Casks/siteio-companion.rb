cask "siteio-companion" do
  version "0.3.2"
  sha256 "30b0f2a7e5fe65c96569463c3322f2b3630a5f9f0890254a090d6a99cee46192"

  url "https://github.com/plosson/siteio-app/releases/download/v#{version}/SiteIO-#{version}.zip"
  name "SiteIO"
  desc "Desktop companion for siteio servers"
  homepage "https://github.com/plosson/siteio-app"

  # Sparkle updates the app in place; brew upgrade leaves it alone unless --greedy.
  auto_updates true
  depends_on macos: :sonoma

  app "SiteIO.app"

  zap trash: [
    "~/Library/Caches/com.plosson.siteio-companion",
    "~/Library/HTTPStorages/com.plosson.siteio-companion",
    "~/Library/Preferences/com.plosson.siteio-companion.plist",
  ]
end
