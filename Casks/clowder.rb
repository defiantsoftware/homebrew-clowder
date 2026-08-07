cask "clowder" do
  version "0.5.0"
  sha256 "30ba41c3e831504b429876061f5b5c65a1b7fd96092e8e1fd78fcba42378e1c8"

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
