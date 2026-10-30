class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.65/gtunnel-macos-arm64-v0.2.65.tar.gz"
      sha256 "e227d18a945f6017133f90fed62c0b025141e5b6adda9395ef2e95354a55b557"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.65/gtunnel-macos-intel-v0.2.65.tar.gz"
      sha256 "a237a7cf54092fe32d9cb0099f5a56657a6186359243e6611eb1389941d8acd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.65/gtunnel-linux-arm64-v0.2.65.tar.gz"
      sha256 "14da2930c0189a1f686f57e355e34229bb5a9937f954b309f0dbf1dff5d44ec4"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.65/gtunnel-linux-amd64-v0.2.65.tar.gz"
      sha256 "30f6ab9221fb83942582dbef91831177f6b4bfe2ab5d07b629ab7cb7a800a597"
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
