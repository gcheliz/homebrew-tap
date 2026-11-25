class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.41/gtunnel-macos-arm64-v0.3.41.tar.gz"
      sha256 "710f53cec427ead32e6e17b99606836d3475973281478c7e6054c5ea3004026d"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.41/gtunnel-macos-intel-v0.3.41.tar.gz"
      sha256 "23e98a28e72dd25799f001a45fa8494720f3888af45847cc281d697090cac464"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.41/gtunnel-linux-arm64-v0.3.41.tar.gz"
      sha256 "91cd0d8e2bb16ae72f1ecc495bf0480dbe10de1f435c8319610589307f1b8e07"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.41/gtunnel-linux-amd64-v0.3.41.tar.gz"
      sha256 "7cd2de0289556b5d87c779a7799234a4ef19115ae600a98cb50959eed77441a8"
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
