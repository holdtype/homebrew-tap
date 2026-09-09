cask "holdtype" do
  version "1.0.12"
  sha256 "2cc14131c9de196ecae5688e887751938dc59690575ca5144b262fb136ae0d86"

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
