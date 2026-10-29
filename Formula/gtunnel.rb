class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.37/gtunnel-macos-arm64-v0.2.37.tar.gz"
      sha256 "af2ae8c09f61e1ada84abec86122f5f6d358f2fa7f110475c34df70382306bb9"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.37/gtunnel-macos-intel-v0.2.37.tar.gz"
      sha256 "7708ab53f407e29ad4613909b075c7cde5bfd1473d3473881dcc78e6bffcd114"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.37/gtunnel-linux-arm64-v0.2.37.tar.gz"
      sha256 "608d9c5bfc538c564cd0f33081b464d65a94077edf9e461ad0b5b8507816b31b"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.37/gtunnel-linux-amd64-v0.2.37.tar.gz"
      sha256 "31ec8961381fc6ab9439fb529cec564085c408c07279223e574adcf5ead70e85"
    end
  end

  def install
    bin.install "gtunnel"
    generate_completions_from_executable(bin/"gtunnel", "completions")
  end

  def caveats
    <<~EOS
      gtunnel drives gcloud and needs a logged-in Google Cloud CLI:
        gcloud auth login
      Prerequisites and IAM: https://github.com/gcheliz/gtunnel/blob/main/docs/usage.md#getting-set-up
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtunnel --version")
  end
end
