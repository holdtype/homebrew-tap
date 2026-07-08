cask "holdtype" do
  version "1.0.0"
  sha256 "26f64b6dbffc96542a6c36e95dc52f8ac6634c8a8d0c5c0129238bfd4a00355c"

  url "https://github.com/holdtype/holdtype-swift/releases/download/v#{version}/HoldType-#{version}.dmg"
  name "HoldType"
  desc "Native macOS menu bar dictation utility"
  homepage "https://github.com/holdtype/holdtype-swift"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: :tahoe

  app "HoldType.app"

  uninstall quit: "app.holdtype.HoldType"

  zap trash: [
    "~/Library/Caches/HoldType",
    "~/Library/Preferences/app.holdtype.HoldType.plist",
    "~/Library/Saved Application State/app.holdtype.HoldType.savedState",
  ]
end
