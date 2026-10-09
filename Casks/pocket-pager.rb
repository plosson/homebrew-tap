cask "pocket-pager" do
  version "0.4.0"
  sha256 "6fa18f4c7e4182e25a54f6aaa7bd5e7f9dd7c4245d47275d0b4187ffb3bc8b90"

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
