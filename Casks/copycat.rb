cask "copycat" do
  version "1.1.1"
  sha256 "f90226fc260f0b7cc335597f27e18c29c5f3754ac822446da4a7ab9a761fafaf"

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
