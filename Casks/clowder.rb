cask "clowder" do
  version "0.6.0"
  sha256 "1f188d4782e54797dea8e9a947a7b47ff21f241681042bf4aa98003f2415e9b5"

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
