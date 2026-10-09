cask "agentio-companion" do
  version "0.2.0"
  sha256 "15b9f434f1ad513222b51c75dccf7173b8a640b2f2a0090acd2041868a250c24"

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
