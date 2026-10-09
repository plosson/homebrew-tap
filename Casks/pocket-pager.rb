cask "pocket-pager" do
  version "0.3.0"
  sha256 "d19d420b6799656953a034a61a465f0a1b4b894251ec20b040a7ccd7984ccd0d"

  url "https://github.com/plosson/pagerio/releases/download/v#{version}/Pocket-Pager-#{version}.zip"
  name "Pocket Pager"
  desc "Personal pager that scripts and AI agents call through a private URL"
  homepage "https://github.com/plosson/pagerio"

  # Sparkle updates the app in place; brew upgrade leaves it alone unless --greedy.
  auto_updates true
  depends_on macos: :sequoia

  app "Pocket Pager.app"

  zap trash: [
    "~/Library/Caches/com.houlahop.pagerio.mac",
    "~/Library/HTTPStorages/com.houlahop.pagerio.mac",
    "~/Library/Preferences/com.houlahop.pagerio.mac.plist",
  ]
end
