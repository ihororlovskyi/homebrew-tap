cask "sysbar" do
  version "0.2.0"
  sha256 "4a5969bd43a81bf9b64a857596480ecb84f9746837e8e4bc100e27cbac2711a0"

  url "https://github.com/ihororlovskyi/sysbar/releases/download/v#{version}/sysbar-#{version}.zip"
  name "sysbar"
  desc "Tiny menu-bar monitor for Apple Silicon chips (CPU/GPU/RAM)"
  homepage "https://github.com/ihororlovskyi/sysbar"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "sysbar.app"

  zap trash: "~/Library/Preferences/com.ihororlovskyi.sysbar.plist"

  caveats <<~EOS
    sysbar is ad-hoc signed. On first launch, open /Applications, right-click
    sysbar.app, choose Open, then confirm Open.
  EOS
end
