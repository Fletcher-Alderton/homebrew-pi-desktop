cask "pi" do
  arch arm: "arm64", intel: "x64"

  version "0.19.1"
  sha256 arm:   "d23cc0e1293e8586db73fcebf1f566a4b440d67e12699a0b7017d2689e460aa5",
         intel: "d0ef4c0e991115ee93f5623906c69f9d3dfd7d9f732d913db5def0bccebf953a"

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
