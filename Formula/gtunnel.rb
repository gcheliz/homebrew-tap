class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.14/gtunnel-macos-arm64-v0.3.14.tar.gz"
      sha256 "29756cc09c6c4d7ce391502d55113d04f1de875531cdba641a90cc8432e3d935"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.14/gtunnel-macos-intel-v0.3.14.tar.gz"
      sha256 "5932753b85d18378fee9f5c030df2e312a690f16f5b4218f0af303ddf1ee38b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.14/gtunnel-linux-arm64-v0.3.14.tar.gz"
      sha256 "8751025dcf51d4673dfdcdf7a20d24a70124cc2602946bda624b64bb88b3b22e"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.14/gtunnel-linux-amd64-v0.3.14.tar.gz"
      sha256 "c584872df9fdfbd1e430e0ec8b5387a97eacb0c5f68741cd87901fe96a4b5488"
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
