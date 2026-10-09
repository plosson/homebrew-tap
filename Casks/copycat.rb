cask "copycat" do
  version "1.1.0"
  sha256 "44c601f1e57f7b69e473d4ad1701351a041e9ef07669e107b8584aea5355f078"

  url "https://github.com/plosson/copycat/releases/download/v#{version}/Copycat-#{version}.zip"
  name "Copycat"
  desc "Lets web pages copy real files, like animated GIFs and videos, to the clipboard"
  homepage "https://github.com/plosson/copycat"

  # Sparkle updates the app in place; brew upgrade leaves it alone unless --greedy.
  auto_updates true
  depends_on macos: :sonoma

  app "Copycat.app"

  zap trash: [
    "~/Library/Caches/com.plosson.copycat",
    "~/Library/HTTPStorages/com.plosson.copycat",
    "~/Library/Preferences/com.plosson.copycat.plist",
  ]
end
