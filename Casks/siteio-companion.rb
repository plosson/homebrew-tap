cask "siteio-companion" do
  version "0.1.0"
  sha256 "4fe0d345680c3ed11b8cb277de9dce65a4c322b777153efc9ba8ede6bc658935"

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
