class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.1/gtunnel-macos-arm64-v0.3.1.tar.gz"
      sha256 "089b56c6125ac5db284b0ff316b0c4dd688802d0a9addb585ca7268d3f417112"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.1/gtunnel-macos-intel-v0.3.1.tar.gz"
      sha256 "f124aae717d38e85f6b29a021c71c88a358076174669767787b8a27e57af1353"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.1/gtunnel-linux-arm64-v0.3.1.tar.gz"
      sha256 "97a0a1326ce58f19b0dfd7df692c1e3340806de87470164608e2197a2abbf8b7"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.1/gtunnel-linux-amd64-v0.3.1.tar.gz"
      sha256 "4c5ddbf30dd59938e63cb3e24dcf71ab0b46f4a5700678e443a3f77d0744c47b"
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
