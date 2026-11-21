cask "chytanka" do
  version "0.0.4"
  sha256 "44d107d3a2eef8ed69825f96ad1510066b85e99364a002cf8174926c5f161857"

  url "https://github.com/ihororlovskyi/chytanka/releases/download/#{version}/Chytanka-#{version}.zip"
  name "Chytanka"
  desc "Menu bar app that reads the selected text aloud in Ukrainian"
  homepage "https://github.com/ihororlovskyi/chytanka"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Chytanka.app"

  uninstall quit: "com.ihororlovskyi.chytanka"

  zap trash: [
    "/tmp/chytanka-update.log",
    "~/Library/Preferences/com.ihororlovskyi.chytanka.plist",
  ]

  caveats <<~EOS
    Chytanka is ad-hoc signed. On first launch, open /Applications, right-click
    Chytanka.app, choose Open, then confirm Open. Then allow it in
    System Settings → Privacy & Security → Accessibility.
  EOS
end
