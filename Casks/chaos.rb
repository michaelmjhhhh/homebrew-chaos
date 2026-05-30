cask "chaos" do
  arch arm: "arm64"

  version "1.0.0-preview.1"
  sha256 arm: "5df8a218cf3ce1119346c8e065cecccfac258ba6c6ea3cb952c0b4eddbd4045a"

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
