cask "holdtype" do
  version "1.0.13"
  sha256 "f87ba367a60f81a79e46e8cef88433e478fefbb6b0ff7e7f3319640242c83972"

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
