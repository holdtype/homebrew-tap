cask "holdtype" do
  version "1.0.11"
  sha256 "cbc944a5a4146c6dc2bd5af67c119dd8b79d3ccc9f477f9d9c7ded82daffd643"

  url "https://github.com/holdtype/holdtype-swift/releases/download/v#{version}/HoldType.dmg"
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
