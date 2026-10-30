class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.60/gtunnel-macos-arm64-v0.2.60.tar.gz"
      sha256 "36c80f5d5dcdeb61698e7795bd155c33cc1ba50025d13f024d886017a25b736d"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.60/gtunnel-macos-intel-v0.2.60.tar.gz"
      sha256 "c6bfdf050f5d7c0421018f2458fd44136a460f2e23c6978828e301d894b72872"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.60/gtunnel-linux-arm64-v0.2.60.tar.gz"
      sha256 "1980d8e90ceb780ef4942ed95028e345c37ead2c69146089311dab786bad6471"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.60/gtunnel-linux-amd64-v0.2.60.tar.gz"
      sha256 "741153b0055bbb63496f3aa58927a1017356f74775b90f555d52538ac48d75af"
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
