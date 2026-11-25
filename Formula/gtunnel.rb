class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.51/gtunnel-macos-arm64-v0.3.51.tar.gz"
      sha256 "2712d8fbb652cd9e9ccb1810c14c866ed713ed5ad92826a104a337c6762619c0"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.51/gtunnel-macos-intel-v0.3.51.tar.gz"
      sha256 "6ebd2c0fe584ade35dd91ab7dfea39972e447477b393ca8c2d3b6536920e23f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.51/gtunnel-linux-arm64-v0.3.51.tar.gz"
      sha256 "67a5af67ebe75e517f31de61bf734cf7fa01de41005d3ad5b49a72135263b175"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.51/gtunnel-linux-amd64-v0.3.51.tar.gz"
      sha256 "c7542dee8c7d5c530b33e3eacacfb6c584320a65bf3c0fb14ff94e8e63224d67"
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
