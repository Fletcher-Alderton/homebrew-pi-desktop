cask "pi" do
  arch arm: "arm64", intel: "x64"

  version "0.16.1"
  sha256 arm:   "763e2ac330e7e16a4a0cfc19009330ff6bc8aacb81e3af69b311731c100a496e",
         intel: "45118878967f87ba4eaa1aa8d1f21c9a6e5957da0f02927d60d883f6f679b459"

  url "https://github.com/vastsa/PI-Desktop/releases/download/v#{version}/PI-Desktop-#{version}-#{arch}.dmg"
  name "PI-Desktop"
  desc "Local-first AI coding agent desktop"
  homepage "https://github.com/vastsa/PI-Desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "PI-Desktop.app"

  uninstall quit: "net.aiuo.pi-desktop"
end
