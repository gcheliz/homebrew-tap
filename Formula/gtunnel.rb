class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.15/gtunnel-macos-arm64-v0.3.15.tar.gz"
      sha256 "690993127ee008a728c1cb65c4ed989716266bd00d369dec9fb2f173ff8b790c"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.15/gtunnel-macos-intel-v0.3.15.tar.gz"
      sha256 "7f986cc92f39b90170c31df60f7d5b337cdad62b76dd746af4062f789017da25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.15/gtunnel-linux-arm64-v0.3.15.tar.gz"
      sha256 "80661ea43f7da02e7636b184af4a3ed6d9071084a4b60015e0625ae5c5b4b143"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.15/gtunnel-linux-amd64-v0.3.15.tar.gz"
      sha256 "2e2e5255f0c6ddfe8d0276a69ed8b2d884c6b053de209ade24b27dd31bfbd016"
    end
  end

  def install
    bin.install "gtunnel"
    generate_completions_from_executable(bin/"gtunnel", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtunnel --version")
  end
end
