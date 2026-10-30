class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.51/gtunnel-macos-arm64-v0.2.51.tar.gz"
      sha256 "095c376b9c44c0f91f2422e73ff89e508732a519c280c9817766f5088ee9d596"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.51/gtunnel-macos-intel-v0.2.51.tar.gz"
      sha256 "0f03fdeb2d6f2ed613d0d82299bd1b487d1b2658a8a55c66f20d09a16b6f094a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.51/gtunnel-linux-arm64-v0.2.51.tar.gz"
      sha256 "d1b4d1b046834c31d45dc380145086f247aaa158424b870c597b1c215bb3c67d"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.51/gtunnel-linux-amd64-v0.2.51.tar.gz"
      sha256 "d60fd32005aee63fe2e4163300dd0cbc30dfd1bdca84e9c33f9a45e26d9d55c1"
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
