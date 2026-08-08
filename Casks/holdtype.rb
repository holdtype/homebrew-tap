cask "holdtype" do
  version "1.0.10"
  sha256 "0243fb33e01a806f0ea619bcbbc526d49b3696cda047d28951b4523c92ba2086"

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
