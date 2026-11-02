class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.28/gtunnel-macos-arm64-v0.3.28.tar.gz"
      sha256 "5345fbd69f10905b5adeb19848b25abd62f675cc187f77341fce644b449ff862"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.28/gtunnel-macos-intel-v0.3.28.tar.gz"
      sha256 "12d4dcb09007795c682f4486e6ff866e27ec9bfa2c2bc737523567af5b9cc214"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.28/gtunnel-linux-arm64-v0.3.28.tar.gz"
      sha256 "9d44f3eeacf7d7a5685d2ea162eb5d70785eb049877fe9376825dcbf5aa11a7e"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.28/gtunnel-linux-amd64-v0.3.28.tar.gz"
      sha256 "6e6856478fe20527ab6556a4103c5a953570fcc8788be0e6dbae9b82e65392a2"
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
