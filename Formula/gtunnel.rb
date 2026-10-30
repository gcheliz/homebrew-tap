class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.44/gtunnel-macos-arm64-v0.2.44.tar.gz"
      sha256 "274c90b89eddbcaf834a2f31d4ec375162a476690ba04c2f35034028a836bc2e"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.44/gtunnel-macos-intel-v0.2.44.tar.gz"
      sha256 "c49a007e25a97ddf95f42f5e973d97fde67447dc797c38b28f75d0891571a73d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.44/gtunnel-linux-arm64-v0.2.44.tar.gz"
      sha256 "dece53492b05bae0fc674690f0a1acfc25c67ffa6bdf7d82275fce428e3683c8"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.44/gtunnel-linux-amd64-v0.2.44.tar.gz"
      sha256 "6188fa02c30f0d43034d11e45994a0ef4fd01364a177caa1fb4a17c3448bc54b"
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
