cask "pi" do
  arch arm: "arm64", intel: "x64"

  version "0.20.1"
  sha256 arm:   "1b264e467c128105ded43e510265e42a7d6eb4183a4fee92886f2614ec93cf6c",
         intel: "08fd6499d9792f7d0fde9724bf42daed78656e55c6d71c196e4542ed1b12fb3b"

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
