cask "agentio-companion" do
  version "0.3.0"
  sha256 "5f3fb34c94bcd9cad5a3574b0d8d1c7d720c6808938e17681e3e1f04f3e4a2f2"

  url "https://github.com/plosson/agentio-app/releases/download/v#{version}/AgentIO-#{version}.zip"
  name "AgentIO"
  desc "Desktop companion for AgentIO vaults"
  homepage "https://github.com/plosson/agentio-app"

  # Sparkle updates the app in place; brew upgrade leaves it alone unless --greedy.
  auto_updates true
  depends_on macos: :sonoma

  app "AgentIO.app"

  zap trash: [
    "~/Library/Caches/com.plosson.agentio-companion",
    "~/Library/HTTPStorages/com.plosson.agentio-companion",
    "~/Library/Preferences/com.plosson.agentio-companion.plist",
  ]
end
