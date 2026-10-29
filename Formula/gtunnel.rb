class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.38/gtunnel-macos-arm64-v0.2.38.tar.gz"
      sha256 "5b7c1d09d7cd934afa66d696a3fb6dc34ba3e15ab79e1583bbb1728e2d614bd1"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.38/gtunnel-macos-intel-v0.2.38.tar.gz"
      sha256 "49acabab69a78454cb9df268999c66a657a13cc2152fe61ecc240fb645dbb681"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.38/gtunnel-linux-arm64-v0.2.38.tar.gz"
      sha256 "e9c5a7c88468bcfe7221312f5fa66afaf4eba5b401de6f6ff0bce5ffea54302f"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.38/gtunnel-linux-amd64-v0.2.38.tar.gz"
      sha256 "4735bd0f1739b1c5fc888e0b624a5514085c258cb2f9b4f6eec764e22b5dd941"
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
