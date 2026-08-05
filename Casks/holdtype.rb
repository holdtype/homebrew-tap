cask "holdtype" do
  version "1.0.8"
  sha256 "a6538ef3eab3ccaad0bd2bc526723eca1a205382fb46db117fda0430300019e9"

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
