class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.16/gtunnel-macos-arm64-v0.3.16.tar.gz"
      sha256 "7ae19c33c4af626720b6c48d13aa3a3ff71b38b0d8bfe63a0f712e82c4f0bb9b"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.16/gtunnel-macos-intel-v0.3.16.tar.gz"
      sha256 "1ae235bc0a9a99afb796c79ca4650af431ad12d60e210ccbef33c744198fc5cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.16/gtunnel-linux-arm64-v0.3.16.tar.gz"
      sha256 "4c66a8db749f13cec7ff9c9d59f15e3a909983eca218f83809870bb3cb7c04c9"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.16/gtunnel-linux-amd64-v0.3.16.tar.gz"
      sha256 "777dbac23f0daff6b15f417b344279e93467fcb470da9cb0689bfe5f6a6183b9"
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
