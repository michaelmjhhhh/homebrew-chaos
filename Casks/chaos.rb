cask "chaos" do
  version "1.1.0"
  sha256 "55306a835be89ae9f2af0a05e45e168d5720fffcbb3a51f31908120e21765357"

  url "https://github.com/michaelmjhhhh/Chaos/releases/download/v#{version}/Chaos.dmg"
  name "Chaos"
  desc "AI-powered macOS screenshot organizer"
  homepage "https://github.com/michaelmjhhhh/Chaos"

  depends_on arch:  :arm64
  depends_on macos: ">= :sequoia"

  app "Chaos.app"

  caveats <<~EOS
    Chaos is ad-hoc signed, not Developer ID notarized.
    If macOS blocks the first launch, approve Chaos in:
      System Settings -> Privacy & Security
  EOS
end
