class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.38/gtunnel-macos-arm64-v0.3.38.tar.gz"
      sha256 "2d7a18ed1a2f8caad29a9ff8413470df7cae4e540e5c3e3c09df2d3cee96324d"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.38/gtunnel-macos-intel-v0.3.38.tar.gz"
      sha256 "b68cf2a8c0b59580157d0a2e8effbf123964dd03e0b230cff8617e8e3c6391ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.38/gtunnel-linux-arm64-v0.3.38.tar.gz"
      sha256 "62a32b232e856cf711afa1a9ae8b9d9e87d30c8f73751af7b9d00ae0ab60afc2"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.38/gtunnel-linux-amd64-v0.3.38.tar.gz"
      sha256 "d4b68c28ba3b4b0ef7146500f989a477b3a8c0408e85cb2dec6da9f58fb0e996"
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
