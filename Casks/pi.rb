cask "pi" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "7776cb7f1f6d6db4b60ed0342b15426126f223007a5667e5940b14087b034c99",
         intel: "1655e7ebecb85448fadbdf14ced862993fc59cff196443ed28eaa239222c0ffd"

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
