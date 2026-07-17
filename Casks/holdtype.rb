cask "holdtype" do
  version "1.0.4"
  sha256 "c56c2dc86efa9cd94d3bd0d038b0600f3a4397117eb834ba47a69b70e3b5efab"

  url "https://github.com/holdtype/holdtype-swift/releases/download/v#{version}/HoldType-#{version}.dmg"
  name "HoldType"
  desc "Native macOS menu bar dictation utility"
  homepage "https://github.com/holdtype/holdtype-swift"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: :sonoma

  app "HoldType.app"

  uninstall quit: "app.holdtype.HoldType"

  zap trash: [
    "~/Library/Caches/HoldType",
    "~/Library/Preferences/app.holdtype.HoldType.plist",
    "~/Library/Saved Application State/app.holdtype.HoldType.savedState",
  ]
end
