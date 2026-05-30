cask "chaos" do
  arch arm: "arm64"

  version "1.0.0-preview.2"
  sha256 arm: "5a3d9dbc4fd9e593d22f1f6f0502256f0dcdb53002c300506f9c10a4c4268f5d"

  url "https://github.com/michaelmjhhhh/Chaos/releases/download/v#{version}/Chaos-v#{version}-#{arch}.zip"
  name "Chaos"
  desc "AI-powered macOS screenshot organizer"
  homepage "https://github.com/michaelmjhhhh/Chaos"

  depends_on macos: ">= :sequoia"

  app "Chaos.app"

  caveats <<~EOS
    Chaos preview releases are ad-hoc signed and not yet Developer ID notarized.
    If macOS blocks the first launch, approve Chaos in:
      System Settings -> Privacy & Security
  EOS
end
