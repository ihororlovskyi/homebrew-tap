cask "chipbar" do
  version "0.1.1"
  sha256 "b806e6ea4ab8db6ab0289e8a184583f2940b82a6b87ee19f631c64bc3a74fd19"

  url "https://github.com/ihororlovskyi/chipbar/releases/download/v#{version}/Chipbar-#{version}.zip"
  name "ChipBar"
  desc "Tiny menu-bar monitor for Apple Silicon chips (CPU/GPU/RAM)"
  homepage "https://github.com/ihororlovskyi/chipbar"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Chipbar.app"

  zap trash: "~/Library/Preferences/com.ihororlovskyi.chipbar.plist"
end
