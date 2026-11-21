cask "chytanka" do
  version "0.0.3"
  sha256 "41fc080030b275fd69346ed7e34fac11898b9be2a60bc142f2b3e3ba130251eb"

  url "https://github.com/ihororlovskyi/chytanka/releases/download/#{version}/Chytanka-#{version}.zip"
  name "Chytanka"
  desc "Menu bar app that reads the selected text aloud in Ukrainian"
  homepage "https://github.com/ihororlovskyi/chytanka"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Chytanka.app"

  uninstall quit: "com.ihororlovskyi.chytanka"

  zap trash: "~/Library/Preferences/com.ihororlovskyi.chytanka.plist"

  caveats <<~EOS
    Chytanka is ad-hoc signed. On first launch, open /Applications, right-click
    Chytanka.app, choose Open, then confirm Open. Then allow it in
    System Settings → Privacy & Security → Accessibility.
  EOS
end
