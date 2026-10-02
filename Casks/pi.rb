cask "pi" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "68a4819a43461c4c92cbba71766919a4730637cbab8d7dae7d0d7ec0c6723a1d",
         intel: "3c2f241c9ae71ed46cf8d7e59089157987e4cee52e53ffa330fcc64cff08fd2a"

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
