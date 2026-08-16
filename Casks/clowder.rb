cask "clowder" do
  version "v0.7.0"
  sha256 "c3af69e1985cb6e46d16cdd562ac52610aa95b772e1fdcb7b63c6c374ae4170e"

  url "https://github.com/defiantsoftware/homebrew-clowder/releases/download/v#{version}/Clowder-#{version}-macos.dmg",
      verified: "github.com/defiantsoftware/homebrew-clowder/"
  name "Clowder"
  desc "Cross-platform agent-orchestrator terminal"
  homepage "https://getclowder.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Clowder.app"
  binary "#{appdir}/Clowder.app/Contents/MacOS/clowder"

  zap trash: "~/.config/clowder"
end
