class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.61/gtunnel-macos-arm64-v0.2.61.tar.gz"
      sha256 "78307e8ac1c8773a0279683c826bef890c60239bc14338be814681c766eeeb6f"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.61/gtunnel-macos-intel-v0.2.61.tar.gz"
      sha256 "334faef74a79103f3004e7a3bbbf86e0bb147a7ee92dffd4b9efc36fa9cd2506"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.61/gtunnel-linux-arm64-v0.2.61.tar.gz"
      sha256 "20d4d78af2405874cb16aa7b5ee48f552c098992dfc754dcfe53c43c2cc4bf41"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.61/gtunnel-linux-amd64-v0.2.61.tar.gz"
      sha256 "8f6fb701b2e0b741e061f3b1ed73fbb9aa13bb007380d3bf01be3ad7fe27fda1"
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
