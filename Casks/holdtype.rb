cask "holdtype" do
  version "1.0.7"
  sha256 "e1cc8dcd42f1c4d8cbf9d9cfbf89ef12c8b3d678b133a97336b6c69d4cf79165"

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
