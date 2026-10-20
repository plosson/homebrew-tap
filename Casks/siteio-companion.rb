cask "siteio-companion" do
  version "0.3.0"
  sha256 "3264ef11cec682ac3f11d1d093e560d051aa7b11bd525de596253107e7d9ab73"

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
