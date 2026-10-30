class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.13/gtunnel-macos-arm64-v0.3.13.tar.gz"
      sha256 "a7ea884e5370a080e590f98ea785a2c34bce39f9168549440db844562cf18677"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.13/gtunnel-macos-intel-v0.3.13.tar.gz"
      sha256 "ea24311ff3ddd99e3a7e09769e5081957ce66e9f378062328825819f37a227c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.13/gtunnel-linux-arm64-v0.3.13.tar.gz"
      sha256 "c6db50fe7603f4f0046e76d337b2e60da6898b1dd752ac2e3330c8203c4695be"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.13/gtunnel-linux-amd64-v0.3.13.tar.gz"
      sha256 "1fe9e173105bfd2681eedb5171d53b326cc3a939ec604fa85122da6c75d3e457"
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
