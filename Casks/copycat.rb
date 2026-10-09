cask "copycat" do
  version "1.0.0"
  sha256 "57fdd3b32fd683f537ba3208f9b95f94f914e97447b6767e7af60b3991fde352"

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
