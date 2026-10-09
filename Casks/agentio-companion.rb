cask "agentio-companion" do
  version "0.1.0"
  sha256 "25a6fee111feca4c4eda4f4e0e955a8d36042656a2c7f6a206ffdf84f72b5451"

  url "https://github.com/plosson/agentio-app/releases/download/v#{version}/AgentIO-Companion-#{version}.zip"
  name "AgentIO Companion"
  desc "Desktop companion for AgentIO vaults"
  homepage "https://github.com/plosson/agentio-app"

  # Sparkle updates the app in place; brew upgrade leaves it alone unless --greedy.
  auto_updates true
  depends_on macos: :sonoma

  app "AgentIO Companion.app"

  zap trash: [
    "~/Library/Caches/com.plosson.agentio-companion",
    "~/Library/HTTPStorages/com.plosson.agentio-companion",
    "~/Library/Preferences/com.plosson.agentio-companion.plist",
  ]
end
