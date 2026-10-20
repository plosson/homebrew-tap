cask "siteio-companion" do
  version "0.3.1"
  sha256 "3ba316025fcd5d41ca82a624448c83128f27361e872c351dce47f257820537bb"

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
