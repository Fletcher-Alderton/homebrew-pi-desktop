cask "pi" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "a757760d406a671e497dd24fdd1868335a6eba327f2460c86c08354b6a2b69bb",
         intel: "31cdbde8293577a3cc3a3f9f787a60f7727c9a1eb16437da1931b6b56e75ff95"

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
