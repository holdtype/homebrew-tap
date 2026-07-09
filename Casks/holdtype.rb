cask "holdtype" do
  version "1.0.1"
  sha256 "e7eee9360b280415e3a870005b33eab4a6410700b721f20b06407bade24a4abe"

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
