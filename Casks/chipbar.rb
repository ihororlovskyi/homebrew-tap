cask "chipbar" do
  version "0.1.3"
  sha256 "0cc6d1651bf8d4c5e9de0e638182fc5a8f0f19944bd203c0805ed3acfaa4aedb"

  url "https://github.com/ihororlovskyi/chipbar/releases/download/v#{version}/Chipbar-#{version}.zip"
  name "Chipbar"
  desc "Tiny menu-bar monitor for Apple Silicon chips (CPU/GPU/RAM)"
  homepage "https://github.com/ihororlovskyi/chipbar"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Chipbar.app"

  zap trash: "~/Library/Preferences/com.ihororlovskyi.chipbar.plist"

  caveats <<~EOS
    Chipbar is ad-hoc signed. On first launch, open /Applications, right-click
    Chipbar.app, choose Open, then confirm Open.
  EOS
end
