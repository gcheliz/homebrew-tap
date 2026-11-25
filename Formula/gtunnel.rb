class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.49/gtunnel-macos-arm64-v0.3.49.tar.gz"
      sha256 "f594a46c256768669e56a99207a278f27db147b2950739ea86496e7bf31d72e2"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.49/gtunnel-macos-intel-v0.3.49.tar.gz"
      sha256 "a5f37bf1f27baef1c9639a5fe51214c4e0787b104447e7000da31183877235ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.49/gtunnel-linux-arm64-v0.3.49.tar.gz"
      sha256 "f52641f712c4567e05e6cb7a013f2dde18b32bec74c27fea16d7af297e575f5b"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.49/gtunnel-linux-amd64-v0.3.49.tar.gz"
      sha256 "e1a8a8729ee5952afdd6e54fa3c5d93e2b6652b424fa485597e2121eb1a82140"
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
