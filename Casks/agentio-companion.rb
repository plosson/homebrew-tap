cask "agentio-companion" do
  version "0.3.1"
  sha256 "4085162186c2e0e5dc1f3f296f3082431dae3c98341d41cbef7cb258859a8793"

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
