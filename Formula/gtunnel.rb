class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.50/gtunnel-macos-arm64-v0.3.50.tar.gz"
      sha256 "c48987dde8252273120d4ae606bfaf37e1552fd9bfb982d9179f075292e29154"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.50/gtunnel-macos-intel-v0.3.50.tar.gz"
      sha256 "94364111049b8a41db2345fbd6a46e0f6f46c6bb2bc823eb4fac5ebd20e20af2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.50/gtunnel-linux-arm64-v0.3.50.tar.gz"
      sha256 "a3f999f86b9b288f9de9c5edfcf3e2618b2e852660e39c53089eb474e08bdc1b"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.50/gtunnel-linux-amd64-v0.3.50.tar.gz"
      sha256 "ea275cdb597c59eb5043c9e15056786b35513a96effa838637a21af3a5865fef"
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
