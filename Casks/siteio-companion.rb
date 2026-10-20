cask "siteio-companion" do
  version "0.2.0"
  sha256 "ec05a2adfa9218a1bef65ad4f698fe5c8814316884bcb1be693ca4966d639f19"

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
