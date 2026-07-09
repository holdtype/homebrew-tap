cask "holdtype" do
  version "1.0.1"
  sha256 "2f56c27608158165b9da143bbd6f1c503a2a7d8105871e1758eafd9bc6be5891"

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
