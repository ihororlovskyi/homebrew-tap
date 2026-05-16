cask "chipbar" do
  version "0.1.0"
  sha256 "2146626fa7d2d07b229f5db5bfd8cbfec23820f8cdb02f1f0f1ea5c96d12804e"

  url "https://github.com/ihororlovskyi/chipbar/releases/download/v#{version}/Chipbar-#{version}.zip"
  name "ChipBar"
  desc "Tiny menu-bar monitor for Apple Silicon chips (CPU/GPU/RAM)"
  homepage "https://github.com/ihororlovskyi/chipbar"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Chipbar.app"

  zap trash: "~/Library/Preferences/com.ihororlovskyi.chipbar.plist"
end
