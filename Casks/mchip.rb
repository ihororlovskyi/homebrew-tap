cask "mchip" do
  version "0.1.2"
  sha256 "54f9905da9f7e5e7e2f393ea31715d8fe1cbe0d7580f44181526acfb9ca25f35"

  url "https://github.com/ihororlovskyi/mchip/releases/download/v#{version}/Chipbar-#{version}.zip",
      quarantine: false
  name "mchip"
  desc "Tiny menu-bar monitor for Apple Silicon chips (CPU/GPU/RAM)"
  homepage "https://github.com/ihororlovskyi/mchip"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "mchip-v#{version}.app"

  zap trash: "~/Library/Preferences/com.ihororlovskyi.chipbar.plist"
end
