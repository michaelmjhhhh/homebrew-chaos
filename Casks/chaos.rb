cask "chaos" do
  arch arm: "arm64"

  version "1.0.0-preview.3"
  sha256 arm: "21f2086f234d5096c736a5d72a35a20b70393d43d5576bdbb306e9af780cca96"

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
