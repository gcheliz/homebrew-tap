class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.22/gtunnel-macos-arm64-v0.3.22.tar.gz"
      sha256 "0d562d9affbc0f0547ecd5fb3f9c4e3ea072590a2bcd9f2ae49f984acdfbeaa9"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.22/gtunnel-macos-intel-v0.3.22.tar.gz"
      sha256 "0d023d1ebfbd9b608b1a4b6ae64d7797187ebfb5a1f0aa9b863820c41661d68d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.22/gtunnel-linux-arm64-v0.3.22.tar.gz"
      sha256 "127b49dfdc02904776429e887124c5d8cf475b2a406cc863fd6a37d2bab8e43b"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.22/gtunnel-linux-amd64-v0.3.22.tar.gz"
      sha256 "ae6612712c6e24bce3692d72d15e70f7fd099af2c4e7598c770c5ac863f3b6c2"
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
