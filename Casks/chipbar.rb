cask "chipbar" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/ihororlovskyi/chipbar/releases/download/v#{version}/Chipbar-#{version}.zip",
      quarantine: false
  name "Chipbar"
  desc "Tiny menu-bar monitor for Apple Silicon chips (CPU/GPU/RAM)"
  homepage "https://github.com/ihororlovskyi/chipbar"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Chipbar.app"

  zap trash: "~/Library/Preferences/com.ihororlovskyi.chipbar.plist"
end
