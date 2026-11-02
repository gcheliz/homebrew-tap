class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.33/gtunnel-macos-arm64-v0.3.33.tar.gz"
      sha256 "ec42157d23e3dccd634db4c5742b62e11c75ee6c2643c36954576e649d6998c8"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.33/gtunnel-macos-intel-v0.3.33.tar.gz"
      sha256 "a7187572e4c7cbc25e1b485ef78351ce1367a00895be1bcb3678f73ff1025795"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.33/gtunnel-linux-arm64-v0.3.33.tar.gz"
      sha256 "635208739e4bd52fa0ae3e91b4498c22e60dd4bcc1920e59d70431412518b8f2"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.33/gtunnel-linux-amd64-v0.3.33.tar.gz"
      sha256 "eb96de81f781a420d0a9c2039d6afdba61990501e831095c9bc26da347e25706"
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
