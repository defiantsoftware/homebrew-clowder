cask "clowder" do
  version "0.4.0"
  sha256 "4a2188ec0021e43ad18fda6f2132378f49b811829fa51c694d3fb36f44fade61"

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
