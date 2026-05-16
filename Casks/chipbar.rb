cask "chipbar" do
  version "0.1.0-rc3"
  sha256 "068626d1e3afc9bb578659cd6ac881029d099a13083147fe06877853960fdef5"

  url "https://github.com/ihororlovskyi/chipbar/releases/download/v#{version}/Chipbar-#{version}.zip"
  name "ChipBar"
  desc "Tiny menu-bar monitor for Apple Silicon chips (CPU/GPU/RAM)"
  homepage "https://github.com/ihororlovskyi/chipbar"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Chipbar.app"

  zap trash: "~/Library/Preferences/com.ihororlovskyi.chipbar.plist"
end
