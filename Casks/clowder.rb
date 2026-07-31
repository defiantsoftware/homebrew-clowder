cask "clowder" do
  version "0.3.0"
  sha256 "12e6718eb628d17c8c86390d9df7aa0ab230addb56507c008d5b09738985ac21"

  url "https://github.com/richardcase/homebrew-clowder/releases/download/v#{version}/Clowder-#{version}-macos.dmg",
      verified: "github.com/richardcase/homebrew-clowder/"
  name "Clowder"
  desc "Cross-platform agent-orchestrator terminal"
  homepage "https://github.com/richardcase/clowder"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Clowder.app"
  binary "#{appdir}/Clowder.app/Contents/MacOS/clowder"

  zap trash: "~/.config/clowder"
end
